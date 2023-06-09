import 'package:flutter/material.dart';

import '../../../widgets/background.dart';

class ScheduleOfSeminar extends StatelessWidget {
  const ScheduleOfSeminar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Background(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          // Body of Dashboard
          body: Column(
            children: <Widget>[
              // Header
              Container(
                padding: const EdgeInsets.all(15.0),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Kel 17 PA 2',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'Righteous'),
                    )
                  ],
                ),
              ),

              // Body Content
              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  child: Container(
                      color: Colors.white,
                      child: SingleChildScrollView(
                        child: Container(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(3.5),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF3493C9),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Text(
                                    "Senin/ 1 Mei 2023",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  width: 8,
                                  height: 55,
                                  color: const Color(0xFF3493C9),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "PA 2",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 10, right: 10),
                                          width: 1,
                                          height: 10,
                                          color: const Color(0xFF3493C9),
                                        ),
                                        const Text(
                                          "Sistem Informasi Pertamanan",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.access_time,
                                          color: Colors.black,
                                          size: 14,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          "08.00 - 09.00",
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 192, 192, 192),
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.pin_drop,
                                          color: Colors.black,
                                          size: 14,
                                        ),
                                        Text(
                                          "GD Vokasi",
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 192, 192, 192),
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  width: 8,
                                  height: 55,
                                  color: const Color(0xFF3493C9),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "PA 2",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 10, right: 10),
                                          width: 1,
                                          height: 10,
                                          color: const Color(0xFF3493C9),
                                        ),
                                        const Text(
                                          "Sistem Informasi Pertamanan",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.access_time,
                                          color: Colors.black,
                                          size: 14,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          "08.00 - 09.00",
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 192, 192, 192),
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.pin_drop,
                                          color: Colors.black,
                                          size: 14,
                                        ),
                                        Text(
                                          "GD Vokasi",
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 192, 192, 192),
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ]),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
