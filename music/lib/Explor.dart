import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:music/Task-1.dart';
import 'package:music/musiccard.dart';

class Explor extends StatefulWidget {
  const Explor({super.key});

  @override
  State<Explor> createState() => _ExplorState();
}

class _ExplorState extends State<Explor> {
  @override
  Widget build(BuildContext context) {
    var songs = [
      'Cherry',
      'Falling',
      'Daylight',
      'Cinema',
      'Carolina',
      'DayDreaming',
      'Ever Since New York',
      'Adore You',
      'Daylight',
      'Cinema',
      'Carolina'
    ];
    var author = [
      'Harry',
      'Potter',
      'Ed Sheeran',
      'Nick',
      'Styles',
      'Taylor',
      'Jenny',
      'Tom',
      'Taylor',
      'Jenny',
      'Tom'
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          leading:
          Builder(builder: (context) {
            return IconButton(onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Abc()));
            },
                icon: const Icon(Icons.home_filled));
          },),
          title: const Text('Songs',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          centerTitle: true,),

        body: ListView.separated(itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
                radius: 40.0,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/imag.jpg', fit: BoxFit.cover,),
                )
            ),
            title: Text(songs[index],
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  fontFamily: 'poppins'),),
            subtitle: Text(author[index], style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                fontFamily: 'poppins'),),
            trailing:
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => Dialog(
                    backgroundColor: Colors.transparent,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2), // Adjust blur intensity as needed
                      child: Musiccard(),
                    ),
                  ),
                );
              },
              icon: Icon(Icons.play_circle_fill_rounded),
            ),
          );
        },
          itemCount: songs.length,
          separatorBuilder: (context, index) =>
              Divider(height: 15, thickness: 5),
        ),

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.deepOrange,
          items: [
            BottomNavigationBarItem(
              label: 'Previous',
              icon: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => Abc(),));
                  },
                  child: Icon(Icons.arrow_back_outlined))),
            BottomNavigationBarItem(
                label: 'Forward',
                icon: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) => Dialog(
                          backgroundColor: Colors.transparent,
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2), // Adjust blur intensity as needed
                            child: Musiccard(),
                          ),
                        ),
                      );
                    },
                    child: Icon(Icons.arrow_forward_outlined)))
          ],
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(color: Colors.black),
          unselectedLabelStyle: TextStyle(color: Colors.black),
        ),
      ));
  }
}


// IconButton(onPressed: () {
// Navigator.push(
// context,
// MaterialPageRoute(builder: (context) => const Musiccard()));
// }, icon: Icon(Icons.play_circle_fill_rounded)),

