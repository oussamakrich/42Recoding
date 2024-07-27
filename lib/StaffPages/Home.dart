import 'package:flutter/material.dart';

class HomeStaff extends StatelessWidget {
  const HomeStaff({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          elevation: 2,
          backgroundColor: Colors.white,
          shadowColor: Colors.black.withOpacity(0.5),
          leading: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: InkWell(
              onTap: () {},
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
            ),
          ),
          title: const SearchBar(
            backgroundColor: WidgetStatePropertyAll(Colors.transparent),
            elevation: WidgetStatePropertyAll(0),
            side: WidgetStatePropertyAll(BorderSide(color: Color.fromARGB(50, 105, 105, 105), width: 1)),
            constraints: BoxConstraints(minHeight: 45),
            hintText: 'Search...',
            hintStyle: WidgetStatePropertyAll(TextStyle(color: Color(0xFF999999))),
            trailing: [
              Icon(Icons.search, color: Color(0xFF999999)),
            ],
          ),
        ),
// ,
    );
  }
}