import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:one_context/one_context.dart';
import '../../../../data/models/assessment_component_model.dart';
import '../../../../data/models/assessment_point_model.dart';
import '../../../../data/models/kelompok_model.dart';
import '../../../../data/models/mahasiswa_model.dart';
import '../../../../services/local_data_assessment_cache.dart';
import '../../../widgets/background.dart';

late MahasiswaList mahasiswaList;
late AssessmentComponentList assessmentComponentList;
late Mahasiswa mahasiswa;
List<Map<String, dynamic>> valueList = [];
// array for final value by mahasiswa nim
List<Map<String, dynamic>> finalValueList = [];
var textEditingControllers = <TextEditingController>[];

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

    // get assessment data locally
    LocalDataAssessmentCacheService().getAssessment().then((value) {
      debugPrint(value.toString());
      //   if (value != null) {
      //     // set valueList from assessment data locally
      //     valueList = value['valueList'];
      //     // set finalValueList from assessment data locally
      //     finalValueList = value['finalValueList'];
      //     // set mahasiswa nim from assessment data locally
      //     mahasiswa = mahasiswaList
      //         .firstWhere((element) => element.nim == value['mahasiswaNim']);
      //     // set textformfield value from assessment data locally
      //     for (var i = 0; i < assessmentComponentList.length; i++) {
      //       textEditingControllers[i].text = valueList.firstWhere((element) =>
      //                   element['mahasiswaNim'] == mahasiswa.nim &&
      //                   element['assessmentComponentId'] ==
      //                       assessmentComponentList[i].id)['value'] ==
      //               0
      //           ? ''
      //           : valueList
      //               .firstWhere((element) =>
      //                   element['mahasiswaNim'] == mahasiswa.nim &&
      //                   element['assessmentComponentId'] ==
      //                       assessmentComponentList[i].id)['value']
      //               .toString();
      //     }
      //   } else {
      //     // set initial valueList for each mahasiswa nim
      //     for (var i = 0; i < mahasiswaList.length; i++) {
      //       for (var j = 0; j < assessmentComponentList.length; j++) {
      //         valueList.add({
      //           'mahasiswaNim': mahasiswaList[i].nim,
      //           'assessmentComponentId': assessmentComponentList[j].id,
      //           'value': 0,
      //         });
      //       }
      //     }
      //     // set initial finalValueList for each mahasiswa nim
      //     for (var i = 0; i < mahasiswaList.length; i++) {
      //       finalValueList.add({
      //         'mahasiswaNim': mahasiswaList[i].nim,
      //         'value': 0,
      //       });
      //     }
      // }
    });
    // set initial valueList for each mahasiswa nim
    for (var i = 0; i < mahasiswaList.length; i++) {
      for (var j = 0; j < assessmentComponentList.length; j++) {
        valueList.add({
          'mahasiswaNim': mahasiswaList[i].nim,
          'assessmentComponentId': assessmentComponentList[j].id,
          'value': 0,
        });
      }
    }
    // set initial finalValueList for each mahasiswa nim
    for (var i = 0; i < mahasiswaList.length; i++) {
      finalValueList.add({
        'mahasiswaNim': mahasiswaList[i].nim,
        'value': 0,
      });
    }
  }

// set value in valueList by mahasiswa id and assessment component id
  void setValue(String mahasiswaNim, int assessmentComponentId, int value) {
    // update valueList where mahasiswa nim and assessment component id is same
    valueList.firstWhere((element) =>
        element['mahasiswaNim'] == mahasiswaNim &&
        element['assessmentComponentId'] ==
            assessmentComponentId)['value'] = value;
    debugPrint(valueList.toString());
    // calculate final value
    finalValueList.firstWhere(
            (element) => element['mahasiswaNim'] == mahasiswaNim)['value'] =
        calculateFinalValue(mahasiswaNim);
    // save assessment data locally
    LocalDataAssessmentCacheService().saveAssessment({
      'valueList': valueList,
      'finalValueList': finalValueList,
      'mahasiswaNim': mahasiswaNim,
      'assessmentPointId': widget.assessmentPoint.id,
    });
  }

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
                            margin: const EdgeInsets.only(left: 15, right: 15),
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
                                                  data: assessmentComponentList[
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
                                                color: const Color(0xFF3493C9),
                                              ),
                                            ),
                                            child: TextFormField(
                                              textAlign: TextAlign.center,
                                              controller:
                                                  textEditingControllers[index],
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: const InputDecoration(
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
                                                    builder: (_) => AlertDialog(
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
                                                              color:
                                                                  Colors.white,
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
                                            finalValueList
                                                .firstWhere((element) =>
                                                    element['mahasiswaNim'] ==
                                                    mahasiswa.nim)['value']
                                                .toString(),
                                            style: const TextStyle(
                                              fontSize: 25,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                              Center(
                                child: ElevatedButton(
                                  onPressed: () {
                                    // if there textformfield is empty
                                    if (textEditingControllers
                                        .any((element) => element.text == '')) {
                                      OneContext().showDialog(
                                        builder: (_) => AlertDialog(
                                          title: const Text("Error"),
                                          content: const Text(
                                              "Mohon isi semua nilai"),
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
                                        content: const Text(
                                            "Apakah anda yakin ingin mengirim nilai?"),
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
                                              backgroundColor:
                                                  const Color(0xFF3493C9),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(7.0),
                                              ),
                                            ),
                                            child: const Text('Ya'),
                                          ),
                                        ],
                                      ),
                                    );
                                    debugPrint(valueList.toString());
                                  },
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: const Color(0xFF3493C9),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7.0),
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
    );
  }

  void changeMahasiswa(Mahasiswa? newValue) {
    return setState(() {
      mahasiswa = newValue!;
      // set initial value for each textformfield, if value 0 then set ''
      for (var i = 0; i < assessmentComponentList.length; i++) {
        textEditingControllers[i].text = valueList.firstWhere((element) =>
                    element['mahasiswaNim'] == mahasiswa.nim &&
                    element['assessmentComponentId'] ==
                        assessmentComponentList[i].id)['value'] ==
                0
            ? ''
            : valueList
                .firstWhere((element) =>
                    element['mahasiswaNim'] == mahasiswa.nim &&
                    element['assessmentComponentId'] ==
                        assessmentComponentList[i].id)['value']
                .toString();
      }
    });
  }

  calculateFinalValue(String mahasiswaNim) {
    int finalValue = 0;
    for (var i = 0; i < valueList.length; i++) {
      if (valueList[i]['mahasiswaNim'] == mahasiswaNim) {
        finalValue += valueList[i]['value'] as int;
      }
    }
    return finalValue;
  }
}
