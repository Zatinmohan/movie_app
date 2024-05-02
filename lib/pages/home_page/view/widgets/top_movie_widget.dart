part of '../home_page.dart';

class TopMoviesWidget extends StatelessWidget {
  final List<TopMoviesResultEntity> data;
  const TopMoviesWidget({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: data.length,
        (context, index) {
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
      ),
    );
  }
}
