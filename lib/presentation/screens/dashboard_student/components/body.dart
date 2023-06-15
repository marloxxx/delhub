import 'package:delhub/presentation/screens/dashboard_student/components/total_guidance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../../data/models/request_model.dart';
import '../../../../data/models/user_model.dart';

import '../../../blocs/dashboard_student/dashboard_student_bloc.dart';
import '../../../blocs/dashboard_student/dashboard_student_event.dart';
import '../../../widgets/background.dart';
import 'activity.dart';
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
                          user.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Righteous',
                          ),
                        ),
                        Text(
                          user.mahasiswa!.kelompok?.topik ??
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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                            height: 150.0,
                            aspectRatio: 16 / 9,
                            viewportFraction: 1,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            enlargeFactor: 0.3,
                            scrollDirection: Axis.horizontal),
                        items: [
                          'assets/images/1.jpg',
                          'assets/images/2.jpg',
                          'assets/images/3.JPG',
                          'assets/images/4.JPG',
                          'assets/images/5.JPG',
                          // Add more image paths here
                        ].map((item) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, right: 15.0, top: 20.0),
                            child: Container(
                              height: 150.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(item),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      Activity(user),
                      TotalGuidance(
                        requestList: requestList,
                      ),
                      RecordGuidance(requestList),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
