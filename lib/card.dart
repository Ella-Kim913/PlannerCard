import 'package:flutter/material.dart';

class card extends StatelessWidget {
  final Color cardColor;
  final String meetingTitle, participatingList;
  final bool meparticate;
  final String startingHour, startingMin, endingHour, endingMin;

  const card({
    super.key,
    required this.cardColor,
    required this.meetingTitle,
    required this.participatingList,
    required this.meparticate,
    required this.endingHour,
    required this.endingMin,
    required this.startingHour,
    required this.startingMin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  startingHour,
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
                Text(
                  startingMin,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                const Text("|"),
                Text(
                  endingHour,
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
                Text(
                  endingMin,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      meetingTitle.toUpperCase(),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: [
                        Visibility(
                          visible: meparticate,
                          child: const Text(
                            "Me ",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Text(
                          participatingList,
                          style: const TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
