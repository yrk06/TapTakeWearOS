import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Order {
  
  Order(this.id);

  final DateTime deliveryDate = DateTime.now().add(const Duration(minutes: 10));
  final DateTime orderDate = DateTime.now();
  final int id;

}

class OrderCard extends StatelessWidget {
  const OrderCard(this.od, {Key? key}) : super(key: key);

  final Order od;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => null,
      child: Column(
        children: [
          Center(child: Text("Pedido ${od.id}", style: Theme.of(context).textTheme.headline2)),
          Center(child: Text("${od.orderDate.hour}:${od.orderDate.minute}", style: Theme.of(context).textTheme.bodyText1)),
        ],
      ),
    );
  }
}