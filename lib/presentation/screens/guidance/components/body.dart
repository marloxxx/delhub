import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../data/models/request_model.dart';
import '../../../../data/models/user_model.dart';
import '../../../../routes/app_routers.dart';
import '../../../../shared/theme.dart';
import '../../../blocs/detail_guidance/detail_guidance_bloc.dart';
import '../../../blocs/detail_guidance/detail_guidance_event.dart';
import '../../../widgets/background.dart';

class Body extends StatefulWidget {
  final Request request;
  final User user;

  const Body({
    Key? key,
    required this.request,
    required this.user,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Scaffold(
        backgroundColor: Colors.transparent,

        // Body of Dashboard
        body: Column(
          children: <Widget>[
            // Header
            Container(
              padding: const EdgeInsets.all(15.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Detail Bimbingan',
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
                            child: Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF3493C9),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: const Icon(
                                    Icons.chrome_reader_mode,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  'Detail Bimbingan',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 15.0, bottom: 15.0),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFE6E6E6),
                              borderRadius: BorderRadius.all(
                                Radius.circular(33.5),
                              ),
                            ),
                            child: Table(
                              columnWidths: const {
                                0: FlexColumnWidth(),
                                1: FlexColumnWidth(),
                              },
                              children: [
                                if (widget.request.kelompok != null)
                                  TableRow(
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade100,
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(25),
                                        topRight: Radius.circular(25),
                                      ),
                                    ),
                                    children: [
                                      TableCell(
                                        child: Container(
                                          padding: const EdgeInsets.only(
                                              top: 10.0, left: 15.0),
                                          child: const Text(
                                            'Pemohon',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Container(
                                          padding: const EdgeInsets.all(10.0),
                                          child:
                                              // check null
                                              Text(widget
                                                  .request.kelompok!.name),
                                        ),
                                      ),
                                    ],
                                  ),
                                TableRow(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                  ),
                                  children: [
                                    TableCell(
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            top: 10.0, left: 15.0),
                                        child: const Text(
                                          'Rencana Bimbingan',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: Container(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          // show date and time
                                          DateFormat('dd MMMM yyyy HH:mm')
                                              .format(widget.request.waktu!),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                  ),
                                  children: [
                                    TableCell(
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            top: 10.0, left: 15.0),
                                        child: const Text(
                                          'Keperluan Bimbingan',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: Container(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(widget.request.description),
                                      ),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                  ),
                                  children: [
                                    TableCell(
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            top: 10.0, left: 15.0),
                                        child: const Text(
                                          "Dosen Pembimbing",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: Container(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text(widget.request.kelompok!
                                              .pembimbing!.first.name)),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                  ),
                                  children: [
                                    TableCell(
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            top: 10.0, left: 15.0),
                                        child: const Text(
                                          'Lokasi',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: Container(
                                        padding: const EdgeInsets.all(10.0),
                                        child:
                                            Text(widget.request.ruangan!.name),
                                      ),
                                    ),
                                  ],
                                ),
                                // status
                                TableRow(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                  ),
                                  children: [
                                    TableCell(
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            top: 10.0, left: 15.0),
                                        child: const Text(
                                          'Status',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: Container(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          // if is done is true, show done
                                          widget.request.is_done
                                              ? 'Selesai'
                                              : widget.request.status ==
                                                      'waiting'
                                                  ? 'Menunggu'
                                                  : widget.request.status ==
                                                          'approve'
                                                      ? 'Disetujui'
                                                      : widget.request.status ==
                                                              'reject'
                                                          ? 'Ditolak'
                                                          : widget.request
                                                                      .status ==
                                                                  'reschedule'
                                                              ? 'Dijadwalkan ulang'
                                                              : 'Selesai',
                                          style: TextStyle(
                                            color:
                                                // if is done is true, show done
                                                widget.request.is_done
                                                    ? Colors.green
                                                    : widget.request.status ==
                                                            'approve'
                                                        ? primary
                                                        : widget.request
                                                                    .status ==
                                                                'reject'
                                                            ? Colors.red
                                                            : warning,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                if (widget.request.file.isNotEmpty)
                                  TableRow(
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade100,
                                    ),
                                    children: [
                                      TableCell(
                                        child: Container(
                                          padding: const EdgeInsets.only(
                                              top: 10.0, left: 15.0),
                                          child: const Text(
                                            'Dokumentasi',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Container(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Image.network(
                                            widget.request.file,
                                            width: 100,
                                            height: 100,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                // if result is not null, show result
                                if (widget.request.result.isNotEmpty)
                                  TableRow(
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade100,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(25),
                                        bottomRight: Radius.circular(25),
                                      ),
                                    ),
                                    children: [
                                      TableCell(
                                        child: Container(
                                          padding: const EdgeInsets.only(
                                              top: 10.0, left: 15.0),
                                          child: const Text(
                                            'Hasil Bimbingan',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Container(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text(widget.request.result),
                                        ),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ),
                        // if user role is dosen
                        widget.user.role == 'dosen'
                            ? widget.request.status == 'waiting' ||
                                    widget.request.status == 'reschedule'
                                ? Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          final newRequest = Request(
                                            id: widget.request.id,
                                            status: 'approve',
                                            waktu: null,
                                            result: '',
                                          );
                                          BlocProvider.of<DetailGuidanceBloc>(
                                                  context)
                                              .add(
                                            UpdateDataEvent(
                                              request: newRequest,
                                              file: null,
                                            ),
                                          );
                                          BlocProvider.of<DetailGuidanceBloc>(
                                                  context)
                                              .add(GetDataEvent(
                                                  request: widget.request));
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
                                        child: const Text('Terima'),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          final newRequest = Request(
                                            id: widget.request.id,
                                            status: 'reject',
                                            waktu: null,
                                            result: '',
                                          );
                                          BlocProvider.of<DetailGuidanceBloc>(
                                                  context)
                                              .add(
                                            UpdateDataEvent(
                                              request: newRequest,
                                              file: null,
                                            ),
                                          );
                                          BlocProvider.of<DetailGuidanceBloc>(
                                                  context)
                                              .add(GetDataEvent(
                                                  request: widget.request));
                                        },
                                        style: ElevatedButton.styleFrom(
                                          foregroundColor: Colors.white,
                                          backgroundColor:
                                              const Color(0xFFD80000),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(7.0),
                                          ),
                                        ),
                                        child: const Text('Tolak'),
                                      ),
                                      // if date has passed don't show reschedule button
                                      widget.request.waktu!
                                              .isBefore(DateTime.now())
                                          ? const SizedBox()
                                          : ElevatedButton(
                                              onPressed: () {
                                                AutoRouter.of(context)
                                                    .push(
                                                  RescheduleGuidanceRoute(
                                                      user: widget.user,
                                                      request: widget.request),
                                                )
                                                    .then((value) {
                                                  BlocProvider.of<
                                                              DetailGuidanceBloc>(
                                                          context)
                                                      .add(GetDataEvent(
                                                          request:
                                                              widget.request));
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                foregroundColor: Colors.white,
                                                backgroundColor:
                                                    const Color(0xFFFFC93C),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          7.0),
                                                ),
                                              ),
                                              child: const Text('Jadwal Ulang'),
                                            ),
                                    ],
                                  )
                                : (widget.request.status == 'approve' ||
                                            widget.request.status ==
                                                'reschedule') &&
                                        widget.request.waktu!
                                            .isBefore(DateTime.now())
                                    ? widget.request.is_done == false
                                        ? ElevatedButton(
                                            onPressed: () {
                                              AutoRouter.of(context).push(
                                                StatusUploadRoute(
                                                    request: widget.request),
                                              );
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
                                            child: const Text('Selesai'),
                                          )
                                        : const SizedBox()
                                    : const SizedBox()
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // check if status is approved and waktu has passed
                                  widget.request.status == 'approve'
                                      ? widget.request.is_done == false &&
                                              widget.request.waktu!
                                                  .isBefore(DateTime.now())
                                          ? ElevatedButton(
                                              onPressed: () {
                                                AutoRouter.of(context).push(
                                                    StatusUploadRoute(
                                                        request:
                                                            widget.request));
                                              },
                                              style: ElevatedButton.styleFrom(
                                                foregroundColor: Colors.white,
                                                backgroundColor:
                                                    const Color(0xFF3493C9),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          7.0),
                                                ),
                                              ),
                                              child: const Text('Selesai'),
                                            )
                                          : const SizedBox()
                                      : ElevatedButton(
                                          onPressed: () {
                                            AutoRouter.of(context).push(
                                              RescheduleGuidanceRoute(
                                                  user: widget.user,
                                                  request: widget.request),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            foregroundColor: Colors.white,
                                            backgroundColor: warning,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7.0),
                                            ),
                                          ),
                                          child: const Text('Jadwal Ulang'),
                                        ),
                                ],
                              ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
