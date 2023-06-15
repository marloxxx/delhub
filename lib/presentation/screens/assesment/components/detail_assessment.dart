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

@RoutePage(name: 'DetailAssessmentRoute')
class DetailAssessment extends StatefulWidget {
  final Kelompok kelompok;
  final AssessmentPoint assessmentPoint;
  const DetailAssessment(
      {Key? key, required this.kelompok, required this.assessmentPoint})
      : super(key: key);

  @override
  State<DetailAssessment> createState() => _DetailAssessmentState();
}

class _DetailAssessmentState extends State<DetailAssessment> {
  late MahasiswaList mahasiswaList;
  late AssessmentComponentList assessmentComponentList;
  late Mahasiswa mahasiswa;
  List<Map<String, dynamic>> finalValueList = [];
  AssessmentStudentList assessmentStudentList = [];
  late AssessmentStudent assessmentStudent;
  var textEditingControllers = <TextEditingController>[];
  @override
  void initState() {
    super.initState();
    mahasiswaList = widget.kelompok.mahasiswa!;
    assessmentComponentList = widget.assessmentPoint.components!;
    mahasiswa = mahasiswaList[0];
    // set text editing controller for each textformfield
    for (var i = 0; i < assessmentComponentList.length; i++) {
      textEditingControllers.add(TextEditingController());
    }
    setInitialValueList();
    // assessmentStudent where mahasiswa nim and assessment point id is same
    assessmentStudent = assessmentStudentList.firstWhere(
        (element) =>
            element.mahasiswa.nim == mahasiswa.nim &&
            element.assessmentPoint.id == widget.assessmentPoint.id,
        orElse: () => AssessmentStudent(
              id: 0,
              kelompok: widget.kelompok,
              assessmentPoint: widget.assessmentPoint,
              score: 0,
              mahasiswa: mahasiswa,
              status: '',
              detailAssessmentStudent: [],
            ));
  }

// set value in valueList by mahasiswa id and assessment component id
  void setValue(
      String mahasiswaNim, int assessmentComponentId, int value) async {
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

    debugPrint(assessmentStudent.toString());
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
          },
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
                                                  if (int.parse(value) >
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
                                                        int.parse(value),
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
                                              fontSize: 25,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Center(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      storeValues(widget.kelompok);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: Colors.white,
                                      backgroundColor: const Color(0xFF3493C9),
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
      // Set initial value for each textformfield, if value is 0 then set ''
      for (var i = 0; i < assessmentComponentList.length; i++) {
        var detailAssessmentStudent =
            assessmentStudent.detailAssessmentStudent!.firstWhere(
          (element) =>
              element.assessmentComponent!.id ==
                  assessmentComponentList[i].id &&
              element.assessmentStudent?.mahasiswa.nim == mahasiswa.nim &&
              element.assessmentStudent?.assessmentPoint.id ==
                  widget.assessmentPoint.id,
          orElse: () => DetailAssessmentStudent(
            id: 0,
            assessmentStudent: assessmentStudent,
            assessmentComponent: assessmentComponentList[i],
            score: 0,
          ),
        );

        var scoreText = detailAssessmentStudent.score == 0
            ? ''
            : detailAssessmentStudent.score.toString();
        textEditingControllers[i].text = scoreText;
      }
    });
  }

  calculateFinalValue(String mahasiswaNim, int assessmentPointId) {
    int finalValue = 0;
    // calculate final value for each mahasiswa nim and assessmentPoint id, get value from valueList where mahasiswa nim, assessment component id and assessment point id is same
    for (var i = 0; i < assessmentComponentList.length; i++) {
      var detailAssessmentStudent =
          assessmentStudent.detailAssessmentStudent!.firstWhere(
        (element) =>
            element.assessmentComponent?.id == assessmentComponentList[i].id &&
            element.assessmentStudent?.mahasiswa.nim == mahasiswa.nim &&
            element.assessmentStudent!.assessmentPoint.id ==
                widget.assessmentPoint.id,
        orElse: () => DetailAssessmentStudent(
          id: 0,
          assessmentStudent: assessmentStudent,
          assessmentComponent: assessmentComponentList[i],
          score: 0,
        ),
      );

      finalValue += detailAssessmentStudent.score as int;
    }
    return finalValue;
  }

  void setInitialValueList() {
    assessmentStudentList = mahasiswaList.map((mahasiswa) {
      final detailAssessmentStudents = assessmentComponentList.map((component) {
        return DetailAssessmentStudent(
          id: 0,
          assessmentStudent: null, // Will be assigned later
          assessmentComponent: component,
          score: 0,
        );
      }).toList();

      return AssessmentStudent(
        id: 0,
        kelompok: widget.kelompok,
        assessmentPoint: widget.assessmentPoint,
        score: 0,
        mahasiswa: mahasiswa,
        status: '',
        detailAssessmentStudent: detailAssessmentStudents,
      );
    }).toList();

    // set initial finalValueList for each mahasiswa nim and assessment point id
    for (var i = 0; i < mahasiswaList.length; i++) {
      finalValueList.add({
        'mahasiswaNim': mahasiswaList[i].nim,
        'assessmentPointId': widget.assessmentPoint.id,
        'value': 0,
      });
    }
  }

  void storeValues(Kelompok kelompok) {
    // if there textformfield is empty
    if (textEditingControllers.any((element) => element.text == '')) {
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
    debugPrint(assessmentStudentList.toString());
    BlocProvider.of<AssessmentBloc>(context).add(
      StoreAssessmentPoints(
        kelompok: kelompok,
        assessmentStudentList: assessmentStudentList,
      ),
    );
  }
}
