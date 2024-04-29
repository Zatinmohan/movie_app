import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/pages/home_page/view/widgets/custom_movie_clipper.dart';
import 'package:movie_app/pages/home_page/view/widgets/now_playing_card/custom_now_playing_clipper.dart';
import 'package:movie_app/services/geo_location/location_service.dart';
import 'package:movie_app/services/geo_location/models/address_model.dart';
import 'package:movie_app/utils/themes/color_constants.dart';
import 'package:movie_app/utils/utilities.dart';

part 'widgets/user_location_widget.dart';
part 'widgets/search_button_widget.dart';
part 'widgets/we_movie_widget.dart';

part 'widgets/now_playing_card/card_title_widget.dart';
part 'widgets/now_playing_card/now_playing_widget.dart';
part 'widgets/now_playing_card/now_playing_statistics_widget.dart';
part 'widgets/now_playing_card/movie_detail_widget.dart';
part 'widgets/now_playing_card/movie_rating_widget.dart';

part 'widgets/top_playing_card/top_playing_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                ColorConstants.kPrimaryBackgroundColor,
                ColorConstants.kSecondaryBackgroundColor,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.06, 0.5]),
        ),
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
            child: NestedScrollView(
              headerSliverBuilder: (context, isInnerBoxScrolled) {
                return [
                  const SliverToBoxAdapter(child: SizedBox(height: 8.0)),
                  const SliverToBoxAdapter(child: UserLocationWidget()),
                  const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
                  const SliverToBoxAdapter(child: SearchButtonWidget()),
                  const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
                  const SliverToBoxAdapter(
                    child: WeMovieWidget(
                      title: "We Movies",
                      subTitle: "22 Movies are loaded in now playing",
                    ),
                  ),
                  const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
                  const SliverToBoxAdapter(
                    child: AspectRatio(
                      aspectRatio: 0.9,
                      child: NowPlayingWidget(),
                    ),
                  ),
                ];
              },
              body: CustomScrollView(
                slivers: [
                  const SliverToBoxAdapter(child: SizedBox(height: 8.0)),
                  const SliverToBoxAdapter(
                    child: CardTitleWidget(title: "Top Rated"),
                  ),
                  const SliverToBoxAdapter(child: SizedBox(height: 8.0)),
                  SliverList.builder(itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: AspectRatio(
                        aspectRatio: 16 / 13.5,
                        child: TopPlayingCardWidget(),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
