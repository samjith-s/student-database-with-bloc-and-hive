import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tial/application/update_screen/update_screen_bloc.dart';
import 'package:tial/presentation/widgets/common_widgets.dart';
import '../../../application/home/home_bloc.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback(
      (timeStamp) {
        BlocProvider.of<HomeBloc>(context).add(const HomeEvent.initialize());
      },
    );
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: searchField(context)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<HomeBloc>(context)
              .add(AddButtonPressed(context: context));
        },
        child: const Icon(Icons.add),
      ),
      body: BlocConsumer<HomeBloc, HomeState>(
        listenWhen: (previous, current) {
          if (previous.studentList.length < current.studentList.length) {
            return true;
          }
          return false;
        },
        listener: (context, state) {
          ScaffoldMessenger.of(context).showSnackBar(studentAddedSnackbar());
        },
        builder: (context, state) {
          return state.searchResultList.isEmpty
              ? ListView.separated(
                  itemBuilder: (context, index) {
                    final data = state.studentList[index];
                    var image = data.image;
                    return Card(
                      child: ListTile(
                        onTap: () {
                          BlocProvider.of<HomeBloc>(context).add(
                            StudentTileTaped(context: context, model: data),
                          );
                          BlocProvider.of<UpdateScreenBloc>(context).add(
                              UpdateScreenEvent.initialize(studentModel: data));
                        },
                        leading: CircleAvatar(
                          backgroundImage: FileImage(File(image)),
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
                  itemCount: state.studentList.length,
                )
              : ListView.separated(
                  itemBuilder: (context, index) {
                    final data = state.searchResultList[index];
                    var image = data.image;
                    return Card(
                      child: ListTile(
                        onTap: () {
                          BlocProvider.of<HomeBloc>(context).add(
                            StudentTileTaped(context: context, model: data),
                          );
                          BlocProvider.of<UpdateScreenBloc>(context).add(
                              UpdateScreenEvent.initialize(studentModel: data));
                        },
                        leading: CircleAvatar(
                          backgroundImage: FileImage(File(image)),
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
                  itemCount: state.searchResultList.length,
                );
        },
      ),
    );
  }

  Widget searchField(BuildContext context) {
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
          BlocProvider.of<HomeBloc>(context)
              .add(SearchStudent(userName: value));
        },
      ),
    );
  }
}
