import 'package:auto_route/auto_route.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../../../data/models/dropped_file_model.dart';
import '../../../../data/models/request_model.dart';
import '../../../blocs/detail_guidance/detail_guidance_bloc.dart';
import '../../../blocs/detail_guidance/detail_guidance_event.dart';
import '../../../blocs/detail_guidance/detail_guidance_states.dart';
import '../../../widgets/background.dart';

@RoutePage(name: 'StatusUploadRoute')
class StatusUpload extends StatefulWidget {
  final Request request;
  const StatusUpload({super.key, required this.request});

  @override
  State<StatusUpload> createState() => _StatusUploadState();
}

class _StatusUploadState extends State<StatusUpload> {
  DroppedFile? droppedFile;
  FilePickerResult? result;
  bool isHighLighted = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Background(
        child: BlocConsumer<DetailGuidanceBloc, DetailGuidanceState>(
          listener: (context, state) {
            if (state is DetailGuidanceErrorState) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                ),
              );
            } else if (state is DetailGuidanceLoadingState) {
              const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is DetailGuidanceLoadedState && state.isUpdated) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Update Success"),
                ),
              );
              // go back to previous page and refresh
              // AutoRouter
            }
          },
          builder: (context, state) {
            if (state is DetailGuidanceInitialState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is DetailGuidanceLoadedState) {
              return Scaffold(
                backgroundColor: Colors.transparent,

                // Bottom Navigation Bar
                bottomNavigationBar: BottomNavigationBar(
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.history),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.account_circle),
                      label: '',
                    ),
                  ],
                ),

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
                                            borderRadius:
                                                BorderRadius.circular(50),
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
                                        enabled: false,
                                        // set value of text field
                                        controller: TextEditingController(
                                          text: DateFormat('EEEE, d MMMM yyyy')
                                              .format(widget.request.waktu!)
                                              .toString(),
                                        ),
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(17.0),
                                          ),
                                          suffixIcon: const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
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
                                        children: <Widget>[
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
                                            borderRadius:
                                                BorderRadius.circular(17.0),
                                          ),
                                        ),
                                        minLines: 6,
                                        keyboardType: TextInputType.multiline,
                                        maxLines: 6,
                                      ),
                                      const SizedBox(height: 10),
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
                                                          ? Image.network(
                                                              result!
                                                                      .files
                                                                      .single
                                                                      .path ??
                                                                  '',
                                                              width: 120,
                                                              height: 120,
                                                              fit: BoxFit.cover,
                                                              errorBuilder:
                                                                  ((context,
                                                                          error,
                                                                          _) =>
                                                                      Text(result!
                                                                          .files
                                                                          .single
                                                                          .name)),
                                                            )
                                                          : Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                const Icon(
                                                                    Icons
                                                                        .cloud_upload,
                                                                    size: 50,
                                                                    color: Color(
                                                                        0xFF918383)),
                                                                const Text(
                                                                    'Drop File Here'),
                                                                const SizedBox(
                                                                    height: 10),
                                                                ElevatedButton
                                                                    .icon(
                                                                  style: ElevatedButton
                                                                      .styleFrom(
                                                                    padding: const EdgeInsets
                                                                            .symmetric(
                                                                        horizontal:
                                                                            15.0),
                                                                    backgroundColor:
                                                                        const Color(
                                                                            0xFF3493C9),
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              17.0),
                                                                    ),
                                                                  ),
                                                                  icon: const Icon(
                                                                      Icons
                                                                          .search,
                                                                      size: 16),
                                                                  label: const Text(
                                                                      'Choose File'),
                                                                  onPressed:
                                                                      () async {
                                                                    result = await FilePicker
                                                                        .platform
                                                                        .pickFiles(
                                                                      type: FileType
                                                                          .custom,
                                                                      allowedExtensions: [
                                                                        'jpg',
                                                                        'png',
                                                                        'pdf',
                                                                        'doc'
                                                                      ],
                                                                    );
                                                                    if (result !=
                                                                        null) {
                                                                      final file = result!
                                                                          .files
                                                                          .single;
                                                                      final droppedFile =
                                                                          DroppedFile(
                                                                        name: file
                                                                            .name,
                                                                        url: file.path ??
                                                                            '',
                                                                        mine: file.extension ??
                                                                            '',
                                                                        bytes: file
                                                                            .size,
                                                                        size: file
                                                                            .size
                                                                            .toString(),
                                                                      );
                                                                      setState(() =>
                                                                          this.droppedFile =
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          result != null
                                              ? ElevatedButton(
                                                  onPressed: () {
                                                    BlocProvider.of<
                                                                DetailGuidanceBloc>(
                                                            context)
                                                        .add(
                                                      UpdateDataEvent(
                                                        id: widget.request.id,
                                                        status: 'approved',
                                                        waktu: null,
                                                        file: droppedFile,
                                                      ),
                                                    );
                                                  },
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    foregroundColor:
                                                        Colors.white,
                                                    backgroundColor:
                                                        const Color(0xFF3493C9),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7.0),
                                                    ),
                                                  ),
                                                  child: const Text('Selesai'),
                                                )
                                              : ElevatedButton(
                                                  onPressed: () {
                                                    BlocProvider.of<
                                                                DetailGuidanceBloc>(
                                                            context)
                                                        .add(
                                                      UpdateDataEvent(
                                                        id: widget.request.id,
                                                        status: 'approved',
                                                        waktu: null,
                                                        file: droppedFile,
                                                      ),
                                                    );
                                                  },
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    foregroundColor:
                                                        Colors.white,
                                                    backgroundColor:
                                                        const Color(0xFF3493C9),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7.0),
                                                    ),
                                                  ),
                                                  child: const Text('Selesai'),
                                                ),
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
              );
            } else if (state is DetailGuidanceErrorState) {
              return Center(
                child: Text(state.message),
              );
            } else {
              return const Center(
                child: Text('Something went wrong'),
              );
            }
          },
        ),
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
