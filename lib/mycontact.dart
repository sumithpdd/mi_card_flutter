import 'dart:convert';
import 'package:meta/meta.dart';

class MyContact {
  MyContact({
    @required this.avatar,
    @required this.avatartag,
    @required this.name,
    @required this.telephone,
    @required this.email,
    @required this.location,
    @required this.website,
    @required this.description,
    @required this.twitter,
    @required this.linkedin,
  });

  final String avatar;
  final String name;
  final String email;
  final String telephone;
  final String location;
  final String website;
  final String description;
  final String twitter;
  final String linkedin;
  final String avatartag;

  static List<MyContact> allFromResponse(String response) {
    var decodedJson = json.decode(response).cast<String, dynamic>();

    return decodedJson['results']
        .cast<Map<String, dynamic>>()
        .map((obj) => MyContact.fromMap(obj))
        .toList()
        .cast<MyContact>();
  }

  static MyContact fromMap(Map map) {
    var name = map['name'];

    return new MyContact(
      avatar: map['picture']['large'],
      name: '${_capitalize(name['first'])} ${_capitalize(name['last'])}',
      email: map['email'],
      location: _capitalize(map['location']['state']),
    );
  }

  static String _capitalize(String input) {
    return input.substring(0, 1).toUpperCase() + input.substring(1);
  }
}
