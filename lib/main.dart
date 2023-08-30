import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Bio'),
          ),
          body: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 50,
                  backgroundImage: AssetImage('images/me.png'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Rahul Kumar",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Flutter Developer"),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 100,
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('9798295265'),
                      trailing: Icon(Icons.add),
                    ),
                  ),
                ),
                Card(
                  elevation: 20,
                  shadowColor: Colors.amber,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image(
                          color: Colors.orange,
                          height: 100,
                          width: 100,
                          image: AssetImage('images/me.png'),
                        ),
                        Image(centerSlice: Rect.largest,
                          height: 100,
                          width: 100,
                          image: AssetImage('images/me.png'),
                        ),
                        Image(
                          height: 100,
                          width: 100,
                          image: AssetImage('images/me.png'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
