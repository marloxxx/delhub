import 'package:flutter/material.dart';

class TotalGuidance extends StatelessWidget {
  TotalGuidance({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              color: Color(0xFFE5E5E5),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Total Bimbingan',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 172, 173, 177),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 220, 220, 220),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Row(children: [
                      const Text(
                        '2 x',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 172, 173, 177),
                        ),
                      ),
                      // pembatas garis lurus
                      Container(
                        margin: const EdgeInsets.only(left: 5, right: 5),
                        height: 20,
                        width: 1,
                        color: const Color.fromARGB(255, 172, 173, 177),
                      ),
                      const Text(
                        '7',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 172, 173, 177),
                        ),
                      ),
                    ]),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
