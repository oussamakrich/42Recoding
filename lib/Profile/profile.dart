import 'package:flutter/material.dart';
import 'package:intrarecod/Profile/PageView.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            padding: const EdgeInsets.only(left: 10),
            onPressed: (){},
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          ),
          centerTitle: true,
          title: const Text('Profile', style: TextStyle(color: Colors.white)),
        ),
        
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset('assets/Background.jpg', fit: BoxFit.cover,),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: size.height * 0.8,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.elliptical(size.height * 0.4, 100), topRight: Radius.elliptical(size.height * 0.4, 100)),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 80),
                  child: Column(
                    children: [
                      Text('Mohamed Oulmouden', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                      SizedBox(height: 10),
                      Text('(Student)', style: TextStyle(color: Color(0xFF00BABC))),
                      SizedBox(height: 10),
                      Divider(
                        color: Color(0xFFDDDDDD),
                        indent: 30,
                        endIndent: 30,
                      ),
                      // Pages()
                      TabBar(
                        tabs: [
                          Tab(text: 'Info'),
                          Tab(text: 'Healt'),
                          Tab(text: 'Recoding'),
                          Tab(text: 'overview'),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Center(child: Text('data')),
                            Center(child: Text('data')),
                            Center(child: Text('data')),
                            Center(child: Text('data')),
                          ]
                        ),
                      ),
                      ],
                    ),
                ),
            ),
            ),
      
          Positioned(
            top: size.height * 0.15, // Adjust as needed
            left: size.width * 0.35, // Adjust as needed
            child: Container(
              width:  100, // Adjust size as needed
              height: 100, // Adjust size as needed
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/profile.jpg'),
                ),
              ),
            ),
          ),
         ],
        ),
      ),
    );
  }
}