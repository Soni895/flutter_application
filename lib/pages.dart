import 'package:flutter/material.dart';
import 'package:flutter_application/recentpage.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 156, 209, 253),
        title: Text("darshan soni"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Card(
            child: Column(
              children: [
                Image.network(
                    "https://api.mmumullana.org/uploads/img/L1_1_83_14886.webp"),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "MMDU",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "enter your name",
                      labelText: "Name",
                    ),
                  ),
                ),

                //  check box;
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    if (isChecked == true) {
                      setState(() {
                        isChecked = false;
                      });
                    } else {
                      setState(() {
                        isChecked = true;
                      });
                    }
                  },
                ),
                ElevatedButton(
                  child: Text("More"),
                  onPressed: () {
                    showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
                        context: context,
                        builder: (context) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListTile(
                                leading: Icon(Icons.share),
                                title: Text('Share'),
                              ),
                              ListTile(
                                leading: Icon(Icons.link),
                                title: Text('Get Link'),
                              ),
                              ListTile(
                                leading: Icon(Icons.edit),
                                title: Text('Edit Name'),
                              ),
                              ListTile(
                                leading: Icon(Icons.delete),
                                title: Text('Delete Collection'),
                              ),
                            ],
                          );
                        });
                  },
                ),
                // ElevatedButton(
                //     onPressed: () {
                //       Navigator.push(context,
                //           MaterialPageRoute(builder: (builder) => const g()));
                //     },
                //     child: Text('Go to next page'))
              ],
            ),
          ),
        ),
      ),

      //darwer header;
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Darshan soni"),
              accountEmail: Text("Darshansoni895@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg"),
              ),
            ),
            // DrawerHeader(

            //   child: Text(
            //     "resume",
            //     style: TextStyle(
            //       fontStyle: FontStyle.italic,
            //       color: Colors.black,
            //       fontSize: 40,
            //     ),
            //   ),
            //   decoration: BoxDecoration(color: Colors.lightBlue),
            // ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                "profile",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text("+918168687827 "),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.account_balance_rounded),
              title: Text(
                "account",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text("personal info"),
              trailing: Icon(Icons.menu),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text(
                "contact us",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text("help Center"),
              trailing: Icon(Icons.menu),
            ),
          ],
        ),
      ),
    );
  }
}

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Your All Linked In post"),
      ),
    );
  }
}

class Recent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => const RecentPage())));
          },
          child: Text('Navigate to Recent'),
        ),
      ),
    );
  }
}

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Your account information"),
      ),
    );
  }
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Contact us: +91 18602195555"),
      ),
    );
  }
}
