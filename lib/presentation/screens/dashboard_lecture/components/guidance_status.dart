import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/models/request_model.dart';
import '../../../../routes/app_routers.dart';
import '../../../../shared/theme.dart';
import '../../../blocs/dashboard_lecture/dashboard_lecture_bloc.dart';
import '../../../blocs/dashboard_lecture/dashboard_lecture_event.dart';

class GuidanceStatus extends StatelessWidget {
  final RequestList requestList;
  const GuidanceStatus({
    Key? key,
    required this.requestList,
  }) : super(key: key);

  // get request where status == 'pending'
  List<Request> get pendingRequest {
    return requestList.where((element) => element.status == 'waiting').toList();
  }

  // get request where status == 'approved'
  List<Request> get approvedRequest {
    return requestList
        .where((element) =>
            element.status == 'approve' || element.status == 'reschedule')
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              AutoRouter.of(context).push(
                GuidanceStudentRoute(),
              );
            },
            child: Container(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Status Bimbingan',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // set pending request on left side and approved request on right side
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  width: MediaQuery.of(context).size.width / 2.2,
                  height: 200,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: pendingRequest.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          AutoRouter.of(context)
                              .push(
                                DetailGuidanceRoute(
                                  request: pendingRequest[index],
                                ),
                              )
                              .then(
                                (value) =>
                                    BlocProvider.of<DashboardLectureBloc>(
                                            context)
                                        .add(const GetDataEvent()),
                              );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          margin: const EdgeInsets.only(bottom: 5.0),
                          decoration: const BoxDecoration(
                            color: Color(0xFFE5E5E5),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 40,
                                child: Text(
                                  // show only time
                                  pendingRequest[index].waktu.toString(),
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 10, right: 10),
                                width: 1,
                                height: 50,
                                color: const Color(0xFF3493C9),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // limit text to 1 lines
                                    Text(
                                      pendingRequest[index].description,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.location_on,
                                          color: Color(0xFF3493C9),
                                          size: 12,
                                        ),
                                        Text(
                                          pendingRequest[index].ruangan!.name,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF6B6B6B),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Container(
                                      padding: const EdgeInsets.all(3.5),
                                      decoration: BoxDecoration(
                                        color: warning,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Text(
                                        'Menunggu',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const VerticalDivider(
                  color: Color(0xFF3493C9),
                  thickness: 1,
                  width: 1,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: MediaQuery.of(context).size.width / 2.2,
                  height: 200,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: approvedRequest.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          AutoRouter.of(context)
                              .push(
                                DetailGuidanceRoute(
                                  request: approvedRequest[index],
                                ),
                              )
                              .then(
                                (value) =>
                                    BlocProvider.of<DashboardLectureBloc>(
                                            context)
                                        .add(const GetDataEvent()),
                              );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          margin: const EdgeInsets.only(bottom: 5.0),
                          decoration: const BoxDecoration(
                            color: Color(0xFFE5E5E5),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 40,
                                child: Text(
                                  // show only time
                                  '${approvedRequest[index].waktu!.hour}:${approvedRequest[index].waktu!.minute}',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 10, right: 10),
                                width: 1,
                                height: 50,
                                color: const Color(0xFF3493C9),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      approvedRequest[index].kelompok!.name,
                                      style: const TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 5),

                                    // limit text to 1 lines
                                    Text(
                                      approvedRequest[index].description,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.location_on,
                                          color: Color(0xFF3493C9),
                                          size: 12,
                                        ),
                                        Text(
                                          approvedRequest[index].ruangan!.name,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF6B6B6B),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Container(
                                      padding: const EdgeInsets.all(3.5),
                                      decoration: BoxDecoration(
                                        color: primary,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Text(
                                        'Disetujui',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
