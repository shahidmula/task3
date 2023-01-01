import 'package:flutter/material.dart';
import 'package:task3/view/uni_screen.dart';
class SearchScreen extends StatefulWidget {
  // const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final countryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
        decoration: InputDecoration(border: OutlineInputBorder()),
        controller: countryController,
      ),
      ElevatedButton(onPressed: (){
Navigator.push(context, MaterialPageRoute(builder:(context) => UniScreen(countryController.text),));
      }, child: Text("Country"))
        ],
      ) 
    );
  }
}