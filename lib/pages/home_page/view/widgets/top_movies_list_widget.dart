part of '../home_page.dart';

class TopMoviesWidget extends StatelessWidget {
  const TopMoviesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopMoviesBloc, TopMoviesStates>(
      builder: (context, state) {
        return state.maybeWhen(
          initial: () => const SliverToBoxAdapter(
            child: SizedBox.shrink(),
          ),
          loaded: (data) {
            return SliverList.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final TopMoviesResultEntity movie = data[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                  ),
                  child: AspectRatio(
                    aspectRatio: 16 / 13.5,
                    child: TopPlayingCardWidget(data: movie),
                  ),
                );
              },
            );
          },
          orElse: () => const SliverToBoxAdapter(
            child: SizedBox.shrink(),
          ),
        );
      },
    );
  }
}
