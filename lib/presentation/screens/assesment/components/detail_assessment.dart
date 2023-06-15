import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:one_context/one_context.dart';

import '../../../../data/models/assessment_component_model.dart';
import '../../../../data/models/assessment_point_model.dart';
import '../../../../data/models/assessment_student_model.dart';
import '../../../../data/models/detail_assessment_student_model.dart';
import '../../../../data/models/kelompok_model.dart';
import '../../../../data/models/mahasiswa_model.dart';
import '../../../blocs/assesment/assessment_bloc.dart';
import '../../../blocs/assesment/assessment_event.dart';
import '../../../widgets/background.dart';

late MahasiswaList mahasiswaList;
late AssessmentComponentList assessmentComponentList;
late Mahasiswa mahasiswa;
List<Map<String, dynamic>> finalValueList = [];
AssessmentStudentList assessmentStudentList = [];
late AssessmentStudent assessmentStudent;
List<TextEditingController> textEditingControllers = [];

@RoutePage(name: 'DetailAssessmentRoute')
class DetailAssessment extends StatefulWidget {
  final Kelompok kelompok;
  final AssessmentPoint assessmentPoint;
  final AssessmentStudentList assessmentStudentList;
  const DetailAssessment(
      {Key? key,
      required this.kelompok,
      required this.assessmentPoint,
      required this.assessmentStudentList})
      : super(key: key);

  @override
  State<DetailAssessment> createState() => _DetailAssessmentState();
}

class _DetailAssessmentState extends State<DetailAssessment> {
  @override
  void initState() {
    super.initState();
    mahasiswaList = widget.kelompok.mahasiswa!;
    assessmentComponentList = widget.assessmentPoint.components!;
    mahasiswa = mahasiswaList[0];
    assessmentStudentList = widget.assessmentStudentList;
    // set texteditingcontroller for each assessment component
    for (var i = 0; i < assessmentComponentList.length; i++) {
      textEditingControllers.add(TextEditingController());
    }
    setInitialValueList();
  }

// set value in valueList by mahasiswa id and assessment component id
  void setValue(
      String mahasiswaNim, int assessmentComponentId, double value) async {
    // Update detailAssessmentStudent by assessmentStudent id and assessment component id
    var detailAssessmentStudent = assessmentStudent.detailAssessmentStudent!
        .firstWhere(
          (element) =>
              element.assessmentComponent?.id == assessmentComponentId &&
              element.assessmentStudent?.id == assessmentStudent.id,
          orElse: () => DetailAssessmentStudent(
            id: 0,
            assessmentStudent: assessmentStudent,
            assessmentComponent: assessmentComponentList
                .firstWhere((element) => element.id == assessmentComponentId),
            score: 0,
          ),
        )
        .copyWith(score: value);

    // Update assessmentStudent by mahasiswa nim and assessment point id
    assessmentStudent = assessmentStudent.copyWith(
      detailAssessmentStudent: [
        ...assessmentStudent.detailAssessmentStudent!.where((element) =>
            element.assessmentComponent?.id != assessmentComponentId ||
            element.assessmentStudent?.id != assessmentStudent.id),
        detailAssessmentStudent,
      ],
    );

    // Update assessmentStudentList by mahasiswa nim and assessment point id
    assessmentStudentList = [
      ...assessmentStudentList.where((element) =>
          element.mahasiswa?.nim != mahasiswaNim ||
          element.assessmentPoint?.id != widget.assessmentPoint.id),
      assessmentStudent,
    ];

    // Calculate final value for each mahasiswa nim and assessmentPoint id
    final existingFinalValueIndex = finalValueList.indexWhere(
      (element) =>
          element['mahasiswaNim'] == mahasiswaNim &&
          element['assessmentPointId'] == widget.assessmentPoint.id,
    );
    if (existingFinalValueIndex != -1) {
      finalValueList[existingFinalValueIndex]['value'] =
          calculateFinalValue(mahasiswaNim, widget.assessmentPoint.id);
    } else {
      finalValueList.add({
        'mahasiswaNim': mahasiswaNim,
        'assessmentPointId': widget.assessmentPoint.id,
        'value': calculateFinalValue(mahasiswaNim, widget.assessmentPoint.id),
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Background(
        child: WillPopScope(
          onWillPop: () async {
            if (assessmentStudent.status == false) {
              final shouldPop = await showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text("Konfirmasi"),
                  content: const Text("Apakah anda yakin ingin keluar?"),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context, false);
                      },
                      child: const Text(
                        "Tidak",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context, true);
                        textEditingControllers = [];
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(0xFF3493C9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                      ),
                      child: const Text('Ya'),
                    ),
                  ],
                ),
              );
              return shouldPop ?? false;
            } else {
              return true;
            }
          },
          child: Scaffold(
            backgroundColor: Colors.transparent,
            // Body of Dashboard
            body: Column(
              children: [
                // Header
                Container(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Form Penilaian ${widget.assessmentPoint.name}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
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
                              child: Container(
                                padding: const EdgeInsets.all(15.0),
                                decoration: const BoxDecoration(
                                  color: Color(0xFFE6E6E6),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(33.5),
                                  ),
                                ),
                                child: DropdownButtonFormField(
                                  icon: const Visibility(
                                    visible: false,
                                    child: Icon(Icons.arrow_drop_down),
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    suffixIcon: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF3493C9),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: const Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  hint: const Text('Pilih Mahasiswa'),
                                  isExpanded: true,
                                  value: mahasiswa,
                                  onChanged: (Mahasiswa? newValue) {
                                    changeMahasiswa(newValue);
                                  },
                                  items: mahasiswaList
                                      .map<DropdownMenuItem<Mahasiswa>>(
                                          (Mahasiswa value) {
                                    return DropdownMenuItem<Mahasiswa>(
                                      value: value,
                                      child: Text(
                                        value.nama,
                                        style: const TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 15, right: 15),
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        mahasiswa.nama,
                                        style: const TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        mahasiswa.nim,
                                        style: const TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        mahasiswa.prodi,
                                        style: const TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        widget.kelompok.topik,
                                        style: const TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 3,
                                    bottom: 3,
                                  ),
                                  height: 1,
                                  color: const Color(0xFFC4C4C4),
                                ),
                                SingleChildScrollView(
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: assessmentComponentList.length,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        padding: const EdgeInsets.all(15.0),
                                        margin: const EdgeInsets.only(
                                          top: 3,
                                          bottom: 3,
                                        ),
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFE6E6E6),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Html(
                                                    data:
                                                        assessmentComponentList[
                                                                index]
                                                            .name,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            // textformfield
                                            Container(
                                              width: 50,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                border: Border.all(
                                                  color:
                                                      const Color(0xFF3493C9),
                                                ),
                                              ),
                                              child: TextFormField(
                                                readOnly:
                                                    assessmentStudent.status,
                                                textAlign: TextAlign.center,
                                                controller:
                                                    textEditingControllers[
                                                        index],
                                                keyboardType:
                                                    TextInputType.number,
                                                decoration:
                                                    const InputDecoration(
                                                  border: InputBorder.none,
                                                ),
                                                onChanged: (value) {
                                                  if (value.isEmpty) {
                                                    setValue(
                                                        mahasiswa.nim,
                                                        assessmentComponentList[
                                                                index]
                                                            .id,
                                                        0);
                                                    return;
                                                  }
                                                  // jika nilai lebih dari bobot
                                                  if (double.parse(value) >
                                                      assessmentComponentList[
                                                              index]
                                                          .weight) {
                                                    OneContext().showDialog(
                                                      builder: (_) =>
                                                          AlertDialog(
                                                        title:
                                                            const Text("Error"),
                                                        content: const Text(
                                                            "Nilai tidak boleh lebih dari bobot"),
                                                        actions: [
                                                          ElevatedButton(
                                                            onPressed: () {
                                                              Navigator.pop(_);
                                                            },
                                                            child: const Text(
                                                              "OK",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                    return;
                                                  }
                                                  setState(
                                                    () {
                                                      setValue(
                                                        mahasiswa.nim,
                                                        assessmentComponentList[
                                                                index]
                                                            .id,
                                                        double.parse(value),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            // "/weight"
                                            Text(
                                              "/${assessmentComponentList[index].weight}",
                                              style: const TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(15.0),
                                  margin: const EdgeInsets.only(
                                    top: 3,
                                    bottom: 3,
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFE6E6E6),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      const Text(
                                        "Nilai Akhir : ",
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                      // show nilai akhir
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                            color: const Color(0xFF3493C9),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            // final value where mahasiswa nim and assessment point id is same
                                            finalValueList
                                                .firstWhere(
                                                  (element) =>
                                                      element['mahasiswaNim'] ==
                                                          mahasiswa.nim &&
                                                      element['assessmentPointId'] ==
                                                          widget.assessmentPoint
                                                              .id,
                                                )['value']
                                                .toString(),
                                            style: const TextStyle(
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                if (assessmentStudent.status == false)
                                  Center(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        storeValues(widget.kelompok);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor:
                                            const Color(0xFF3493C9),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(7.0),
                                        ),
                                      ),
                                      child: const Text('Submit'),
                                    ),
                                  ),
                              ],
                            )
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
      ),
    );
  }

  void changeMahasiswa(Mahasiswa? newValue) {
    setState(() {
      mahasiswa = newValue!;
      assessmentStudent = assessmentStudentList.firstWhere(
        (element) =>
            element.mahasiswa?.nim == mahasiswa.nim &&
            element.assessmentPoint?.id == widget.assessmentPoint.id,
        orElse: () => AssessmentStudent(
          id: 0,
          kelompok: widget.kelompok,
          assessmentPoint: widget.assessmentPoint,
          score: 0,
          mahasiswa: mahasiswa,
          status: false,
          detailAssessmentStudent: [],
        ),
      );
      // Set initial value for each textformfield, if value is 0 then set ''
      for (var i = 0; i < assessmentComponentList.length; i++) {
        final detailAssessmentStudent =
            assessmentStudent.detailAssessmentStudent!.firstWhere(
          (element) =>
              element.assessmentComponent?.id ==
                  assessmentComponentList[i].id &&
              element.assessmentStudent?.mahasiswa?.nim == mahasiswa.nim &&
              element.assessmentStudent?.assessmentPoint?.id ==
                  widget.assessmentPoint.id,
          orElse: () => DetailAssessmentStudent(
            id: 0,
            assessmentStudent: assessmentStudent,
            assessmentComponent: assessmentComponentList[i],
            score: 0,
          ),
        );

        textEditingControllers[i].text = detailAssessmentStudent.score == 0
            ? ''
            : detailAssessmentStudent.score.toString();
      }
    });
  }

  calculateFinalValue(String mahasiswaNim, int assessmentPointId) {
    double finalValue = 0;
    // calculate final value for each mahasiswa nim and assessmentPoint id, get value from valueList where mahasiswa nim, assessment component id and assessment point id is same
    for (var i = 0; i < assessmentComponentList.length; i++) {
      var detailAssessmentStudent =
          assessmentStudent.detailAssessmentStudent!.firstWhere(
        (element) =>
            element.assessmentComponent?.id == assessmentComponentList[i].id &&
            element.assessmentStudent?.mahasiswa?.nim == mahasiswa.nim &&
            element.assessmentStudent?.assessmentPoint?.id ==
                widget.assessmentPoint.id,
        orElse: () => DetailAssessmentStudent(
          id: 0,
          assessmentStudent: assessmentStudent,
          assessmentComponent: assessmentComponentList[i],
          score: 0,
        ),
      );

      finalValue += detailAssessmentStudent.score;
    }
    return finalValue;
  }

  void setInitialValueList() {
    if (widget.assessmentStudentList.isEmpty) {
      assessmentStudentList = mahasiswaList.map((mahasiswa) {
        return AssessmentStudent(
          id: 0,
          kelompok: widget.kelompok,
          assessmentPoint: widget.assessmentPoint,
          score: 0,
          mahasiswa: mahasiswa,
          status: false,
          detailAssessmentStudent: [],
        );
      }).toList();
    }

    assessmentStudent = assessmentStudentList.firstWhere(
      (element) =>
          element.mahasiswa?.nim == mahasiswa.nim &&
          element.assessmentPoint?.id == widget.assessmentPoint.id,
      orElse: () => AssessmentStudent(
        id: 0,
        kelompok: widget.kelompok,
        assessmentPoint: widget.assessmentPoint,
        score: 0,
        mahasiswa: mahasiswa,
        status: false,
        detailAssessmentStudent: [],
      ),
    );

    for (var i = 0; i < assessmentComponentList.length; i++) {
      final detailAssessmentStudent =
          assessmentStudent.detailAssessmentStudent!.firstWhere(
        (element) =>
            element.assessmentComponent?.id == assessmentComponentList[i].id &&
            element.assessmentStudent?.mahasiswa?.nim == mahasiswa.nim &&
            element.assessmentStudent?.assessmentPoint?.id ==
                widget.assessmentPoint.id,
        orElse: () => DetailAssessmentStudent(
          id: 0,
          assessmentStudent: assessmentStudent,
          assessmentComponent: assessmentComponentList[i],
          score: 0,
        ),
      );

      textEditingControllers[i].text = detailAssessmentStudent.score == 0
          ? ''
          : detailAssessmentStudent.score.toString();
    }

    for (var i = 0; i < mahasiswaList.length; i++) {
      finalValueList.add({
        'mahasiswaNim': mahasiswaList[i].nim,
        'assessmentPointId': widget.assessmentPoint.id,
        'value': calculateFinalValue(
            mahasiswaList[i].nim, widget.assessmentPoint.id),
      });
    }
  }

  void storeValues(Kelompok kelompok) {
    // if there textformfield is empty
    if (textEditingControllers.any((element) => element.text.isEmpty)) {
      debugPrint(textEditingControllers.toString());
      OneContext().showDialog(
        builder: (_) => AlertDialog(
          title: const Text("Error"),
          content: const Text("Mohon isi semua nilai"),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(_);
              },
              child: const Text(
                "OK",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
      return;
    }
    OneContext().showDialog(
      builder: (_) => AlertDialog(
        title: const Text("Success"),
        content: const Text("Apakah anda yakin ingin mengirim nilai?"),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(_);
            },
            child: const Text(
              "Tidak",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(_);
              BlocProvider.of<AssessmentBloc>(context).add(
                StoreAssessmentPoints(
                  kelompok: kelompok,
                  assessmentStudentList: assessmentStudentList,
                ),
              );
              // remove all texteditingcontroller
              textEditingControllers = [];
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color(0xFF3493C9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.0),
              ),
            ),
            child: const Text('Ya'),
          ),
        ],
      ),
    );
  }
}
