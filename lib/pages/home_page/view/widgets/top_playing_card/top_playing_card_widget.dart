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
                child: const MoviePosterWidget(
                  imageUrl: "",
                  viewCount: "7k",
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
                    const Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.0),
                        child: VotingRatingWidget(
                          voteCount: "6.7K",
                          rating: "6.67",
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
