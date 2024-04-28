part of '../home_page.dart';

class WeMovieWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  const WeMovieWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.sizeOf(context).width;
    return Stack(
      children: [
        ClipPath(
          clipper: CustomWeMovieClipper(),
          child: Container(
            width: size,
            height: size * 0.45,
            padding: EdgeInsets.only(top: size * 0.18, left: 16.0),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.bottomLeft,
                colors: [
                  ColorConstants.kSecondaryBackgroundColor,
                  ColorConstants.kPrimaryAccentColor.withOpacity(0.1),
                ],
                stops: const [0, 0],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: size * 0.055,
                      ),
                ),
                const SizedBox(height: 16.0),
                Text(
                  subTitle,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: size * 0.035,
                      ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Container(
            padding: const EdgeInsets.only(top: 12, left: 6.0, right: 6.0),
            width: size * 0.45,
            height: size * 0.1,
            alignment: Alignment.centerLeft,
            child: FittedBox(
              child: Text(
                Utilities.getDateTimeFormatted(
                  DateTime.now(),
                ),
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: size * 0.1,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
