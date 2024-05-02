part of '../home_page.dart';

class HomeLoadedWidget extends StatefulWidget {
  const HomeLoadedWidget({super.key});

  @override
  State<HomeLoadedWidget> createState() => _HomeLoadedWidgetState();
}

class _HomeLoadedWidgetState extends State<HomeLoadedWidget> {
  late final ScrollController _controller;
  int pageKey = 1;
  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(() {
      if (_controller.offset >= _controller.position.maxScrollExtent &&
          !_controller.position.outOfRange) {
        pageKey += 1;
        BlocProvider.of<TopMoviesBloc>(context).add(
          TopMoviesEvents.fetchMoreMovies(pageKey: pageKey),
        );
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
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
              loading: (value) => false,
              error: (value) => false,
              orElse: () => true,
            );
          },
          builder: (context, state) {
            return SliverToBoxAdapter(
              child: state.whenOrNull(
                initial: () =>
                    const SliverToBoxAdapter(child: SizedBox.shrink()),
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
              ),
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
              loaded: (data) {
                return TopMoviesWidget(data: data);
              },
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
    );
  }
}
