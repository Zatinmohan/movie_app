part of '../home_page.dart';

class SearchButtonWidget extends StatelessWidget {
  const SearchButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.sizeOf(context).width;
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      height: size * 0.14,
      decoration: BoxDecoration(
        color: ColorConstants.kSecondaryAccentColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.search,
            color: ColorConstants.kPrimarySubtitleTextColor,
          ),
          const SizedBox(width: 12.0),
          Text(
            "Search Movies by name..",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: size * 0.042,
                  color: ColorConstants.kPrimarySubtitleTextColor,
                ),
          ),
        ],
      ),
    );
  }
}
