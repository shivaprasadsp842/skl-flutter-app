import 'dart:convert';


import 'package:flutter/material.dart';

class SearchList extends StatefulWidget {
  const SearchList({Key? key}) : super(key: key);

  @override
  State<SearchList> createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  List searchList = [];
  @override
  Widget build(BuildContext context) {

    if (searchList.isNotEmpty) {
      print('hello');
      return ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          padding: const EdgeInsets.all(15),
          children: List.generate(
              searchList.length,
                  (index) => new SingleChildScrollView(
                child: Card(
                  margin: const EdgeInsets.all(12),
                  shadowColor: Colors.blueGrey,
                  elevation: 4,
                  color: const Color.fromRGBO(64, 75, 96, .9),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.white)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            // ListTile(title: Text('Device ID : ')),
                            Center(
                              child: Text(
                                'Device ID: ' +
                                    jsonEncode(
                                        searchList[index].name),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            TextButton(
                              child: const Text('Remove'),
                              onPressed: () {
                                // print(jsonEncode(
                                //     searchList[index].deviceId));
                                // _removeDevice(
                                //   jsonEncode(_searchList,[index].deviceId)
                                //       .replaceAll('"', ''),
                                // );
                                // showToast(
                                //     context, "Remove device is pressed");
                              },
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              )));
    } else {
      return const Center(
        child: Text(""),
      );
    }
  }

}
