// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Person {
  final String name;
  final String email;
  final String avatarAsset;
  // final String imageUrl;
  bool isSelected;

  Person({
    required this.name,
    required this.email,
    required this.avatarAsset,
    // required this.imageUrl,
    this.isSelected = false,
  });
}

class PeopleList extends StatefulWidget {
  final List<Person> people;

  PeopleList({
    Key? key,
    required this.people,
  }) : super(key: key);

  @override
  _PeopleListState createState() => _PeopleListState();
}

class _PeopleListState extends State<PeopleList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.people.length,
      itemBuilder: (context, index) {
        final person = widget.people[index];
        return Column(
          children: [
            ListTile(
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Checkbox(
                    value: person.isSelected,
                    onChanged: (bool? newValue) {
                      setState(() {
                        person.isSelected = newValue ?? false;
                      });
                    },
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(person.avatarAsset),
                  ), //
                  // CircleAvatar(
                  //   backgroundImage: NetworkImage(person.imageUrl),
                  // ),
                ],
              ),
              title: Text(person.name),
              subtitle: Text(person.email),
            ),
            Divider(),
          ],
        );
      },
    );
  }
}
