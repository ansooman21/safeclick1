import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class policestation_card extends StatelessWidget {
  final Function? onMapFunction;
  const policestation_card({Key? key, this.onMapFunction}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              onMapFunction!('Police Stations near me');
            },
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                height: 80,
                width: 80,
                child: Center(
                  child: Image(
                    height: 60,
                    width: 60,
                    image: AssetImage("assets/policestation1.png"),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: Text("Police Station"),
          )
        ],
      ),
    );
  }
}
