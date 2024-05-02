import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/pages/bottom_navigation_page/views/states/bottom_bar_bloc.dart';
import 'package:movie_app/pages/explore_page/view/explore_page.dart';
import 'package:movie_app/pages/home_page/view/home_page.dart';
import 'package:movie_app/pages/upcoming_page/view/upcoming_page.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final List<Widget> pages = [
    const HomePage(),
    const ExplorePage(),
    const UpComingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context).width;
    return MultiBlocProvider(
      providers: [
        BlocProvider<BottomTabBloc>(
          create: (context) => BottomTabBloc(),
        ),
      ],
      child: BlocConsumer<BottomTabBloc, TabChangeState>(
          listener: (context, state) {},
          builder: (ctx, state) {
            return Scaffold(
              body: pages[state.index],
              bottomNavigationBar: BottomNavigationBar(
                onTap: (index) {
                  BlocProvider.of<BottomTabBloc>(ctx)
                      .add(TabChangeEvent.changeTab(index: index));
                },
                items: [
                  BottomNavigationBarItem(
                    icon: Assets.images.shortLogo.image(width: size * 0.07),
                    label: "We Movies",
                  ),
                  const BottomNavigationBarItem(
                    icon: Icon(
                      Icons.map,
                    ),
                    label: "Explore",
                  ),
                  const BottomNavigationBarItem(
                    icon: Icon(Icons.calendar_month_outlined),
                    label: "Upcoming",
                  ),
                ],
              ),
            );
          }),
    );
  }
}
