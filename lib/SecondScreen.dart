import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SecondScreen extends StatelessWidget {
  List myData = [];
  SecondScreen({Key? key, this.myData = const []}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: double.infinity,
        child: ListView.builder(
            itemCount: myData.length,
            itemBuilder: (context, number) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      child: Image.network(myData[number]['urlToImage'] == null
                          ? Image.network(
                              'https://g.foolcdn.com/editorial/images/642152/1-mom-and-son-ev.jpg')
                          : myData[number]['urlToImage']),
                    ),
                  ),
                  Text(myData[number]['content'])
                ],
              );
            }),
      ),
    );
  }
}
