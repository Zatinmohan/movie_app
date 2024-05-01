part of '../../home_page.dart';

class NowPlayingWidget extends StatefulWidget {
  final List<NowPlayingResultEntity> data;
  const NowPlayingWidget({super.key, required this.data});

  @override
  State<NowPlayingWidget> createState() => _NowPlayingWidgetState();
}

class _NowPlayingWidgetState extends State<NowPlayingWidget> {
  late final PageController _controller;
  int pageKey = 1;

  @override
  void initState() {
    _controller = PageController(viewportFraction: 0.8);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context).width;
    ValueNotifier<int> currentPage = ValueNotifier(0);
    return Column(
      children: [
        const CardTitleWidget(title: "Now Playing"),
        const SizedBox(height: 12.0),
        Expanded(
          child: PageView.builder(
            padEnds: false,
            controller: _controller,
            itemCount: widget.data.length,
            onPageChanged: (index) {
              currentPage.value = index;
              if (index >= widget.data.length - 3) {
                pageKey += 1;
                context.read<NowPlayingBloc>().add(
                      NowPlayingMovieEvents.fetchNowPlayingMovies(
                        pageKey: pageKey,
                        previousData: widget.data,
                      ),
                    );
              }
            },
            itemBuilder: (context, index) {
              final NowPlayingResultEntity movie = widget.data[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: MovieRatingWidget(
                        ratings: Utilities.chagneDecimalPlace(
                          value: movie.voteAverage ?? 0.0,
                          moveDecimalTo: 2,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: ClipPath(
                        clipper: const CustomNowPlayingClipper(),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                ColorConstants.kSecondaryBackgroundColor,
                                ColorConstants.kPrimaryAccentColor
                                    .withOpacity(0.1),
                              ],
                              stops: const [0, 0],
                            ),
                          ),
                          height: size * 0.5,
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Image.network(
                                  "${ApiConstants.kImageBaseUrl}${movie.posterPath ?? ""}",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                right: 0.0,
                                child: Container(
                                  width: size * 0.4,
                                  height: size * 0.14,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: CustomCardStatisticsWidget(
                                    viewCount: Utilities
                                        .convertNumbersIntoInternationSystem(
                                            value: movie.voteCount ?? 0),
                                  ),
                                ),
                              ),
                              Positioned.fill(
                                top: size * 0.45,
                                child: ClipPath(
                                  clipper: const CustomNowPlayingClipper(
                                    startPoint: 0.25,
                                  ),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 4.0,
                                      sigmaY: 4.0,
                                    ),
                                    child: Container(
                                      color: Colors.black.withOpacity(0.65),
                                      padding: const EdgeInsets.only(
                                        left: 12.0,
                                        right: 16.0,
                                        top: 4.0,
                                        bottom: 12.0,
                                      ),
                                      child: MovieDetailWidget(
                                        movieName: movie.originalTitle ?? "",
                                        movieDiscription: movie.overview ?? "",
                                        language: Utilities.getLanguageFromCode(
                                          langugageCode:
                                              movie.originalLanguage ?? "",
                                        ),
                                        votes: Utilities
                                            .convertNumbersIntoInternationSystem(
                                          value: movie.voteCount ?? 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 8.0),
        SizedBox(
          width: size * 0.15,
          height: size * 0.1,
          child: ValueListenableBuilder(
              valueListenable: currentPage,
              builder: (context, value, child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: size * 0.08,
                      height: size * 0.05,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "${value + 1}/${widget.data.length}",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontSize: size * 0.025,
                              color: ColorConstants.kSecondaryTextColor,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: size * 0.02,
                      height: size * 0.02,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: size * 0.02,
                      height: size * 0.02,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ],
                );
              }),
        ),
      ],
    );
  }
}
