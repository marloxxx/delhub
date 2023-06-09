import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/models/request_model.dart';
import '../../../../data/models/user_model.dart';

import '../../../blocs/dashboard_student/dashboard_student_bloc.dart';
import '../../../blocs/dashboard_student/dashboard_student_event.dart';
import '../../../widgets/background.dart';
import 'activity.dart';
import 'announcement.dart';
import 'record_guidance.dart';

class Body extends StatelessWidget {
  final User user;
  final List<Request> requestList;
  const Body({super.key, required this.user, required this.requestList});

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        children: [
          // Header
          SizedBox(
            height: 100,
            child: Row(
              children: [
                // Profile Picture
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage('assets/icons/account_profile.png'),
                    backgroundColor: Colors.white,
                  ),
                ),
                // User Name and Role
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          // if user.mahasiswa.kelompok.name == null then "Belum ada kelompok"
                          user.mahasiswa!.kelompok == null
                              ? "Belum ada kelompok"
                              : user.mahasiswa!.kelompok!.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Righteous',
                          ),
                        ),
                        Text(
                          user.mahasiswa!.prodi,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Logout Button
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: IconButton(
                    onPressed: () {
                      BlocProvider.of<DashboardStudentBloc>(context)
                          .add(const LogoutEvent());
                    },
                    icon: const Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                  ),
                ),
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
                child: Column(
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 20),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, right: 15.0),
                          child: Container(
                            height: 100, // Set the desired height to 100 pixels
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/visi_misi.jpg'), // Replace with your image path
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Activity(user),
                    RecordGuidance(requestList),
                    //Announcement(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
