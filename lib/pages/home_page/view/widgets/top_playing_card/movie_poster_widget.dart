part of '../../home_page.dart';

class MoviePosterWidget extends StatelessWidget {
  final String imageUrl;
  final String viewCount;
  const MoviePosterWidget({
    super.key,
    required this.imageUrl,
    required this.viewCount,
  });

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.sizeOf(context).width;
    return Stack(
      children: [
        Positioned.fill(
          child: Image.network(
            "${ApiConstants.kImageBaseUrl}$imageUrl",
            fit: BoxFit.fill,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          alignment: Alignment.bottomLeft,
          child: Container(
            alignment: Alignment.center,
            width: size * 0.12,
            height: size * 0.12,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blueGrey[600],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.remove_red_eye_outlined,
                  size: size * 0.05,
                  color: ColorConstants.kSecondaryAccentColor,
                ),
                Text(
                  viewCount,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontSize: size * 0.03,
                        color: ColorConstants.kSecondaryAccentColor,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
