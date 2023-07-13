import 'package:flutter/material.dart';
import 'package:toonflix/model/currency.dart';

class CurrencyCard extends StatelessWidget {
  final Currency currency;

  final _blackColor = const Color(0xFF1F2123);
  final whiteColor = Colors.white;

  const CurrencyCard({super.key, required this.currency});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: currency.isInverted ? whiteColor : _blackColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  currency.name,
                  style: TextStyle(
                    color: currency.isInverted ? _blackColor : whiteColor,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      currency.amount,
                      style: TextStyle(
                        color: currency.isInverted ? _blackColor : whiteColor,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      currency.code,
                      style: TextStyle(
                        color: (currency.isInverted ? _blackColor : whiteColor)
                            .withOpacity(0.8),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.translate(
              offset: const Offset(-5, 12),
              child: Transform.scale(
                scale: 2.2,
                child: Icon(
                  currency.icon,
                  color: currency.isInverted ? _blackColor : whiteColor,
                  size: 88,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
