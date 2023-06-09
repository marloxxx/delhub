import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../routes/app_routers.dart';
import '../../../../data/models/request_model.dart';
import '../../../blocs/dashboard_student/dashboard_student_bloc.dart';
import '../../../blocs/dashboard_student/dashboard_student_event.dart';

class RecordGuidance extends StatelessWidget {
  final RequestList requestList;
  const RecordGuidance(
    this.requestList, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            AutoRouter.of(context).push(
              GuidanceStudentRoute(),
            );
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Bimbingan',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF3493C9),
                  size: 15,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 200,
          child: requestList.isEmpty
              ? const Center(
                  child: Text('Tidak ada data'),
                )
              : ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: requestList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        AutoRouter.of(context)
                            .push(
                              DetailGuidanceRoute(
                                request: requestList[index],
                              ),
                            )
                            .then((value) =>
                                BlocProvider.of<DashboardStudentBloc>(context)
                                    .add(const GetDataEvent()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        margin: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 5.0, bottom: 5.0),
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
                              width: 70,
                              child: Text(
                                requestList[index].waktu.toString(),
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
                              children: <Widget>[
                                Text(
                                  requestList[index].description,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  children: <Widget>[
                                    const Icon(
                                      Icons.location_on,
                                      color: Color(0xFF3493C9),
                                      size: 12,
                                    ),
                                    Text(
                                      requestList[index].ruangan!.name,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF6B6B6B),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                            Container(
                              padding: const EdgeInsets.all(3.5),
                              decoration: BoxDecoration(
                                color: requestList[index].status == 'approved'
                                    ? const Color(0xFF3493C9)
                                    : requestList[index].status == 'Ditolak'
                                        ? const Color(0xFFE74C3C)
                                        : const Color(0xFFEDCB19),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                requestList[index].status == 'approved'
                                    ? 'Disetujui'
                                    : requestList[index].status == 'Ditolak'
                                        ? 'Ditolak'
                                        : 'Menunggu',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
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
    );
  }
}
