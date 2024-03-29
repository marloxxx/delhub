import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_context/one_context.dart';

import '../../../data/models/user_model.dart';
import '../../blocs/request/request_bloc.dart';
import '../../blocs/request/request_event.dart';
import '../../blocs/request/request_states.dart';
import 'components/body.dart';

@RoutePage(name: 'RequestGuidanceRoute')
class RequestingGuidance extends StatefulWidget {
  final User user;
  const RequestingGuidance({super.key, required this.user});

  @override
  State<RequestingGuidance> createState() => _RequestingGuidanceState();
}

class _RequestingGuidanceState extends State<RequestingGuidance> {
  @override
  void initState() {
    super.initState();
    context.read<RequestBloc>().add(const GetRoomsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<RequestBloc, RequestState>(
          listener: (context, state) {
            if (state is RequestErrorState) {
              OneContext().showDialog(
                builder: (_) => AlertDialog(
                  title: const Text("Error"),
                  content: Text(state.message),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(_).pop();
                      },
                      child: const Text("OK"),
                    ),
                  ],
                ),
              );
            } else if (state is RequestLoadingState) {
              const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is RequestLoadedState && state.success) {
              OneContext().showDialog(
                builder: (_) => AlertDialog(
                  title: const Text("Success"),
                  content: const Text("Berhasil mengirim permintaan bimbingan"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(_).pop();
                        context.router.pop();
                      },
                      child: const Text("OK"),
                    ),
                  ],
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is RequestLoadedState) {
              return Body(
                rooms: state.rooms,
                user: widget.user,
              );
            } else if (state is RequestLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return const Center(
                child: Text(
                    'Terjadi kesalahan.\nTarik ke bawah untuk memuat ulang'),
              );
            }
          },
        ),
      ),
    );
  }
}
