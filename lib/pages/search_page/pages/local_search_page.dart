// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_app/pages/home_page/domain/entities/now_playing_entities/now_playing_result_entity.dart';
import 'package:movie_app/pages/home_page/domain/entities/top_movies_entities/top_movies_result_entity.dart';
import 'package:movie_app/pages/home_page/states/now_playing_movies_bloc/now_playing_movies_bloc.dart';
import 'package:movie_app/pages/home_page/states/top_movies_bloc/top_movies_bloc.dart';
import 'package:movie_app/pages/search_page/view/states/api_search_bloc/search_bloc.dart';
import 'package:movie_app/pages/search_page/view/widgets/custom_text_field.dart';
import 'package:movie_app/pages/search_page/view/widgets/search_list_widget.dart';
import 'package:movie_app/services/logger/logger_service.dart';
import 'package:movie_app/utils/themes/color_constants.dart';

enum SearchFilterType { NowPlaying, TopMovies }

class LocalSearchPage extends StatefulWidget {
  const LocalSearchPage({super.key});

  @override
  State<LocalSearchPage> createState() => _LocalSearchPageState();
}

class _LocalSearchPageState extends State<LocalSearchPage> {
  late final TextEditingController searchTextController;

  SearchFilterType selectedFilter = SearchFilterType.NowPlaying;
  final GetIt sl = GetIt.instance;
  @override
  void initState() {
    searchTextController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.sizeOf(context).width;
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
            stops: [0.06, 0.5],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            bottom: 10.0,
            top: 24.0,
          ),
          child: SafeArea(
            child: BlocProvider(
              create: (context) => SearchBloc(),
              child: BlocBuilder<SearchBloc, SearchState>(
                  builder: (context, state) {
                return Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 2,
                          child: SizedBox(
                            height: size * 0.16,
                            child: Card(
                              surfaceTintColor:
                                  ColorConstants.kSecondaryAccentColor,
                              elevation: 4.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: CustomSearchFieldWidget(
                                  searchController: searchTextController,
                                  onSubmit: (value) {
                                    if (selectedFilter ==
                                        SearchFilterType.NowPlaying) {
                                      BlocProvider.of<SearchBloc>(context).add(
                                        SearchEvent<
                                            NowPlayingResultEntity>.fetchDataFromLocal(
                                          name: searchTextController.text,
                                          searchType: selectedFilter,
                                          data: sl
                                              .get<NowPlayingBloc>()
                                              .loadedList,
                                        ),
                                      );
                                    } else {
                                      BlocProvider.of<SearchBloc>(context).add(
                                        SearchEvent<
                                            TopMoviesResultEntity>.fetchDataFromLocal(
                                          name: searchTextController.text,
                                          searchType: selectedFilter,
                                          data: sl
                                              .get<TopMoviesBloc>()
                                              .loadedList,
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () async {
                            selectedFilter = await showMenu<SearchFilterType>(
                                  context: context,
                                  position:
                                      RelativeRect.fromLTRB(size, 140, 10, 0),
                                  elevation: 2.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  items: <PopupMenuEntry<SearchFilterType>>[
                                    const PopupMenuItem(
                                      key:
                                          ValueKey(SearchFilterType.NowPlaying),
                                      value: SearchFilterType.NowPlaying,
                                      child: Text("Now Playing"),
                                    ),
                                    const PopupMenuItem(
                                      key: ValueKey(SearchFilterType.TopMovies),
                                      value: SearchFilterType.TopMovies,
                                      child: Text("Top Movies"),
                                    ),
                                  ],
                                ) ??
                                SearchFilterType.NowPlaying;

                            Logs.debugLog("Search Filter => $selectedFilter");
                          },
                          icon: Icon(
                            Icons.more_vert_rounded,
                            size: size * 0.08,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4.0),
                    state.maybeWhen(
                      initial: () => const SizedBox.shrink(),
                      loading: () => const Expanded(
                        child: Center(child: CircularProgressIndicator()),
                      ),
                      loaded: (data) => Expanded(
                          child: SearchListWidget(
                        searchedItem: searchTextController.text,
                        data: data,
                        usePagination: false,
                      )),
                      empty: () => const Expanded(
                        child: Center(child: Text("Not Found")),
                      ),
                      error: (_) => const SizedBox.shrink(),
                      orElse: () => const SizedBox.shrink(),
                    )
                  ],
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
