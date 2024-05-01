import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_app/pages/search_page/domain/entities/search_result_entity.dart';
import 'package:movie_app/pages/search_page/search_page_dependency_injection.dart';
import 'package:movie_app/pages/search_page/view/states/search_bloc.dart';
import 'package:movie_app/services/api/constants/api_constants.dart';
import 'package:movie_app/utils/themes/color_constants.dart';
import 'package:movie_app/utils/utilities.dart';

part 'widgets/search_list_widget.dart';
part 'widgets/custom_text_field.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late final TextEditingController searchTextController;
  final GetIt sl = GetIt.instance;
  @override
  void initState() {
    searchTextController = TextEditingController();
    SearchPageDependencyInjection();
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
              create: (context) => SearchBloc(usecaes: sl()),
              child: BlocBuilder<SearchBloc, SearchState>(
                  builder: (context, state) {
                return Column(
                  children: [
                    SizedBox(
                      height: size * 0.18,
                      child: Card(
                        surfaceTintColor: ColorConstants.kSecondaryAccentColor,
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: CustomSearchFieldWidget(
                            searchController: searchTextController,
                          ),
                        ),
                      ),
                    ),
                    state.maybeWhen(
                      initial: () => const SizedBox.shrink(),
                      loading: () => const Expanded(
                        child: Center(child: CircularProgressIndicator()),
                      ),
                      loaded: (data) => Expanded(
                        child: SearchListWidget(data: data),
                      ),
                      empty: () => Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          alignment: Alignment.center,
                          child: Text(
                            "The movie that you are looking for is not found in our database.",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: size * 0.08,
                                ),
                          ),
                        ),
                      ),
                      orElse: () => const SizedBox.shrink(),
                    ),
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
