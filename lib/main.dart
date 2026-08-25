import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Lab Experiment 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StudentProfilePage(),
    );
  }
}

class StudentProfilePage extends StatelessWidget {
  const StudentProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Step 4: AppBar configuration
      appBar: AppBar(
        title: const Text('Student Profile'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      // Step 5: Master Layout using a Column
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Step 6: Heading using a decorated Container
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Column(
              children: [
                Text(
                  'Student Profile',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  'M A SHAEL URK23CS8002',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Computer Science and Engineering (CSE)',
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
                Text(
                  'Flutter Laboratory',
                  style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),

          // Step 7: Action shortcuts using a Row with spaceEvenly
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.home, size: 30, color: Colors.blue),
                Icon(Icons.person, size: 30, color: Colors.blue),
                Icon(Icons.settings, size: 30, color: Colors.blue),
              ],
            ),
          ),
          
          const Divider(thickness: 1, indent: 15, endIndent: 15),

          const Padding(
            padding: EdgeInsets.only(left: 15.0, top: 10.0, bottom: 5.0),
            child: Text(
              'Enrolled Courses',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          // Steps 8 & 9: Dynamic Course list using an Expanded ListView
          // Expanded ensures the ListView takes up the remaining vertical space properly
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              children: const [
                // Step 8: Detailed Course Item wrapped in a Card
                Card(
                  elevation: 3,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    leading: Icon(Icons.book, color: Colors.orange),
                    title: Text('Flutter', style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('Mobile Application Development'),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  ),
                ),
                // Step 9: Remaining ListView entries using ListTiles
                Card(
                  elevation: 2,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    leading: Icon(Icons.cloud, color: Colors.blue),
                    title: Text('Cloud Computing', style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('Infrastructure & Services'),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  ),
                ),
                Card(
                  elevation: 2,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    leading: Icon(Icons.code, color: Colors.green),
                    title: Text('Programming', style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('Data Structures & Algorithms'),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
