import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tial/presentation/widgets/dialog.dart';
import 'package:tial/presentation/screens/details/show_details_screen.dart';

import '../../../domain/home/model/student_model.dart';
import '../../hive_models/hive_model.dart';

StudentModel model = StudentModel(name: '', age: '', mark: '', result: '');

ValueNotifier<StudentModel> datanotifier = ValueNotifier(model);

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getAll();

    return Scaffold(
      appBar: AppBar(centerTitle: true, title: searchField()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          optionsnotifier.value=false;
          sDialog(context);
        },
        child: const Icon(Icons.add),
      ),
      body: valueList(),
    );
  }

  ValueListenableBuilder<List<StudentModel>> valueList() {
    return ValueListenableBuilder(
        valueListenable: mymodellist,
        builder: (BuildContext context, List<StudentModel> modellist, Widget? _) {
          return ListView.separated(
              itemBuilder: (context, index) {
                final data = modellist[index];
                var image=data.image;
                return Card(
                  child: ListTile(
                    onTap: () {
                      datanotifier.value = data;
                      datanotifier.notifyListeners;
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return ShowDetails(index: index);
                      }));
                    },
                    leading: CircleAvatar(
                      backgroundImage: FileImage(File(image!)),
                    ),
                    title: Text(
                      data.name,
                      style: const TextStyle(fontSize: 25),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, intex) {
                return const Divider();
              },
              itemCount: modellist.length);
        });
  }

  Widget searchField() {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: TextField(
        decoration: const InputDecoration(
          hintText: 'search',
          enabledBorder: InputBorder.none,
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 20),
        ),
        onChanged: (value) {
          mymodellist.value = mymodellist.value
              .where((element) => element.name.contains(value))
              .toList();
          mymodellist.notifyListeners();

          if (value == '') {
            getAll();
          } else if (mymodellist.value.isEmpty) {
            getAll();
          }
        },
      ),
    );
  }
}

