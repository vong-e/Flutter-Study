// import 'package:flutter/material.dart';
// import 'package:toonflix/model/currency.dart';
// import 'package:toonflix/widgets/currency_card.dart';

// class CurrencyWallet extends StatelessWidget {
//   final List<Currency> currencyList;

//   const CurrencyWallet({
//     super.key,
//     required this.currencyList,
//   });

//   @override
//   Widget build(BuildContext context) {
//     // return ListView.builder(
//     //   scrollDirection: Axis.vertical,
//     //   itemBuilder: (BuildContext context, int index) {
//     //     return CurrencyCard(currency: currencyList[index]);
//     //   },
//     return Container(
//       color: Colors.red,
//       child: MediaQuery.removePadding(
//         context: context,
//         removeBottom: true,
//         child: ListView.builder(
//           shrinkWrap: true,
//           padding: EdgeInsets.zero,
//           itemCount: currencyList.length,
//           itemBuilder: (BuildContext context, int index) {
//             // print("index: $index card: ${currencyList[index]}");
//             return Transform.translate(
//               offset: Offset(0, currencyList[index].order.toDouble() * -30),
//               child: CurrencyCard(currency: currencyList[index]),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:toonflix/model/currency.dart';
import 'package:toonflix/widgets/currency_card.dart';

class CurrencyWallet extends StatelessWidget {
  final List<Currency> currencyList;

  const CurrencyWallet({
    super.key,
    required this.currencyList,
  });

  @override
  Widget build(BuildContext context) {
    // return ListView.builder(
    //   scrollDirection: Axis.vertical,
    //   itemBuilder: (BuildContext context, int index) {
    //     return CurrencyCard(currency: currencyList[index]);
    //   },
    return MediaQuery.removePadding(
      context: context,
      removeBottom: true,
      child: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: currencyList.length,
        itemBuilder: (BuildContext context, int index) {
          bool isLastItem = currencyList.length == (index + 1);
          return Align(
            heightFactor: isLastItem ? 1 : 0.8,
            alignment: Alignment.topCenter,
            child: CurrencyCard(currency: currencyList[index]),
          );
        },
      ),
    );
  }
}
