part of '../search_page.dart';

class SearchListWidget extends StatefulWidget {
  final String searchedItem;
  final List<SearchResultEntity> data;
  const SearchListWidget({
    super.key,
    required this.searchedItem,
    required this.data,
  });

  @override
  State<SearchListWidget> createState() => _SearchListWidgetState();
}

class _SearchListWidgetState extends State<SearchListWidget> {
  late final ScrollController controller;
  int pageKey = 1;
  @override
  void initState() {
    controller = ScrollController();
    controller.addListener(() {
      if (controller.position.pixels >= controller.position.maxScrollExtent) {
        pageKey += 1;
        context.read<SearchBloc>().add(
              SearchEvent.fetchDataFromNextPage(
                name: widget.searchedItem,
                pageKey: pageKey,
              ),
            );
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            controller: controller,
            itemCount: widget.data.length,
            itemBuilder: (context, index) {
              final SearchResultEntity searchData = widget.data[index];
              return AspectRatio(
                aspectRatio: 16 / 9,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4.0,
                    vertical: 8.0,
                  ),
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Image.network(
                                "${ApiConstants.kImageBaseUrl}${searchData.posterPath ?? ""}",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4.0,
                                vertical: 8.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    searchData.title ?? "",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          fontWeight: FontWeight.w600,
                                          fontSize: size * 0.045,
                                        ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 4.0),
                                  Text(
                                    searchData.overview ?? "",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: size * 0.035,
                                        ),
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: SearchResultStatistics(
                                        rating: Utilities.chagneDecimalPlace(
                                          value: searchData.popularity ?? 0,
                                          moveDecimalTo: 2,
                                        ),
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
                  ),
                ),
              );
            },
          ),
        ),
        context.watch<SearchBloc>().state == const SearchState.loadingMoreData()
            ? const Center(child: CircularProgressIndicator())
            : const SizedBox.shrink(),
      ],
    );
  }
}

class SearchResultStatistics extends StatelessWidget {
  final String rating;
  const SearchResultStatistics({
    super.key,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.sizeOf(context).width;
    return Row(
      children: [
        Text(
          rating,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: size * 0.05,
              ),
        ),
        Text(
          "⭐",
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontSize: size * 0.04,
              ),
        )
      ],
    );
  }
}
