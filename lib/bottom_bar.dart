import 'package:flutter/material.dart';
import 'package:flutter_application/pages.dart';

// class box extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() {
//     return ;
// }

class BottomMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomMenuState();
  }
}

class BottomMenuState extends State<BottomMenu> {
  var pagesdata = [Home(), Post(), Recent(), Account(), About()];

  int item = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pagesdata[item],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueAccent,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.blue.shade400,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.post_add,
                color: Colors.blue.shade400,
              ),
              label: "Post"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.recent_actors,
                color: Colors.blue.shade400,
              ),
              label: "Recent"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box,
                color: Colors.blue.shade400,
              ),
              label: "Account"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.info,
                color: Colors.blue.shade400,
              ),
              label: "About"),
        ],
        currentIndex: item,
        onTap: (setValue) {
          setState(() {
            item = setValue;
          });
        },
      ),
    );
  }
}
