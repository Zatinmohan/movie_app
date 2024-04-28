part of '../../home_page.dart';

class MovieDetailWidget extends StatelessWidget {
  const MovieDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Flexible(
          child: Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              width: size * 0.4,
              child: Row(
                children: [
                  Icon(
                    Icons.language,
                    color: ColorConstants.kSecondaryTextColor,
                    size: size * 0.04,
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    "English",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w400,
                          color: ColorConstants.kSecondaryTextColor,
                          fontSize: size * 0.04,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Text(
          "Godzilla X Kong: The New Empirel",
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w400,
                color: ColorConstants.kSecondaryTextColor,
                fontSize: size * 0.04,
              ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 6.0),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Icon(
                Icons.calendar_month,
                color: ColorConstants.kSecondaryTextColor,
                size: size * 0.04,
              ),
            ),
            const SizedBox(width: 8.0),
            Expanded(
              flex: 4,
              child: Text(
                "Following their explosive showdown, Godzilla and Kong must reunitekajsdfkasdkadsj",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w400,
                      color: ColorConstants.kSecondaryTextColor,
                      fontSize: size * 0.03,
                    ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              "716 Votes",
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.kSecondaryTextColor,
                    fontSize: size * 0.06,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
