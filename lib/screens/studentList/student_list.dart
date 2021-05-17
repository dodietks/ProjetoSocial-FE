import 'package:flutter/material.dart';
import 'package:projeto_social/Screens/StudentList/components/student_tile.dart';
import 'package:projeto_social/provider/students.dart';
import 'package:projeto_social/routes/app_routes.dart';
import 'package:provider/provider.dart';

class StudentList extends StatelessWidget {
  Future<void> _refreshStudents(BuildContext context) {
    return Provider.of<Students>(context, listen: false).loadStudents();
  }

  @override
  Widget build(BuildContext context) {
    final studentsData = Provider.of<Students>(context);
    final students = studentsData.items;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Lista de alunos",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            iconSize: 36,
            icon: Icon(
              Icons.fiber_new_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context)
                  .pushNamed(AppRoutes.STUDENT_REGISTRATION_SCREEN);
            },
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () => _refreshStudents(context),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListView.builder(
            itemCount: studentsData.itemsCount,
            itemBuilder: (ctx, i) => Column(
              children: <Widget>[
                StudentTile(students[i]),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
