import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RecentOders extends StatefulWidget {
  const RecentOders({Key? key}) : super(key: key);

  @override
  State<RecentOders> createState() => _RecentOdersState();
}

class _RecentOdersState extends State<RecentOders> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
      
            Center(child: Text("Pedido 1", style: Theme.of(context).textTheme.headline2)),
            const Divider(),
      
            Center(child: Text("Pedido 2", style: Theme.of(context).textTheme.headline2)),
            const Divider(),
      
            Center(child: Text("Pedido 3", style: Theme.of(context).textTheme.headline2)),
            const Divider(thickness: 2,),
    
            Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.3)),
          ],
        ),
      ),
    );
  }
}