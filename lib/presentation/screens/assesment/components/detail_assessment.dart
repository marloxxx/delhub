import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../../data/models/assessment_component_model.dart';
import '../../../../data/models/assessment_point_model.dart';
import '../../../../data/models/kelompok_model.dart';
import '../../../../data/models/mahasiswa_model.dart';
import '../../../widgets/background.dart';

late MahasiswaList mahasiswaList;
late AssessmentComponentList assessmentComponentList;
late Mahasiswa mahasiswa;
List<Map<String, dynamic>> valueList = [];

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
  }

// set value in valueList by mahasiswa id and assessment component id
  void setValue(int mahasiswaId, int assessmentComponentId, int value) {
    valueList.add({
      'mahasiswaId': mahasiswaId,
      'assessmentComponentId': assessmentComponentId,
      'value': value,
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
                                  setState(() {
                                    mahasiswa = newValue!;
                                    debugPrint(mahasiswa.nama);
                                  });
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
                              Container(
                                padding: const EdgeInsets.all(15.0),
                                decoration: const BoxDecoration(
                                  color: Color(0xFFE6E6E6),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Antusiasme, motivasi, inisiatif kemandirian, ketekunan dalam mengerjakaan PA',
                                            style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 220, 218, 218),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              '15',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 3,
                                  bottom: 3,
                                ),
                                height: 1,
                                color: const Color(0xFFC4C4C4),
                              ),
                              Container(
                                padding: const EdgeInsets.all(15.0),
                                decoration: const BoxDecoration(
                                  color: Color(0xFFE6E6E6),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Expanded(
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Dapat berinteraksi dan berdiskusi dengan pembimbing sehingga saling memperkaya',
                                              style: TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ]),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 220, 218, 218),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              '15',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 3,
                                  bottom: 3,
                                ),
                                height: 1,
                                color: const Color(0xFFC4C4C4),
                              ),
                              Container(
                                padding: const EdgeInsets.all(15.0),
                                decoration: const BoxDecoration(
                                  color: Color(0xFFE6E6E6),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Expanded(
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Proses Pembimbingan PA',
                                              style: TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ]),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 220, 218, 218),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              '25',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 3,
                                  bottom: 3,
                                ),
                                height: 1,
                                color: const Color(0xFFC4C4C4),
                              ),
                              Container(
                                padding: const EdgeInsets.all(15.0),
                                decoration: const BoxDecoration(
                                  color: Color(0xFFE6E6E6),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Expanded(
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Dari lingkup yang ditentukan dan ditargetkan, penguasaan konsep',
                                              style: TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ]),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 220, 218, 218),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              '15',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 3,
                                  bottom: 3,
                                ),
                                height: 1,
                                color: const Color(0xFFC4C4C4),
                              ),
                              Container(
                                padding: const EdgeInsets.all(15.0),
                                decoration: const BoxDecoration(
                                  color: Color(0xFFE6E6E6),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Expanded(
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Skill penunjang',
                                              style: TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ]),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 220, 218, 218),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              '8',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 3,
                                  bottom: 3,
                                ),
                                height: 1,
                                color: const Color(0xFFC4C4C4),
                              ),
                              Container(
                                padding: const EdgeInsets.all(15.0),
                                decoration: const BoxDecoration(
                                  color: Color(0xFFE6E6E6),
                                ),
                                child: Row(
                                  children: [
                                    const Expanded(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Text(
                                              'Nilai Akhir',
                                              style: TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ]),
                                    ),
                                    const SizedBox(width: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 220, 218, 218),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              '78',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
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
                                ],
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
}
