import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('List view test'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                textColor: Colors.white,
                tileColor: Colors.black,
                title: Text('Pesron $index'),
                subtitle: Text('Message $index'),
                leading: const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.deepPurple,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfF5pfAmeOUUMNb0mt8ZTgx5FN74ihWwsv2A&usqp=CAU'),
                ),
                trailing: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('data'),
                    Icon(
                      Icons.access_alarms_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: 60,
        ),
      )),
    );
  }
}
