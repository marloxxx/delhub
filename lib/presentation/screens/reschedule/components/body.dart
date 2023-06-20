import 'package:auto_route/auto_route.dart';
import 'package:delhub/presentation/blocs/reschedule/reschedule_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/models/request_model.dart';
import '../../../../data/models/room_model.dart';
import '../../../blocs/reschedule/reschedule_event.dart';
import '../../../widgets/background.dart';

class Body extends StatefulWidget {
  final Request request;
  final RoomList roomList;
  const Body({super.key, required this.request, required this.roomList});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();
  DateTime? _date;
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _lecturerController = TextEditingController();

  Room? _selectedRoom;

  Future<TimeOfDay?> _pickTime(BuildContext context) async {
    final TimeOfDay? t = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    return t;
  }

  Future<DateTime?> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _date ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _date) {
      setState(() {
        _date = picked;
      });
    }
    return picked;
  }

  Future<void> _pickDateTime(BuildContext context) async {
    final DateTime? pickedDate = await _selectDate(context);
    final TimeOfDay? pickedTime = await _pickTime(context);
    setState(() {
      if (pickedDate != null && pickedTime != null) {
        _dateController.text =
            "${"${pickedDate.toLocal()}".split(' ')[0]} ${pickedTime.format(context)}";
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _dateController.text = widget.request.waktu.toString().substring(0, 16);
    _lecturerController.text = widget.request.kelompok!.pembimbing!.first.name;
    _selectedRoom = widget.request.ruangan;
  }

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // Body of Dashboard
        body: Column(
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(15.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Permintaan Bimbingan',
                    style: TextStyle(
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
                                  'Permintaan Bimbingan',
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
                          padding: const EdgeInsets.all(15.0),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                const Row(
                                  children: [
                                    Text(
                                      'Rencana Bimbingan',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                TextFormField(
                                  controller: _dateController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Mohon isi tanggal bimbingan';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Isi Tanggal Bimbingan',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(17.0),
                                    ),
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        _pickDateTime(context);
                                      },
                                      icon: const Icon(Icons.calendar_today),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Row(
                                  children: [
                                    Text(
                                      'Keperluan Bimbingan',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                TextField(
                                  enabled: false,
                                  // set value of text field
                                  controller: TextEditingController(
                                      text: widget.request.description),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(17.0),
                                    ),
                                  ),
                                  minLines: 6,
                                  keyboardType: TextInputType.multiline,
                                  maxLines: 6,
                                ),
                                const SizedBox(height: 10),
                                const Row(
                                  children: [
                                    Text(
                                      'Dosen Pembimbing',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                TextField(
                                  readOnly: true,
                                  controller: _lecturerController,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(17.0),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Row(
                                  children: [
                                    Text(
                                      'Lokasi',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                // dropdown button
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(17.0),
                                  ),
                                  child: DropdownButtonFormField(
                                    isExpanded: true,
                                    hint: const Text('Pilih Lokasi'),
                                    value: _selectedRoom,
                                    onChanged: (newValue) {
                                      setState(() {
                                        _selectedRoom = newValue;
                                      });
                                    },
                                    items: widget.roomList.map((room) {
                                      return DropdownMenuItem(
                                        value: room,
                                        child: Text(room.name),
                                      );
                                    }).toList(),
                                    validator: (value) {
                                      if (value == null) {
                                        return 'Mohon pilih lokasi';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          AutoRouter.of(context).pop();
                                        },
                                        style: ElevatedButton.styleFrom(
                                          foregroundColor: Colors.white,
                                          backgroundColor:
                                              const Color(0xFFD80000),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(32.0),
                                          ),
                                        ),
                                        child: const Text('Batal'),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            updateRequest(widget.request);
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                          foregroundColor: Colors.white,
                                          backgroundColor:
                                              const Color(0xFF3493C9),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(32.0),
                                          ),
                                        ),
                                        child: const Text('Kirim'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
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

  void updateRequest(Request request) {
    final newRequest = Request(
      id: request.id,
      waktu: DateTime.parse(_dateController.text),
      ruangan: _selectedRoom,
      status: 'reschedule',
    );
    debugPrint(newRequest.toString());
    BlocProvider.of<RescheduleBloc>(context)
        .add(UpdateDataEvent(request: newRequest));
  }
}
