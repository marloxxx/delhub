import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/krs_model.dart';
import '../../blocs/group/group_bloc.dart';
import '../../blocs/group/group_event.dart';
import '../../blocs/group/group_states.dart';
import 'components/body.dart';

@RoutePage(name: 'GroupRoute')
class Group extends StatefulWidget {
  final KRS krs;
  const Group({super.key, required this.krs});

  @override
  State<Group> createState() => _GroupState();
}

class _GroupState extends State<Group> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<GroupBloc>(context)
        .add(GetDatabyKrsEvent(krsId: widget.krs.id));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RefreshIndicator(
        onRefresh: () async {
          BlocProvider.of<GroupBloc>(context)
              .add(GetDatabyKrsEvent(krsId: widget.krs.id));
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: BlocConsumer<GroupBloc, GroupState>(
              listener: (context, state) {},
              builder: (context, state) {
                if (state is GroupInitialState) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is GroupLoadedState) {
                  return Body(groupList: state.groupList, krs: widget.krs);
                } else if (state is GroupErrorState) {
                  return const Center(
                    child: Text(
                        'Terjadi kesalahan.\nTarik ke bawah untuk memuat ulang'),
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
        ),
      ),
    );
  }
}
