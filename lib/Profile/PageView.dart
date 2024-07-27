import 'package:flutter/material.dart';

class Pages extends StatelessWidget {
  const Pages({super.key});

  @override
  Widget build(BuildContext context) {
    
      return const Column(
          children: [
            TabBar(
              tabs: [
                Tab(text: 'overview'),
                Tab(text: 'overview'),
                Tab(text: 'overview'),
                Tab(text: 'overview'),
              ],
              ),
              TabBarView(
                children: [
                  Text('data'),
                  Text('data'),
                  Text('data'),
                  Text('data'),
                ]
              ),
          ]
      );
  }
}