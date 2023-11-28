import 'package:flutter/material.dart';
import 'Data/list.dart';
import 'descriptionScreen.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);
  // final Color themeColor;
  // final ScrollController scrollController;
  // final List<MovieCard> movieCards;

  // MovieCardContainer({
  //   required this.themeColor,
  //   required this.scrollController,
  //   required this.movieCards,
  // });

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   //movie_card_container
    //   child: Padding(
    //     padding: EdgeInsets.only(right: 2.w, left: 2.w),
    //     child: SingleChildScrollView(
    //       controller: scrollController,
    //       child: Padding(
    //         padding: EdgeInsets.only(top: 1.5.h),
    //         child: Wrap(children: movieCards),
    //       ),
    //     ),
    //   ),
    // );
    return Scaffold(
      backgroundColor: Color.fromRGBO(218, 206, 229, 1),
      appBar: AppBar(
        title: const Text(
          "Movie List",
          style: TextStyle(
              fontFamily: "Roboto",
              color: Color.fromARGB(255, 252, 251, 251),
              fontWeight: FontWeight.bold,
              fontSize: 22),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 205, 85, 245),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: movies.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                child: ListTile(
                  tileColor: Color.fromARGB(255, 243, 242, 245),
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      movies[index]["Movie"],
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => descriptionScreen(
                              movieName: movies[index]["Movie"],
                              movieDescription: movies[index]["Description"],
                              moviestatus: movies[index]["IMDB Rating"],
                              movieURL: movies[index]["img"])),
                    );
                  },
                ),
              );
            }),
      ),
    );
  }
}
