import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class pharmacycard extends StatelessWidget {
  final Function? onMapFunction;
  const pharmacycard({Key? key, this.onMapFunction}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              onMapFunction!('Pharmacies near me');
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
                    image: AssetImage("assets/pharmacy.jpg"),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: Text("Pharmacy"),
          )
        ],
      ),
    );
  }
}
