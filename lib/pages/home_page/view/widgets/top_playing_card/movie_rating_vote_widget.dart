part of '../../home_page.dart';

class VotingRatingWidget extends StatelessWidget {
  final String voteCount;
  final String rating;
  const VotingRatingWidget({
    super.key,
    required this.voteCount,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.sizeOf(context).width;
    return Row(
      children: [
        Text(
          "$voteCount Votes",
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w500,
                color: ColorConstants.kPrimarySubtitleTextColor,
                fontSize: size * 0.048,
              ),
        ),
        VerticalDivider(
          thickness: 1.2,
          indent: size * 0.015,
          endIndent: size * 0.015,
        ),
        Text(
          "$rating ⭐",
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w500,
                color: ColorConstants.kPrimarySubtitleTextColor,
                fontSize: size * 0.048,
              ),
        ),
      ],
    );
  }
}
