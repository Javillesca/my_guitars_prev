import 'package:flutter/material.dart';
import 'package:shoe_store_app/src/widgets/custom_widgets.dart';


class FloatingBarButton extends StatelessWidget {
  final quantity;

  FloatingBarButton({this.quantity});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.15),
        borderRadius: BorderRadius.circular(100)
      ),
      child: Row(
        children: <Widget>[
          SizedBox(width: 20),
          Text(
            '$quantity \€',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          CustomButtonBuy(text: 'Añadir a mi carro'),
          SizedBox(width: 20)
        ],
      ),
    );
  }
}