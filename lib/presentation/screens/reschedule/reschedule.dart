import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_context/one_context.dart';

import '../../../../data/models/request_model.dart';
import '../../blocs/reschedule/reschedule_bloc.dart';
import '../../blocs/reschedule/reschedule_event.dart';
import '../../blocs/reschedule/reschedule_states.dart';
import 'components/body.dart';

@RoutePage(name: 'RescheduleGuidanceRoute')
class Reschedule extends StatefulWidget {
  final Request request;
  const Reschedule({Key? key, required this.request}) : super(key: key);

  @override
  State<Reschedule> createState() => _BodyState();
}

class _BodyState extends State<Reschedule> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<RescheduleBloc>(context).add(const GetDataEvent());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RefreshIndicator(
        onRefresh: () async {
          BlocProvider.of<RescheduleBloc>(context).add(const GetDataEvent());
        },
        child: BlocConsumer<RescheduleBloc, RescheduleState>(
            listener: (context, state) {
          if (state is RescheduleErrorState) {
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
          } else if (state is RescheduleLoadingState) {
            const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is RescheduleLoadedState && state.isUpdated) {
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
        }, builder: (context, state) {
          if (state is RescheduleInitialState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is RescheduleLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is RescheduleErrorState) {
            return Center(
              child: Text(state.message),
            );
          } else if (state is RescheduleLoadedState) {
            return Body(
              request: widget.request,
              roomList: state.rooms,
            );
          }
          return const Center(child: CircularProgressIndicator());
        }),
      ),
    );
  }
}
