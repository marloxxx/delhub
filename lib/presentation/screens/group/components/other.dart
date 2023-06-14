import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../data/models/kelompok_model.dart';
import '../../../../data/models/user_model.dart';
import '../../../../routes/app_routers.dart';
import '../../../../shared/theme.dart';
import '../../../widgets/background.dart';

@RoutePage(name: 'GroupOtherRoute')
class Other extends StatelessWidget {
  final User user;
  final Kelompok kelompok;
  const Other({
    Key? key,
    required this.kelompok,
    required this.user,
  }) : super(key: key);

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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      kelompok.name,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
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
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                if (kelompok.pembimbing != null)
                                  // if user.dosen.nidn is in kelompok.pembimbing.nidn
                                  if (kelompok.pembimbing!.any((element) =>
                                      element.nidn == user.dosen!.nidn))
                                    InkWell(
                                      onTap: () {
                                        AutoRouter.of(context).push(
                                          GuidanceStudentRoute(
                                            kelompokId: kelompok.id,
                                          ),
                                        );
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(15.0),
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                          border: Border.all(color: primary),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(children: [
                                              Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xFF3493C9),
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: const Icon(
                                                  FontAwesomeIcons.calendarDays,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              const Text(
                                                "Jadwal Bimbingan",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ]),
                                            const SizedBox(width: 10),
                                            const Icon(Icons.arrow_forward,
                                                size: 24)
                                          ],
                                        ),
                                      ),
                                    ),
                                const SizedBox(height: 10),
                                // divider
                                const Divider(
                                  height: 1,
                                  color: Color(0xFFC4C4C4),
                                  thickness: 2,
                                ),
                                const SizedBox(height: 10),
                                InkWell(
                                  onTap: () {
                                    AutoRouter.of(context).push(
                                      AssesmentPointRoute(
                                        kelompok: kelompok,
                                      ),
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(15.0),
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                      border: Border.all(color: primary),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(children: [
                                          Container(
                                            width: 50,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF3493C9),
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: const Icon(
                                              FontAwesomeIcons.clipboardList,
                                              color: Colors.white,
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          const Text(
                                            "Penilaian",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ]),
                                        const SizedBox(width: 10),
                                        IconButton(
                                          icon: const Icon(Icons.arrow_forward),
                                          iconSize: 24,
                                          onPressed: () {
                                            AutoRouter.of(context).push(
                                              AssesmentPointRoute(
                                                  kelompok: kelompok),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 10),
                                const Divider(
                                  height: 1,
                                  color: Color(0xFFC4C4C4),
                                  thickness: 2,
                                ),
                                const SizedBox(height: 10),

                                InkWell(
                                  onTap: () {
                                    AutoRouter.of(context).push(
                                      DetailGroupRoute(kelompok: kelompok),
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(15.0),
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                      border: Border.all(color: primary),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(children: [
                                          Container(
                                            width: 50,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF3493C9),
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: const Icon(
                                              FontAwesomeIcons.users,
                                              color: Colors.white,
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          const Text(
                                            "Detail Kelompok",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ]),
                                        const SizedBox(width: 10),
                                        IconButton(
                                          icon: const Icon(Icons.arrow_forward),
                                          iconSize: 24,
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
