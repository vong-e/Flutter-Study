import 'package:flutter/material.dart';

class Currency {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final int order;

  const Currency({
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.order,
  }) : isInverted = order % 2 != 0;
}
