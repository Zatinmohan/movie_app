part of '../home_page.dart';

class CardTitleWidget extends StatelessWidget {
  final String title;
  const CardTitleWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.sizeOf(context).width;
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: ColorConstants.kPrimaryTextColor,
                fontSize: size * 0.055,
                fontWeight: FontWeight.w400,
              ),
        ),
        const SizedBox(width: 8.0),
        SizedBox(
          width: size * 0.5,
          height: 1,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  ColorConstants.kSecondarySubtitleTextColor.withOpacity(0.4),
                  Colors.grey.withOpacity(0.2),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
