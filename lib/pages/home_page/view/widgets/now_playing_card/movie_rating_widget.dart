part of '../../home_page.dart';

class MovieRatingWidget extends StatelessWidget {
  final String ratings;
  const MovieRatingWidget({
    super.key,
    required this.ratings,
  });

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.sizeOf(context).width;
    return Container(
      width: size * 0.25,
      height: size * 0.08,
      // color: Colors.blue,
      padding: const EdgeInsets.only(top: 6.0, bottom: 6.0, left: 8.0),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ratings,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: size * 0.05,
                ),
          ),
          const SizedBox(width: 4.0),
          Text(
            "⭐",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: size * 0.04,
                ),
          )
        ],
      ),
    );
  }
}
