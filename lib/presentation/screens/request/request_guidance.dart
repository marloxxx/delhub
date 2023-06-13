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
            } else if (state is RequestLoadedState && state.rooms.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Request Success"),
                ),
              );
              // go back to previous page and refresh
              AutoRouter.of(context).pop();
            }
          },
          builder: (context, state) {
            if (state is RequestErrorState) {
              return Center(
                child: Text(
                  state.message,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              );
            } else if (state is RequestLoadedState) {
              return Body(
                rooms: state.rooms,
                user: widget.user,
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
