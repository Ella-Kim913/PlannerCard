import 'package:challenge1/card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 80),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100)),
                          child: Image.network(
                            'https://phinf.pstatic.net/contact/20230514_275/1684002045276vrNLU_PNG/profileImage.png?type=s160',
                            scale: 2,
                          )),
                      const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 50,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "MONDAY 16",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 3),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "TODAY",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 55,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Icon(
                        Icons.circle,
                        color: Colors.pink,
                        size: 13,
                      ),
                      Expanded(
                        child: Text(
                          "17 18 19 20 21 22 23 24",
                          overflow: TextOverflow.clip,
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 55,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const card(
                  cardColor: Colors.pinkAccent,
                  meetingTitle: "design meeting",
                  participatingList: "Josh Anne Esther Paul +4",
                  meparticate: false,
                  startingHour: "11",
                  startingMin: "30",
                  endingHour: "12",
                  endingMin: "35",
                ),
                const SizedBox(height: 5),
                const card(
                  cardColor: Colors.blue,
                  meetingTitle: "Daily Project",
                  participatingList: "Alex Anna Elsa",
                  meparticate: false,
                  startingHour: "12",
                  startingMin: "35",
                  endingHour: "13",
                  endingMin: "55",
                ),
                const SizedBox(height: 5),
                const card(
                  cardColor: Colors.limeAccent,
                  meetingTitle: "weekly planning",
                  participatingList: "John Josh Allen Joshea",
                  meparticate: true,
                  startingHour: "14",
                  startingMin: "00",
                  endingHour: "16",
                  endingMin: "15",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
