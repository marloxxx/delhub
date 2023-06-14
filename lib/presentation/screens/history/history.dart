import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_context/one_context.dart';

import '../../blocs/history/history_bloc.dart';
import '../../blocs/history/history_event.dart';
import '../../blocs/history/history_state.dart';
import 'components/body.dart';

@RoutePage(name: 'GuidanceStudentRoute')
class History extends StatefulWidget {
  final int? kelompokId;
  const History({super.key, this.kelompokId});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  void initState() {
    super.initState();
    if (widget.kelompokId != null) {
      BlocProvider.of<HistoryBloc>(context)
          .add(GetDataByKelompokIdEvent(widget.kelompokId!));
    } else {
      BlocProvider.of<HistoryBloc>(context).add(const GetDataEvent());
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<HistoryBloc, HistoryState>(
          listener: (context, state) {
            if (state is HistoryErrorState) {
              OneContext().showDialog(
                builder: (_) => AlertDialog(
                  title: const Text("Error"),
                  content: Text(state.message),
                  actions: [
                    TextButton(
                      onPressed: () {
                        AutoRouter.of(context).pop();
                      },
                      child: const Text("OK"),
                    ),
                  ],
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is HistoryInitialState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is HistoryLoadedState) {
              return Body(
                requestList: state.requestList,
              );
            } else if (state is HistoryErrorState) {
              return const Center(
                child: Text(
                    'Terjadi kesalahan.\nTarik ke bawah untuk memuat ulang'),
              );
            } else if (state is HistoryLoadingState) {
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
