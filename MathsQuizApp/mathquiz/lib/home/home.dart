import 'package:flutter/material.dart';
// import 'package:themathmaestro/login/login.dart';
// import 'package:themathmaestro/services/auth.dart';
import 'package:themathmaestro/lessons/lessons.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // return StreamBuilder(
    //   stream: AuthService().userStream,
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       return const Text('Loading....');
    //     } else if (snapshot.hasError) {
    //       return const Center(
    //         child: Text('An error has occurred'),
    //       );
    //     } else if (snapshot.hasData) {
    //       return Lessons();
    //     } else {
    //       return Lessons();
    //     }
    //   },
    // );
    return Lessons();
  }
}
