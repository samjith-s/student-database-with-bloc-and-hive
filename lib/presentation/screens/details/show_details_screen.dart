import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tial/application/home/home_bloc.dart';
import 'package:tial/application/update_screen/update_screen_bloc.dart';
import 'package:tial/presentation/widgets/delete_confirmation_widget.dart';
import '../../../domain/home/model/student_model.dart';

var updateoptionbuttonstyle =
    ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white));

class ShowDetails extends StatelessWidget {
  final StudentModel model;
  const ShowDetails({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle textStyle = TextStyle(fontSize: 30, color: Colors.black);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 234, 234),
      appBar: AppBar(
        title: const Text('Details'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: BlocConsumer<UpdateScreenBloc, UpdateScreenState>(
                listener: (context, state) {
                  BlocProvider.of<HomeBloc>(context).add(
                    const HomeEvent.initialize(),
                  );
                },
                builder: (context, state) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: CircleAvatar(
                          backgroundImage:
                              FileImage(File(state.studentModel.image)),
                          radius: 100,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('Name : ${state.studentModel.name}',
                          style: textStyle),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('Age : ${state.studentModel.age}', style: textStyle),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('Mark : ${state.studentModel.mark}',
                          style: textStyle),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('Result : ${state.studentModel.result}',
                          style: textStyle),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: TextButton.icon(
                                onPressed: () {
                                  BlocProvider.of<UpdateScreenBloc>(context)
                                      .add(
                                    UpdateScreenEvent.showUpdateWidget(
                                      studentModel: model,
                                      context: context,
                                    ),
                                  );
                                },
                                icon: const Icon(Icons.update),
                                label: const Text('Update'),
                                style: updateoptionbuttonstyle,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: TextButton.icon(
                                onPressed: () {
                                  deleteConfirmDialog(context, model);
                                },
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                                label: const Text(
                                  'Delete',
                                  style: TextStyle(color: Colors.red),
                                ),
                                style: updateoptionbuttonstyle,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
