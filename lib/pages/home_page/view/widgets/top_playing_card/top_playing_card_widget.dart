part of '../../home_page.dart';

class TopPlayingCardWidget extends StatelessWidget {
  const TopPlayingCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.sizeOf(context).width;
    return Card(
      surfaceTintColor: ColorConstants.kSecondaryAccentColor,
      clipBehavior: Clip.antiAlias,
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 4.0,
          left: 4.0,
          right: 4.0,
          bottom: 8.0,
        ),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Stack(
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
                              "7K",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
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
                ),
              ),
            ),
            const SizedBox(height: 12.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "The Dark Knight Rises" * 2,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: size * 0.048,
                            color: ColorConstants.kSecondarySubtitleTextColor,
                          ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4.0),
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: ColorConstants.kPrimarySubtitleTextColor,
                            size: size * 0.042,
                          ),
                          const SizedBox(width: 8.0),
                          Expanded(
                            child: Text(
                              "Follwing event where monk fight for his rights and kill gods of godzilla nd the bantne" *
                                  2,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: ColorConstants
                                        .kPrimarySubtitleTextColor,
                                    fontSize: size * 0.032,
                                  ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Row(
                          children: [
                            Text(
                              "6.7K Votes",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: ColorConstants
                                        .kPrimarySubtitleTextColor,
                                    fontSize: size * 0.048,
                                  ),
                            ),
                            VerticalDivider(
                              thickness: 1.2,
                              indent: size * 0.015,
                              endIndent: size * 0.015,
                            ),
                            Text(
                              "6.67 ⭐",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: ColorConstants
                                        .kPrimarySubtitleTextColor,
                                    fontSize: size * 0.048,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
