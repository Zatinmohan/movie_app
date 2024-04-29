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
            'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimages.hdqwalls.com%2Fwallpapers%2Fgodzilla-vs-king-kong-6f.jpg&f=1&nofb=1&ipt=ffa04b025fab87777242b371d2db2d896b0fcb6f757f8aaebb0903fb3e2b83ae&ipo=images',
            fit: BoxFit.cover,
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
