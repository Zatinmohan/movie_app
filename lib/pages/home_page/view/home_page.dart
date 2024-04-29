import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/pages/home_page/domain/entities/now_playing_entities/now_playing_result_entity.dart';
import 'package:movie_app/pages/home_page/domain/entities/top_movies_entities/top_movies_result_entity.dart';
import 'package:movie_app/pages/home_page/states/home_bloc/home_bloc.dart';
import 'package:movie_app/pages/home_page/view/widgets/custom_movie_clipper.dart';
import 'package:movie_app/pages/home_page/view/widgets/now_playing_card/custom_now_playing_clipper.dart';
import 'package:movie_app/pages/home_page_dependency_injection.dart';
import 'package:movie_app/services/api/constants/api_constants.dart';
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
part 'widgets/top_playing_card/movie_poster_widget.dart';
part 'widgets/top_playing_card/movie_rating_vote_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GetIt sl = GetIt.instance;
  @override
  void initState() {
    HomePageDependencyInjection();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (context) =>
              HomeBloc(sl(), sl())..add(const HomeEvents.fetchHomePageData()),
        ),
      ],
      child: BlocBuilder<HomeBloc, HomeStates>(
        builder: (context, state) {
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 16.0),
                  child: state.whenOrNull(
                    initial: () =>
                        const Center(child: CircularProgressIndicator()),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    homeLoaded: (nowPlaying, topMovies) => NestedScrollView(
                      headerSliverBuilder: (context, isInnerBoxScrolled) {
                        return [
                          const SliverToBoxAdapter(
                              child: SizedBox(height: 8.0)),
                          const SliverToBoxAdapter(child: UserLocationWidget()),
                          const SliverToBoxAdapter(
                              child: SizedBox(height: 16.0)),
                          const SliverToBoxAdapter(child: SearchButtonWidget()),
                          const SliverToBoxAdapter(
                              child: SizedBox(height: 16.0)),
                          SliverToBoxAdapter(
                            child: WeMovieWidget(
                              title: "We Movies",
                              subTitle:
                                  "${nowPlaying.length} Movies are loaded in now playing",
                            ),
                          ),
                          const SliverToBoxAdapter(
                              child: SizedBox(height: 16.0)),
                          SliverToBoxAdapter(
                            child: AspectRatio(
                              aspectRatio: 0.9,
                              child: NowPlayingWidget(
                                data: nowPlaying,
                              ),
                            ),
                          ),
                        ];
                      },
                      body: CustomScrollView(
                        slivers: [
                          const SliverToBoxAdapter(
                              child: SizedBox(height: 8.0)),
                          const SliverToBoxAdapter(
                            child: CardTitleWidget(title: "Top Rated"),
                          ),
                          const SliverToBoxAdapter(
                              child: SizedBox(height: 8.0)),
                          SliverList.builder(
                            itemCount: topMovies.length,
                            itemBuilder: (context, index) {
                              final TopMoviesResultEntity movie =
                                  topMovies[index];
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: AspectRatio(
                                  aspectRatio: 16 / 13.5,
                                  child: TopPlayingCardWidget(
                                    data: movie,
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
