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
  final TextEditingController _dateController = TextEditingController();

  Future<TimeOfDay?> _pickTime(BuildContext context) async {
    return await showTimePicker(
      context: context,
      initialTime: widget.request.waktu != null
          ? TimeOfDay.fromDateTime(widget.request.waktu!)
          : TimeOfDay.now(),
    );
  }

  Future<DateTime?> _selectDate(BuildContext context) async {
    return await showDatePicker(
      context: context,
      initialDate: widget.request.waktu ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
  }

  Future<void> _pickDateTime(BuildContext context) async {
    final pickedDate = await _selectDate(context);
    final pickedTime = await _pickTime(context);

    if (pickedDate != null && pickedTime != null) {
      setState(() {
        _dateController.text =
            "${"${pickedDate.toLocal()}".split(' ')[0]} ${pickedTime.format(context)}";
        BlocProvider.of<DetailGuidanceBloc>(context).add(
          UpdateDataEvent(
            id: widget.request.id,
            status: 'reschedule',
            waktu: _dateController.text,
            file: null,
          ),
        );
      });
    }
  }

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
                                            Text(widget.request.kelompok!.name),
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
                                          'Kelompok',
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
                                            Text(widget.request.kelompok!.name),
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
                                          DateFormat('EEEE, d MMMM yyyy')
                                              .format(widget.request.waktu!)
                                              .toString(),
                                        ),
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
                                    color: Colors.grey.shade100,
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
                                              .pembimbing!.name)),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
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
                              ],
                            ),
                          ),
                        ),
                        widget.user.role == 'dosen' &&
                                widget.request.status == 'waiting'
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      BlocProvider.of<DetailGuidanceBloc>(
                                              context)
                                          .add(
                                        UpdateDataEvent(
                                          id: widget.request.id,
                                          status: 'approve',
                                          waktu: null,
                                          file: null,
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: Colors.white,
                                      backgroundColor: const Color(0xFF3493C9),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                      ),
                                    ),
                                    child: const Text('Terima'),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      BlocProvider.of<DetailGuidanceBloc>(
                                              context)
                                          .add(
                                        UpdateDataEvent(
                                          id: widget.request.id,
                                          status: 'reject',
                                          waktu: null,
                                          file: null,
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: Colors.white,
                                      backgroundColor: const Color(0xFFD80000),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                      ),
                                    ),
                                    child: const Text('Tolak'),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      _pickDateTime(context);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: Colors.white,
                                      backgroundColor: const Color(0xFFFFC93C),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                      ),
                                    ),
                                    child: const Text('Reschedule'),
                                  ),
                                ],
                              )
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // check if status is approved and waktu has passed
                                  widget.request.status == 'approved' &&
                                          widget.request.waktu!
                                              .isBefore(DateTime.now())
                                      ? widget.request.is_done == false
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
                                            _pickDateTime(context);
                                          },
                                          style: ElevatedButton.styleFrom(
                                            foregroundColor: Colors.white,
                                            backgroundColor: warning,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7.0),
                                            ),
                                          ),
                                          child: const Text('Reschedule'),
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
