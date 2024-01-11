import 'dart:math';

import 'package:canal_olympia/utils/colors.dart';
import 'package:canal_olympia/widget/filters.dart';
import 'package:canal_olympia/widget/mini-movie-card.dart';
import 'package:canal_olympia/widget/movieCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  List<Widget> filtersList = [
    filters(isSelected: true, title: 'Les nouveautés'),
    filters(isSelected: false, title: 'Vos préférences'),
    filters(isSelected: false, title: 'Populaires')
  ];

  late final PageController _controller = PageController(viewportFraction: 0.7);

  List<Widget> movies = [
    movieCard(),
    movieCard(),
    movieCard(),
    movieCard(),
    movieCard(),
    movieCard(),
    movieCard(),
  ];

  @override
  void initState() {
    super.initState();
    _controller;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: backgroundcolor,
        appBar: AppBar(
          backgroundColor: cblue,
          automaticallyImplyLeading: false,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'lib/assets/product-logo.png',
                      height: 50,
                      width: 50,
                    ),
                    TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.pin_drop_rounded),
                        label: Text('Bessengue')),
                    TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.translate_outlined),
                        label: Text('Eng')),
                    Container(
                      height: 40,
                      width: 76,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color.fromRGBO(255, 17, 75, 1),
                            Color.fromRGBO(188, 0, 46, 1)
                          ]),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                          child: Text(
                        'Log in',
                        style: GoogleFonts.sora(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.white),
                      )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: filtersList.length,
                            itemBuilder: (context, index) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  filtersList[index],
                                  const SizedBox(
                                    width: 16,
                                  )
                                ],
                              );
                            }),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                          height: 450,
                          child: PageView.builder(
                            clipBehavior: Clip.none,
                            controller: _controller,
                            itemCount: movies.length,
                            itemBuilder: (context, index) {
                              if (!_controller.position.haveDimensions) {
                                return const SizedBox();
                              }
                              return AnimatedBuilder(
                                animation: _controller,
                                builder: (_, __) => Transform.scale(
                                  scale: max(
                                    0.7,
                                    (1 - (_controller.page! - index).abs() / 2),
                                  ),
                                  child: movies[index],
                                ),
                              );
                            },
                          )),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: movies.length,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Colors.white,
                    dotColor: Colors.grey,
                    dotHeight: 8,
                    dotWidth: 10,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Semaine du 17-23 ",
                      style: GoogleFonts.sora(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [movieCardMini(), movieCardMini()],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [movieCardMini(), movieCardMini()],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [movieCardMini(), movieCardMini()],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
