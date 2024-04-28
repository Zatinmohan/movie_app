part of '../../home_page.dart';

class NowPlayingWidget extends StatefulWidget {
  const NowPlayingWidget({super.key});

  @override
  State<NowPlayingWidget> createState() => _NowPlayingWidgetState();
}

class _NowPlayingWidgetState extends State<NowPlayingWidget> {
  late final PageController _controller;

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
        const CardTitleWidget(title: "Now Playing"),
        const SizedBox(height: 12.0),
        Expanded(
          child: PageView.builder(
            padEnds: false,
            controller: _controller,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: Stack(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: MovieRatingWidget(ratings: "6.68"),
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
                                  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimages.hdqwalls.com%2Fwallpapers%2Fgodzilla-vs-king-kong-6f.jpg&f=1&nofb=1&ipt=ffa04b025fab87777242b371d2db2d896b0fcb6f757f8aaebb0903fb3e2b83ae&ipo=images",
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
                                  child: const CustomCardStatisticsWidget(
                                    viewCount: "841",
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
                                      child: const MovieDetailWidget(),
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
        Container(
          width: size * 0.5,
          height: size * 0.1,
          color: Colors.pink,
        ),
      ],
    );
  }
}
