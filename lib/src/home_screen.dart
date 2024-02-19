import 'package:flutter/material.dart';
import 'package:flutter_kakao_map/src/main_map_kakao.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MainMapKakao()));
              },
              child: Text('Open Kakao Map'))
        ],
      ),
    );
  }
}
