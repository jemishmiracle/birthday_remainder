import 'package:birthday_remainder/customElement/custom_elements.dart';
import 'package:birthday_remainder/model/birthday_model.dart';
import 'package:flutter/material.dart';

class QuotesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: quotesList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [BoxShadow(blurStyle: BlurStyle.outer, blurRadius: 3.0,color: CustomColors.btnColor),]
              ),
              child: CustomText(
                text: quotesList[index],
                maxLines: 2,
              ),
            ),
          );
        },
    );
  }
}
