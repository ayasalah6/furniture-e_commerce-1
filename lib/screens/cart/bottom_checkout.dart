import 'package:flutter/material.dart';

import '../../widgets/subtitle_text.dart';
import '../../widgets/title_text.dart';

class CartBottomCheckout extends StatelessWidget {
  const CartBottomCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          border: Border(top: BorderSide(width: 1, color: Colors.grey))),
      child: SizedBox(
        height: kBottomNavigationBarHeight + 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          child: Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(child: TitlesTextWidget(label: "Total(6 Products/6 Items ")),
                    SubtitleTextWidget(
                      label: "3000\$",
                      color: Colors.blue,
                    )
                  ],




                )
                ,
                ElevatedButton(onPressed: (){}, child: Text("checkout"))


              ],
            ),
          ),
        ),
      ),
    );
  }
}
