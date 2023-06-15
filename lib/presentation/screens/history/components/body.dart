import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../../data/models/request_model.dart';
import '../../../../../routes/app_routers.dart';
import '../../../blocs/history/history_bloc.dart';
import '../../../blocs/history/history_event.dart';
import '../../../widgets/background.dart';

class Body extends StatelessWidget {
  final RequestList requestList;
  const Body({super.key, required this.requestList});

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        children: <Widget>[
          // Header
          Container(
            padding: const EdgeInsets.all(15.0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Histori Bimbingan',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Righteous'),
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
                child: RefreshIndicator(
                  onRefresh: () async {
                    BlocProvider.of<HistoryBloc>(context)
                        .add(const GetDataEvent());
                  },
                  child: requestList.isEmpty
                      ? const Center(
                          child: Text(
                            'Anda belum pernah melakukan bimbingan atau mengajukan bimbingan',
                          ),
                        )
                      : SingleChildScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: requestList.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.only(
                                  top: 10,
                                  left: 10,
                                  right: 10,
                                ),
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        AutoRouter.of(context).push(
                                            DetailGuidanceRoute(
                                                request: requestList[index]));
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(10.0),
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFE5E5E5),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(15),
                                          ),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: 70,
                                              child: Text(
                                                // Parse date to string "day, date month year"
                                                DateFormat('EEE, d MMM yyyy')
                                                    .format(
                                                  requestList[index].waktu!,
                                                ),
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 10, right: 10),
                                              width: 1,
                                              height: 50,
                                              color: const Color(0xFF3493C9),
                                            ),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    requestList[index]
                                                        .description,
                                                    style: const TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 5),
                                                  Row(
                                                    children: <Widget>[
                                                      const Icon(
                                                        Icons.location_on,
                                                        color:
                                                            Color(0xFF3493C9),
                                                        size: 12,
                                                      ),
                                                      Text(
                                                        requestList[index]
                                                            .ruangan!
                                                            .name,
                                                        style: const TextStyle(
                                                          fontSize: 12,
                                                          color:
                                                              Color(0xFF6B6B6B),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.all(4),
                                              decoration: BoxDecoration(
                                                // if status is approve, color is blue, if reject, color is red, else color is yellow
                                                color: requestList[index]
                                                            .status ==
                                                        'approve'
                                                    ? const Color(0xFF3493C9)
                                                    : requestList[index]
                                                                .status ==
                                                            'reject'
                                                        ? const Color(
                                                            0xFFE74C3C)
                                                        : const Color(
                                                            0xFFEDCB19),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Text(
                                                // if status is approve, text is "Disetujui", if reject, text is "Ditolak", else if status is reschedule, text is "Reschedule", else text is "Menunggu"
                                                requestList[index].status ==
                                                        'approve'
                                                    ? 'Disetujui'
                                                    : requestList[index]
                                                                .status ==
                                                            'reject'
                                                        ? 'Ditolak'
                                                        : requestList[index]
                                                                    .status ==
                                                                'reschedule'
                                                            ? 'Reschedule'
                                                            : 'Menunggu',
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                        top: 20,
                                        bottom: 10,
                                      ),
                                      height: 2,
                                      color: const Color(0xFFC4C4C4),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
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
