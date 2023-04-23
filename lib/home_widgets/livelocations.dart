import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:safeclick1/home_widgets/livelocations/hospitalcard.dart';
import 'package:safeclick1/home_widgets/livelocations/pharmacycard.dart';
import 'package:safeclick1/home_widgets/livelocations/policestation.dart';
import 'package:url_launcher/url_launcher.dart';

class livelocations extends StatelessWidget {
  const livelocations({Key? key}) : super(key: key);
  static Future<void> openmap(String location) async {
    String googleurl = 'https://www.google.com/maps/search/$location';
    final Uri _url = Uri.parse(googleurl);

    try {
      await launchUrl(_url);
    } catch (e) {
      Fluttertoast.showToast(
          msg: 'Something went wrong! call emergency number');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          policestation_card(onMapFunction: openmap),
          hospitalcard(onMapFunction: openmap),
          pharmacycard(onMapFunction: openmap),
        ],
      ),
    );
  }
}
