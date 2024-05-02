part of '../home_page.dart';

class HomePageErrorWidget extends StatelessWidget {
  final String errorMessage;
  final String buttonText;
  final VoidCallback? onTap;
  const HomePageErrorWidget({
    super.key,
    required this.errorMessage,
    this.buttonText = "Tap Here to load again",
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Text(
          errorMessage,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: size * 0.07,
              ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8.0),
        ElevatedButton(
          onPressed: onTap,
          child: const Text("Tap here to load again"),
        ),
        const SizedBox(height: 10.0),
      ],
    );
  }
}
