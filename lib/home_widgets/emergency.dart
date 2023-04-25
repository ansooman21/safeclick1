import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:safeclick1/home_widgets/policeEmergency.dart';

import 'ambulance_emergency.dart';
import 'army_emergency.dart';
import 'fire_bridge_emergency.dart';

class emergency extends StatelessWidget {
  const emergency({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          ArmyEmergency(),
          policeEmergency(),
          AmbulanceEmergency(),
          FireBrigadeEmergency(),
        ],
      ),
    );
  }
}
