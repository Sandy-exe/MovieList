import 'package:apprev/list.dart';
import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';


void main() {
  runApp(
    const MaterialApp(
      title: "Movie List",
      home: splashScreen(),
      debugShowCheckedModeBanner: false,
    )

  );
}

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromRGBO(218, 206, 229, 1),
      appBar: AppBar(
        title: const Text("Movie List",style: TextStyle(fontFamily: "Roboto",
            color: Color.fromARGB(255, 252, 251, 251),
            fontWeight: FontWeight.bold,
            fontSize: 22),),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 205, 85, 245),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: movies.length,

          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.only(top: 8.0,bottom: 8),
              child: ListTile(
                tileColor: Color.fromARGB(255, 243, 242, 245),
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(movies[index]["Movie"],style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => descriptionScreen(
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


class descriptionScreen extends StatelessWidget {
  const descriptionScreen({Key? key, required this.movieName, required this.movieDescription, required this.moviestatus, required this.movieURL}) : super(key: key);
  final String movieName;
  final String movieDescription;
  final String moviestatus;
  final String movieURL;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(218, 206, 229, 1),
      appBar: AppBar(
        title: const Text("Movie Description",style: TextStyle(fontFamily: "Roboto",
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
            fontSize: 22),),
        centerTitle: true,
        backgroundColor:Color.fromARGB(255, 205, 85, 245),
      ),
      body: SingleChildScrollView (
        child: Column(
          children: [
            Image.network(movieURL),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(movieName,style: const TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(moviestatus,style: const TextStyle(fontSize: 10,fontWeight: FontWeight.bold,letterSpacing: 1.5)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(movieDescription,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold,letterSpacing: 1.5)),
            )
          ],
        ),
      ),
    );
  }
}



class splashScreen extends StatelessWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset("assets/images/turtle.png"),
      title: const Text(
        "Movie List",
        style: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor:   Color.fromRGBO(218, 206, 229, 1),
      showLoader: true,
      loaderColor: Color.fromARGB(255, 255, 255, 255) ,
      loadingText: const Text("Loading...",style: TextStyle(color: Colors.white),),
      navigator: const homeScreen(),
      durationInSeconds: 5,
    );
  }
}



