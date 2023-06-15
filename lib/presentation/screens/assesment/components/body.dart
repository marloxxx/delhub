import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../data/models/assessment_point_model.dart';
import '../../../../data/models/assessment_student_model.dart';
import '../../../../data/models/kelompok_model.dart';
import '../../../../routes/app_routers.dart';
import '../../../../shared/theme.dart';
import '../../../widgets/background.dart';

class Body extends StatelessWidget {
  final Kelompok kelompok;
  final AssessmentPointList assessmentPointList;
  final AssessmentStudentList assessmentStudentList;
  const Body(
      {Key? key,
      required this.kelompok,
      required this.assessmentPointList,
      required this.assessmentStudentList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
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
                children: [
                  Text(
                    kelompok.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Righteous',
                    ),
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
                          child: SingleChildScrollView(
                            child: ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: assessmentPointList.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    AutoRouter.of(context)
                                        .push(
                                          DetailAssessmentRoute(
                                            kelompok: kelompok,
                                            assessmentPoint:
                                                assessmentPointList[index],
                                            assessmentStudentList:
                                                assessmentStudentList,
                                          ),
                                        )
                                        .then((_) {});
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(15.0),
                                    margin: const EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                      border: Border.all(color: primary),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFF3493C9),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          child: const Icon(
                                            FontAwesomeIcons.clipboardCheck,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(width: 20),
                                        Text(
                                          assessmentPointList[index].name,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
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
    );
  }
}
