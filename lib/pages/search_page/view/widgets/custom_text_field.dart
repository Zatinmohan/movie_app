import 'package:flutter/material.dart';
import 'package:movie_app/utils/themes/color_constants.dart';

class CustomSearchFieldWidget extends StatelessWidget {
  final TextEditingController searchController;
  final Function(String?) onSubmit;
  const CustomSearchFieldWidget({
    super.key,
    required this.searchController,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.sizeOf(context).width;
    return TextField(
      autofocus: true,
      controller: searchController,
      style: Theme.of(context).textTheme.bodySmall?.copyWith(
            fontSize: size * 0.045,
            color: ColorConstants.kPrimaryTextColor,
            fontWeight: FontWeight.w400,
          ),
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none,
        ),
        prefixIcon: const Icon(Icons.search),
        hintText: "Enter a movie name",
        fillColor: ColorConstants.kSecondaryAccentColor,
        contentPadding: const EdgeInsets.all(10.0),
        filled: true,
        hintStyle: TextStyle(
          fontSize: size * 0.045,
          color: ColorConstants.kPrimarySubtitleTextColor,
          fontWeight: FontWeight.w400,
        ),
        errorStyle: TextStyle(
          fontSize: size * 0.045,
          color: ColorConstants.kPrimarySubtitleTextColor,
          fontWeight: FontWeight.w400,
        ),
      ),
      onSubmitted: onSubmit,
    );
  }
}
