import 'package:auto_route/auto_route.dart';
import 'package:delhub/presentation/blocs/status_upload/status_upload_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_context/one_context.dart';

import '../../../data/models/request_model.dart';
import '../../blocs/status_upload/status_upload_bloc.dart';
import '../../blocs/status_upload/status_upload_event.dart';
import 'components/body.dart';

@RoutePage(name: 'StatusUploadRoute')
class StatusUpload extends StatefulWidget {
  final Request request;
  const StatusUpload({super.key, required this.request});

  @override
  State<StatusUpload> createState() => _StatusUploadState();
}

class _StatusUploadState extends State<StatusUpload> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<StatusUploadBloc>(context)
        .add(GetDataEvent(request: widget.request));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RefreshIndicator(
        onRefresh: () async {
          // set state to loaded state
        },
        child: BlocConsumer<StatusUploadBloc, StatusUploadState>(
            listener: (context, state) {
          if (state is StatusUploadErrorState) {
            OneContext().showDialog(
              builder: (_) => AlertDialog(
                title: const Text('Warning'),
                content: Text(state.message),
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
          } else if (state is StatusUploadErrorState) {
            const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is StatusUploadLoadedState && state.isUpdated) {
            OneContext().showDialog(
              builder: (_) => AlertDialog(
                title: const Text('Success'),
                content: const Text('Berhasil mengubah data bimbingan'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(_).pop();
                      context.router.pop();
                    },
                    child: const Text('OK'),
                  ),
                ],
              ),
            );
          }
        }, listenWhen: (previous, current) {
          if (current != previous) {
            return true;
          }
          return false;
        }, builder: (context, state) {
          if (state is StatusUploadInitialState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is StatusUploadLoadedState) {
            return Body(
              request: state.request,
            );
          } else if (state is StatusUploadLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return const Center(
              child: Text('Terjadi Kesalahan'),
            );
          }
        }, buildWhen: (previous, current) {
          if (current is StatusUploadLoadedState && !current.isUpdated) {
            return true;
          }
          return false;
        }),
      ),
    );
  }
}
