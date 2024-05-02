part of '../home_page.dart';

class NowPlayingWidget extends StatefulWidget {
  final List<NowPlayingResultEntity> data;
  const NowPlayingWidget({super.key, required this.data});

  @override
  State<NowPlayingWidget> createState() => _NowPlayingWidgetState();
}

class _NowPlayingWidgetState extends State<NowPlayingWidget> {
  late final PageController _controller;
  int pageKey = 1;
  ValueNotifier<int> currentPage = ValueNotifier(0);

  @override
  void initState() {
    _controller = PageController(viewportFraction: 0.8);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context).width;

    return Column(
      children: [
        const SectionTitleWidget(title: "Now Playing"),
        const SizedBox(height: 12.0),
        Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: PageView.builder(
                  padEnds: false,
                  controller: _controller,
                  itemCount: widget.data.length,
                  onPageChanged: (index) {
                    currentPage.value = index;
                    if (index >= widget.data.length - 1) {
                      pageKey += 1;
                      context.read<NowPlayingBloc>().add(
                            NowPlayingMovieEvents.fetchMoreNowPlayingMovies(
                              pageKey: pageKey,
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
                                            color:
                                                Colors.black.withOpacity(0.65),
                                            padding: const EdgeInsets.only(
                                              left: 12.0,
                                              right: 16.0,
                                              top: 4.0,
                                              bottom: 12.0,
                                            ),
                                            child: MovieDetailWidget(
                                              movieName:
                                                  movie.originalTitle ?? "",
                                              movieDiscription:
                                                  movie.overview ?? "",
                                              language:
                                                  Utilities.getLanguageFromCode(
                                                langugageCode:
                                                    movie.originalLanguage ??
                                                        "",
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
              context.watch<NowPlayingBloc>().state ==
                      const NowPlayingMoviesStates.loadingMoreMovies()
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
        const SizedBox(height: 8.0),
        SizedBox(
          width: size * 0.18,
          height: size * 0.1,
          child: ValueListenableBuilder(
            valueListenable: currentPage,
            builder: (context, value, child) {
              return CustomDotIndicators(
                currentValue: value + 1,
                totalListLength: widget.data.length,
              );
            },
          ),
        ),
      ],
    );
  }
}
