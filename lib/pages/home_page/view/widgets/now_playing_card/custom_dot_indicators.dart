part of '../../home_page.dart';

class CustomDotIndicators extends StatelessWidget {
  final int currentValue;
  final int totalListLength;
  const CustomDotIndicators({
    super.key,
    required this.currentValue,
    required this.totalListLength,
  });

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.sizeOf(context).width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size * 0.1,
          height: size * 0.05,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20.0),
          ),
          alignment: Alignment.center,
          child: Text(
            "${currentValue + 1}/$totalListLength",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: size * 0.025,
                  color: ColorConstants.kSecondaryTextColor,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
        const Spacer(),
        Container(
          width: size * 0.02,
          height: size * 0.02,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        const Spacer(),
        Container(
          width: size * 0.02,
          height: size * 0.02,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ],
    );
  }
}
