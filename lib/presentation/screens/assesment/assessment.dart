import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_context/one_context.dart';

import '../../../data/models/kelompok_model.dart';
import '../../blocs/assesment/assessment_bloc.dart';
import '../../blocs/assesment/assessment_event.dart';
import '../../blocs/assesment/assessment_states.dart';
import 'components/body.dart';

@RoutePage(name: 'AssesmentPointRoute')
class Assessment extends StatefulWidget {
  final Kelompok kelompok;
  const Assessment({Key? key, required this.kelompok}) : super(key: key);

  @override
  State<Assessment> createState() => _AssessmentState();
}

class _AssessmentState extends State<Assessment> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<AssessmentBloc>(context)
        .add(GetAssessmentPoints(kelompok: widget.kelompok));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RefreshIndicator(
        onRefresh: () async {
          BlocProvider.of<AssessmentBloc>(context)
              .add(GetAssessmentPoints(kelompok: widget.kelompok));
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: BlocConsumer<AssessmentBloc, AssessmentStates>(
              listener: (context, state) {
                if (state is AssessmentErrorState) {
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
                } else if (state is AssessmentLoadedState && state.isUpdated) {
                  OneContext().showDialog(
                    builder: (_) => AlertDialog(
                      title: const Text("Success"),
                      content: const Text(
                        "Berhasil mengirim nilai mahasiswa ke server",
                      ),
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
                  BlocProvider.of<AssessmentBloc>(context)
                      .add(GetAssessmentPoints(kelompok: widget.kelompok));
                  // go back to previous page
                  Navigator.of(context).pop();
                }
              },
              builder: (context, state) {
                if (state is AssessmentInitialState) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is AssessmentLoadedState) {
                  return Body(
                    kelompok: widget.kelompok,
                    assessmentPointList: state.assessmentPointList,
                    assessmentStudentList: state.assessmentStudentList,
                  );
                } else if (state is AssessmentErrorState) {
                  return Center(
                    child: Text(state.message),
                  );
                } else if (state is AssessmentLoadingState) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return const Scaffold(
                    body: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Loading...",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
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
