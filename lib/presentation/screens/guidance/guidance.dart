import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    BlocProvider.of<DetailGuidanceBloc>(context).add(const GetDataEvent());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: BlocConsumer<DetailGuidanceBloc, DetailGuidanceState>(
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
            AutoRouter.of(context).pop();
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
              request: widget.request,
            );
          } else if (state is DetailGuidanceErrorState) {
            return Center(
              child: Text('${state.message} \nPlease refresh the page'),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
        buildWhen: (previous, current) {
          if (current is DetailGuidanceLoadedState) {
            return current.isUpdated == false;
          } else {
            return true;
          }
        },
      ),
    ));
  }
}
