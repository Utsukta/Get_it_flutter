import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:getit/main.dart';
import 'user_service.dart';

class MyHomePage extends StatelessWidget {
  final UserService userService = GetIt.I<UserService>();

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('get_it Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(
            //   'User: ${userService.getUser()}',
            //   style: TextStyle(fontSize: 18),
            // ),
            OutlinedButton(
                onPressed: () {
                  getIt<UserService>().getUser();
                },
                child: const Text("Click here"))
          ],
        ),
      ),
    );
  }
}
