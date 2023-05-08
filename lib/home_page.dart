import 'package:flutter/material.dart';
import 'package:local_notifications/api_services/notify_service.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text('Show notifications'),
        onPressed: () {
          NotificationService()
              .showNotification(title: 'Syamim is a broken man', body: 'Everyone hates him');
              print("asdasdasdasd");
        },
      )),
    );
  }
}
