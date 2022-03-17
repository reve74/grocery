import 'package:flutter/material.dart';
import 'package:grocery/helper/appcolors.dart';

class UnitPriceWidget extends StatefulWidget {

  int amount = 0;
  double price = 15.0;
  double cost = 0.0;

  @override
  _UnitPriceWidgetState createState() => _UnitPriceWidgetState();
}

class _UnitPriceWidgetState extends State<UnitPriceWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text.rich(
            TextSpan(children: [
              TextSpan(text: 'Unidad: '),
              TextSpan(
                  text: 'Libra ',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: '(max.20)', style: TextStyle(fontSize: 12))
            ]),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                offset: Offset.zero,
                color: Colors.black.withOpacity(0.1),
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: widget.amount < 20
                    ? () {
                        setState(() {
                          widget.amount++;
                          widget.cost = widget.price * widget.amount;
                        });
                      }
                    : null,
                child: Icon(
                  Icons.add_circle_outline,
                  size: 40,
                  color: AppColors.MEATS,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: widget.amount.toString(),
                              style: TextStyle(fontSize: 35)),
                          TextSpan(text: 'lbs', style: TextStyle(fontSize: 25)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: widget.amount > 0
                    ? () {
                        setState(() {
                          widget.amount--;
                          widget.cost = widget.price * widget.amount;
                        });
                      }
                    : null,
                child: Icon(
                  Icons.remove_circle_outline,
                  size: 40,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Precio: '),
                    TextSpan(
                      text: '\$${widget.price} / lb',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Text(
                '\$${widget.cost}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
