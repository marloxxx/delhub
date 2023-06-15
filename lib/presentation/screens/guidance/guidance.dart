import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_context/one_context.dart';

import '../../../../data/models/request_model.dart';
import '../../blocs/detail_guidance/detail_guidance_bloc.dart';
import '../../blocs/detail_guidance/detail_guidance_event.dart';
import '../../blocs/detail_guidance/detail_guidance_states.dart';
import 'components/body.dart';

@RoutePage(name: 'DetailGuidanceRoute')
class Guidance extends StatefulWidget {
  final Request request;
  const Guidance({super.key, required this.request});

  @override
  State<Guidance> createState() => _GuidanceState();
}

class _GuidanceState extends State<Guidance> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<DetailGuidanceBloc>(context)
        .add(GetDataEvent(request: widget.request));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<DetailGuidanceBloc, DetailGuidanceState>(
          listener: (context, state) {
            if (state is DetailGuidanceErrorState) {
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
            } else if (state is DetailGuidanceLoadingState) {
              const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is DetailGuidanceLoadedState && state.isUpdated) {
              OneContext().showDialog(
                builder: (_) => AlertDialog(
                  title: const Text("Success"),
                  content: const Text("Berhasil mengubah data bimbingan"),
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
            }
          },
          listenWhen: (previous, current) {
            if (current is DetailGuidanceLoadedState) {
              return current.isUpdated;
            } else {
              return false;
            }
          },
          builder: (context, state) {
            if (state is DetailGuidanceInitialState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is DetailGuidanceLoadedState) {
              return Body(
                user: state.user,
                request: state.request,
              );
            } else if (state is DetailGuidanceErrorState) {
              return const Center(
                child: Text(
                    'Terjadi kesalahan.\nTarik ke bawah untuk memuat ulang'),
              );
            } else if (state is DetailGuidanceLoadingState) {
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
