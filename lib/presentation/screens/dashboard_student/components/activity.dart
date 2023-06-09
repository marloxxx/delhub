import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/models/user_model.dart';
import '../../../../routes/app_routers.dart';
import '../../../blocs/dashboard_student/dashboard_student_bloc.dart';
import '../../../blocs/dashboard_student/dashboard_student_event.dart';

class Activity extends StatefulWidget {
  final User user;
  const Activity(
    this.user, {
    Key? key,
  }) : super(key: key);

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: <Widget>[
              Text(
                'Aktivitas',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              color: Color(0xFFE5E5E5),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // if kelompok is null, then show dialog
                    if (widget.user.mahasiswa!.kelompok == null) {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text("Error"),
                          content: const Text(
                              "Anda belum memiliki kelompok, silahkan membuat kelompok terlebih dahulu"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("OK"),
                            ),
                          ],
                        ),
                      );
                    } else {
                      AutoRouter.of(context)
                          .push(RequestGuidanceRoute(user: widget.user))
                          .then((value) =>
                              BlocProvider.of<DashboardStudentBloc>(context)
                                  .add(const GetDataEvent()));
                    }
                  },
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF3493C9),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: const EdgeInsets.all(5),
                        child: const Icon(
                          Icons.note_add_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      const Text(
                        'Request\nBimbingan',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
