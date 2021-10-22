import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BiodataPage extends StatelessWidget {
  void _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BIODATA"),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 200,
                  width: 200,
                  child: Image.asset("images/IMG_5852.jpg")),
              Text("NIM : A11.2019.12024"),
              Text("NAMA : ZULFAN FIRDAUS S "),
              Text("HOBBY : OLAHRAGA"),
              Text("DESKRIPSI : sANAGAT GANTENG"),
              InkWell(
                  onTap: () {
                    _launchURL("https://goo.gl/maps/j5tnZv1Xa6y1JjxP9");
                  },
                  child: Text("ALAMAT : JAWA TENGAH")),
              InkWell(
                  onTap: () {
                    _launchURL("tel:+6287827951188");
                  },
                  child: Text("TELP : +6287827951188")),
              InkWell(
                  onTap: () {
                    _launchURL(
                        "mailto:zulfanzul95@gmail.com?subject=APA&body=HAY");
                  },
                  child: Text("EMAIL : zulfanzul95@gmail.com"))
            ],
          )
        ],
      ),
    );
  }
}
