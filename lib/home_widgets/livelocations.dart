import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:safeclick1/home_widgets/livelocations/hospitalcard.dart';
import 'package:safeclick1/home_widgets/livelocations/pharmacycard.dart';
import 'package:safeclick1/home_widgets/livelocations/policestation.dart';

class livelocations extends StatelessWidget {
  const livelocations({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [policestation_card(), hospitalcard(), pharmacycard()],
      ),
    );
  }
}
