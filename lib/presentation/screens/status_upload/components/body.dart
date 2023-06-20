import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:one_context/one_context.dart';

import '../../../../data/models/dropped_file_model.dart';
import '../../../../data/models/request_model.dart';
import '../../../blocs/status_upload/status_upload_bloc.dart';
import '../../../blocs/status_upload/status_upload_event.dart';
import '../../../widgets/background.dart';

class Body extends StatefulWidget {
  final Request request;
  const Body({super.key, required this.request});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  DroppedFile? droppedFile;
  FilePickerResult? result;
  bool isHighLighted = false;
  final TextEditingController _controller = TextEditingController();
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
                children: <Widget>[
                  Text(
                    'Detail Bimbingan',
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
                          margin: const EdgeInsets.all(10.0),
                          padding: const EdgeInsets.all(15.0),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(33.5),
                            ),
                          ),
                          child: Column(
                            children: [
                              const Row(
                                children: [
                                  Text(
                                    'Dokumentasi',
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
                                // set value of text field
                                controller: TextEditingController(
                                  text: DateFormat('dd MMMM yyyy HH:mm')
                                      .format(widget.request.waktu!),
                                ),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(17.0),
                                  ),
                                  suffixIcon: const Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.calendar_today),
                                      SizedBox(width: 10),
                                      Icon(Icons.access_time),
                                      SizedBox(width: 10),
                                    ],
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
                              // textformfield hasil bimbingan
                              const Row(
                                children: [
                                  Text(
                                    'Hasil Bimbingan',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                controller: _controller,
                                decoration: InputDecoration(
                                  hintText: 'Hasil Bimbingan',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(17.0),
                                  ),
                                ),
                                minLines: 6,
                                keyboardType: TextInputType.multiline,
                                maxLines: 6,
                              ),
                              const SizedBox(height: 10),
                              SizedBox(
                                height: 300,
                                child: // file picker
                                    Column(
                                  children: [
                                    Expanded(
                                      child: buildDecoration(
                                        child: Stack(
                                          children: [
                                            Center(
                                              child: result != null
                                                  ? // set image from file picker and change button to remove file
                                                  Column(
                                                      children: [
                                                        SizedBox(
                                                          height: 200,
                                                          width: 200,
                                                          child: Image.file(
                                                            File(result!.files
                                                                .single.path!),
                                                            fit: BoxFit.contain,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            height: 10),
                                                        ElevatedButton.icon(
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        15.0),
                                                            backgroundColor:
                                                                const Color(
                                                                    0xFF3493C9),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          17.0),
                                                            ),
                                                          ),
                                                          icon: const Icon(
                                                              Icons.delete,
                                                              size: 16),
                                                          label: const Text(
                                                              'Hapus File'),
                                                          onPressed: () {
                                                            setState(() {
                                                              result = null;
                                                              droppedFile =
                                                                  null;
                                                            });
                                                          },
                                                        ),
                                                      ],
                                                    )
                                                  : Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        const Icon(
                                                          Icons.cloud_upload,
                                                          size: 50,
                                                          color:
                                                              Color(0xFF918383),
                                                        ),
                                                        const SizedBox(
                                                            height: 10),
                                                        ElevatedButton.icon(
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        15.0),
                                                            backgroundColor:
                                                                const Color(
                                                                    0xFF3493C9),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          17.0),
                                                            ),
                                                          ),
                                                          icon: const Icon(
                                                              Icons.search,
                                                              size: 16),
                                                          label: const Text(
                                                              'Choose File'),
                                                          onPressed: () async {
                                                            result =
                                                                await FilePicker
                                                                    .platform
                                                                    .pickFiles(
                                                              type: FileType
                                                                  .custom,
                                                              allowedExtensions: [
                                                                // only image allowed
                                                                'jpg',
                                                                'png',
                                                                'jpeg',
                                                              ],
                                                            );
                                                            if (result !=
                                                                null) {
                                                              final file =
                                                                  result!.files
                                                                      .single;
                                                              final droppedFile =
                                                                  DroppedFile(
                                                                name: file.name,
                                                                url:
                                                                    file.path ??
                                                                        '',
                                                                mine:
                                                                    file.extension ??
                                                                        '',
                                                                bytes:
                                                                    file.size,
                                                                size: file.size
                                                                    .toString(),
                                                              );
                                                              setState(() => this
                                                                      .droppedFile =
                                                                  droppedFile);
                                                            }
                                                          },
                                                        ),
                                                      ],
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
                                    onPressed: () {
                                      updateRequest(context);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: Colors.white,
                                      backgroundColor: const Color(0xFF3493C9),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                      ),
                                    ),
                                    child: const Text('Selesai'),
                                  )
                                ],
                              ),
                            ],
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

  void updateRequest(BuildContext context) {
    // if textfield is null
    if (_controller.text.isEmpty) {
      OneContext().showDialog(
        builder: (_) => AlertDialog(
          title: const Text('Warning'),
          content: const Text('Hasil Bimbingan tidak boleh kosong'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(_).pop();
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
      return;
    }
    // if file is null
    if (droppedFile == null) {
      OneContext().showDialog(
        builder: (_) => AlertDialog(
          title: const Text('Warning'),
          content: const Text('File tidak boleh kosong'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(_).pop();
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
      return;
    }
    // check if file size is more than 2 mb
    if (droppedFile!.bytes > 2000000) {
      OneContext().showDialog(
        builder: (_) => AlertDialog(
          title: const Text('Warning'),
          content: const Text('Ukuran file tidak boleh lebih dari 2 MB'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(_).pop();
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
      return;
    }

    final newRequest = Request(
      id: widget.request.id,
      waktu: null,
      status: widget.request.status,
      result: _controller.text,
    );
    BlocProvider.of<StatusUploadBloc>(context).add(
      UpdateDataEvent(
        request: newRequest,
        file: droppedFile,
      ),
    );
  }

  Widget buildDecoration({required Widget child}) {
    final colorBackground = isHighLighted ? Colors.blue.shade100 : Colors.white;
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        color: colorBackground,
        padding: const EdgeInsets.all(10.0),
        child: DottedBorder(
          borderType: BorderType.RRect,
          color: Colors.blue.shade100,
          strokeWidth: 3,
          padding: EdgeInsets.zero,
          dashPattern: const [8, 4],
          radius: const Radius.circular(10),
          child: child,
        ),
      ),
    );
  }
}
