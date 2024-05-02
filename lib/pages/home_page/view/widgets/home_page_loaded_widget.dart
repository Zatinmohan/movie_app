part of '../home_page.dart';

class HomeLoadedWidget extends StatefulWidget {
  const HomeLoadedWidget({super.key});

  @override
  State<HomeLoadedWidget> createState() => _HomeLoadedWidgetState();
}

class _HomeLoadedWidgetState extends State<HomeLoadedWidget> {
  late final ScrollController _controller;
  late final RefreshController _refreshController;

  int pageKey = 1;
  @override
  void initState() {
    _controller = ScrollController();
    _refreshController = RefreshController(initialRefresh: false);
    _controller.addListener(() {
      final TopMoviesStates currentState = context.read<TopMoviesBloc>().state;

      final bool shouldLoadMoreData = currentState.maybeMap(
        loading: (_) => false,
        loadingMoreMovies: (_) => false,
        error: (_) => false,
        orElse: () => true,
      );
      if (_controller.offset >= _controller.position.maxScrollExtent &&
          !_controller.position.outOfRange &&
          shouldLoadMoreData) {
        pageKey += 1;
        BlocProvider.of<TopMoviesBloc>(context).add(
          TopMoviesEvents.fetchMoreMovies(pageKey: pageKey),
        );
      }
    });

    super.initState();
  }

  void _onRefresh() {
    context.read<HomeBloc>().add(const HomeEvents.fetchHomePageData());
  }

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.sizeOf(context).width;
    return SmartRefresher(
      controller: _refreshController,
      onRefresh: _onRefresh,
      child: CustomScrollView(
        controller: _controller,
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 8.0)),
          const SliverToBoxAdapter(child: UserLocationWidget()),
          const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
          SliverToBoxAdapter(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                context.pushNamed(RoutesName.SEARCH);
              },
              child: const SearchButtonWidget(),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 16.0),
          ),
          BlocBuilder<NowPlayingBloc, NowPlayingMoviesStates>(
            buildWhen: (previous, current) {
              return current.maybeMap(
                loadingMoreMovies: (_) => false,
                orElse: () => true,
              );
            },
            builder: (context, state) {
              return SliverToBoxAdapter(
                child: state.whenOrNull(
                    initial: () =>
                        const SliverToBoxAdapter(child: SizedBox.shrink()),
                    loading: () => SizedBox(
                          width: size,
                          height: size * 0.45,
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                    loaded: (data) => Column(
                          children: [
                            WeMovieWidget(
                              title: "We Movies",
                              subTitle:
                                  "${data.length} Movies are loaded in now playing",
                            ),
                            const SizedBox(height: 16.0),
                            AspectRatio(
                              aspectRatio: 0.9,
                              child: NowPlayingWidget(data: data),
                            ),
                          ],
                        ),
                    error: (errorMessage) => HomePageErrorWidget(
                          errorMessage: "Error: $errorMessage",
                          onTap: () {
                            context.read<NowPlayingBloc>().add(
                                  const NowPlayingMovieEvents
                                      .fetchNowPlayingMovies(pageKey: 1),
                                );
                          },
                        )),
              );
            },
          ),
          const SliverToBoxAdapter(
            child: SectionTitleWidget(title: "Top Rated"),
          ),
          BlocBuilder<TopMoviesBloc, TopMoviesStates>(
            buildWhen: (previous, current) {
              return current.maybeWhen(
                loadingMoreMovies: () => false,
                orElse: () => true,
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                initial: () => const SliverToBoxAdapter(
                  child: SizedBox.shrink(),
                ),
                loading: () => SliverToBoxAdapter(
                  child: SizedBox(
                    width: size,
                    height: size * 0.45,
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ),
                loaded: (data) {
                  return TopMoviesWidget(data: data);
                },
                error: (error) => SliverToBoxAdapter(
                  child: HomePageErrorWidget(
                    errorMessage: error,
                    onTap: () {
                      context.read<TopMoviesBloc>().add(
                            const TopMoviesEvents.fetchTopMovies(
                              pageKey: 1,
                            ),
                          );
                    },
                  ),
                ),
                orElse: () => const SliverToBoxAdapter(
                  child: SizedBox.shrink(),
                ),
              );
            },
          ),
          SliverToBoxAdapter(
            child: Center(
              child: context.watch<TopMoviesBloc>().state ==
                      const TopMoviesStates.loadingMoreMovies()
                  ? const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: CircularProgressIndicator(),
                    )
                  : const SizedBox.shrink(),
            ),
          ),
        ],
      ),
    );
  }
}
