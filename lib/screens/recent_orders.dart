import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:taptake_wear_os/data_types.dart';

class RecentOders extends StatefulWidget {
  const RecentOders({Key? key}) : super(key: key);

  @override
  State<RecentOders> createState() => _RecentOdersState();
}

class _RecentOdersState extends State<RecentOders> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Ink(
        color: Colors.black,
        child: GestureDetector(
          onHorizontalDragUpdate: Platform.isAndroid ? null : (DragUpdateDetails dud) {
                    if (dud.delta.dx > 5) {
                      Navigator.of(context).pop();
                    }
                  },
          child: Align(
            alignment: Alignment.topCenter,
            child: ListView(
              
              children:  [
                
                Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.3)),
        
                const Divider(thickness: 2),
                Center(child: Text("Pedidos: ", style: Theme.of(context).textTheme.headline2)),
                const Divider(),
          
                OrderCard(Order(1)),
                OrderCard(Order(2)),
                OrderCard(Order(3)),
                OrderCard(Order(4)),
                const Divider(thickness: 2,),
        
                Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.3)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}