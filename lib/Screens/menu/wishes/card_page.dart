import 'package:birthday_remainder/Constants/image_path.dart';
import 'package:birthday_remainder/customElement/custom_elements.dart';
import 'package:birthday_remainder/model/birthday_model.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: cardList.length,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [BoxShadow(blurStyle: BlurStyle.outer, blurRadius: 3.0,color: CustomColors.btnColor),]
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 15,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                        image: DecorationImage(
                          image: AssetImage(
                            cardList[index],
                          ),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: InkWell(
                      onTap: (){
                        Share.share("Explore Verxel's app, offering skill development programs for students. Stay tuned for updates on our training programs. Download now! ");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.share,color: CustomColors.black,size: 20,),
                          Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: CustomText(text: 'SHARE',)
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
    );
  }
}
