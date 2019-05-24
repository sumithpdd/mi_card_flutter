import 'package:flutter/material.dart';
import 'package:mi_card/components/mycontact_detail_body.dart';
import 'package:mi_card/components/mycontact_detail_footer.dart';
import 'package:mi_card/components/mycontact_detail_header.dart';
import 'package:mi_card/mycontact.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyContact myContact;

  loadContact() {
    myContact = MyContact(
      avatar: 'images/sumithsitecoreplane.jpg',
      avatartag: 'sumith',
      name: 'Sumith Parambat Damodaran',
      telephone: '+44 7894521878',
      email: 'sumithpd@gmail.com',
      location: 'London', //'51.509865, -0.118092',
      website: 'www.sumithpd.com',
      description: 'Sitecore Authority',
      twitter: 'https://twitter.com/sumithpdd',
      linkedin: 'https://uk.linkedin.com/in/sumith-damodaran-1b820b4',
    );
  }

  @override
  Widget build(BuildContext context) {
    loadContact();
    var linearGradient = const BoxDecoration(
      gradient: const LinearGradient(
        begin: FractionalOffset.centerRight,
        end: FractionalOffset.bottomLeft,
        colors: <Color>[
          const Color(0xFF413070),
          const Color(0xFF2B264A),
        ],
      ),
    );

    return MaterialApp(
      home: Scaffold(
        body: new SingleChildScrollView(
          child: new Container(
            decoration: linearGradient,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new MyContactDetailHeader(
                  myContact,
                  avatarTag: myContact.avatartag,
                ),
                new Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: new MyContactDetailBody(myContact),
                ),
                new MyContactShowcase(myContact),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
