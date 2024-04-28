part of '../../home_page.dart';

class CustomCardStatisticsWidget extends StatelessWidget {
  final String viewCount;
  const CustomCardStatisticsWidget({
    super.key,
    required this.viewCount,
  });

  final Color backgroundColor = Colors.black54;

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.sizeOf(context).width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.remove_red_eye,
                  color: Colors.white,
                  size: size * 0.045,
                ),
                const SizedBox(width: 8.0),
                Text(
                  viewCount,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontSize: size * 0.04,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 6.0),
        DecoratedBox(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(60.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: size * 0.04,
            ),
          ),
        ),
      ],
    );
  }
}
