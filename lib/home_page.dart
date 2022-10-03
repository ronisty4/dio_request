import 'package:flutter/material.dart';
import 'package:flutter_dio_request_provider/user_implemetation.dart';
import 'package:flutter_dio_request_provider/user_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  User userMap = User(id: 0, name: 'Data kosong', email: 'Data kosong');
  final userimpl = UserImplementation();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dio Request Provider'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name : ${userMap.name}'),
            const SizedBox(height: 5.0),
            Text('Email : ${userMap.email}'),
            const SizedBox(height: 5.0),
            ElevatedButton(
              onPressed: () async {
                var bebas = await userimpl.getById(2);

                setState(() {
                  userMap = bebas!;
                });
              },
              child: Text('Get Data'),
            ),
            const SizedBox(
              height: 5.0,
            )
          ],
        ),
      ),
    );
  }
}
