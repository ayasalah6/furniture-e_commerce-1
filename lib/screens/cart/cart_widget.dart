import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:untitled8/screens/cart/quantity_btm_sheet.dart';
import 'package:untitled8/widgets/subtitle_text.dart';

import '../../widgets/title_text.dart';

class CartWidget extends StatelessWidget {
  CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return FittedBox(
      
        child: Column(
          children: [
            IntrinsicWidth(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: FancyShimmerImage(
                            imageUrl:
                                "https://housing.com/news/wp-content/uploads/2022/11/living-room-furniture-design-compressed-1.jpg",
                            height: size.height * 0.2,
                            width: size.height * 0.2)),
                    SizedBox(width: 10),
                    IntrinsicWidth(
                      child: Column(children: [
                        Row(
                          children: [
                            SizedBox(
                              width: size.width * 0.6,
                              child: TitlesTextWidget(label: "beige sofa"),
                            ),
                            Column(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.clear, color: Colors.red)),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(IconlyLight.heart, color: Colors.red))
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SubtitleTextWidget(
                                label: "200\$", fontSize: 20, color: Colors.blue),
                            OutlinedButton.icon(
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                    side: BorderSide(width: 2, color: Colors.blue)),
                                onPressed: () async{
                                  await showModalBottomSheet(backgroundColor: Theme.of(context).scaffoldBackgroundColor
                                  ,
      
                                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.only(topLeft:Radius.circular(16),topRight: Radius.circular(16) ))
                                     , context:context,builder:(context){return QuantityBottomSheetWidget();});
      
      
                                },
                                icon: Icon(IconlyLight.arrowDown2),
                                label: Text("Qty:6"))
                          ],
                        )
                      ]),
                    )
                  ],
                ),
              ),
            ),
          IntrinsicWidth(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: FancyShimmerImage(
                        imageUrl:
                            "https://www.universalfurniture.com/images/slides/2023/desktop/10182_LaborDay_Website_Sliders_v2-1_1920x794.jpg",
                        height: size.height * 0.2,
                        width: size.height * 0.2)),
                SizedBox(width: 10),
                IntrinsicWidth(
                  child: Column(children: [
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.6,
                          child: TitlesTextWidget(label: "beautiful tabel"),
                        ),
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.clear, color: Colors.red)),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(IconlyLight.heart, color: Colors.red))
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SubtitleTextWidget(
                            label: "1000\$", fontSize: 20, color: Colors.blue),
                        OutlinedButton.icon(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                side: BorderSide(width: 2, color: Colors.blue)),
                            onPressed: () async{
                              await showModalBottomSheet(backgroundColor: Theme.of(context).scaffoldBackgroundColor
                              ,
      
                                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.only(topLeft:Radius.circular(16),topRight: Radius.circular(16) ))
                                 , context:context,builder:(context){return QuantityBottomSheetWidget();});
      
      
                            },
                            icon: Icon(IconlyLight.arrowDown2),
                            label: Text("Qty:6"))
                      ],
                    )
                  ]),
                )
              ],
            ),
          ),
        ),
           IntrinsicWidth(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: FancyShimmerImage(
                        imageUrl:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwQNlPZVsUxJ94j8xsjMfQky_HMV7T2zpWRhungj_ZlYNKMOS05wWl3-q3h4wh-oQfDcI&usqp=CAU",
                        height: size.height * 0.2,
                        width: size.height * 0.2)),
                SizedBox(width: 10),
                IntrinsicWidth(
                  child: Column(children: [
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.6,
                          child: TitlesTextWidget(label: "different chair"),
                        ),
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.clear, color: Colors.red)),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(IconlyLight.heart, color: Colors.red))
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SubtitleTextWidget(
                            label: "200\$", fontSize: 20, color: Colors.blue),
                        OutlinedButton.icon(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                side: BorderSide(width: 2, color: Colors.blue)),
                            onPressed: () async{
                              await showModalBottomSheet(backgroundColor: Theme.of(context).scaffoldBackgroundColor
                              ,
      
                                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.only(topLeft:Radius.circular(16),topRight: Radius.circular(16) ))
                                 , context:context,builder:(context){return QuantityBottomSheetWidget();});
      
      
                            },
                            icon: Icon(IconlyLight.arrowDown2),
                            label: Text("Qty:6"))
                      ],
                    )
                  ]),
                )
              ],
            ),
          ),
        ),
           IntrinsicWidth(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: FancyShimmerImage(
                        imageUrl:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXUITgxynzOrTxHSSDy9TdvF2yu2jHZRiJvw&usqp=CAU",
                        width: size.height * 0.2)),
                SizedBox(width: 10),
                IntrinsicWidth(
                  child: Column(children: [
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.6,
                          child: TitlesTextWidget(label: "chic antique"),
                        ),
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.clear, color: Colors.red)),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(IconlyLight.heart, color: Colors.red))
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SubtitleTextWidget(
                            label: "200\$", fontSize: 20, color: Colors.blue),
                        OutlinedButton.icon(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                side: BorderSide(width: 2, color: Colors.blue)),
                            onPressed: () async{
                              await showModalBottomSheet(backgroundColor: Theme.of(context).scaffoldBackgroundColor
                              ,
      
                                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.only(topLeft:Radius.circular(16),topRight: Radius.circular(16) ))
                                 , context:context,builder:(context){return QuantityBottomSheetWidget();});
      
      
                            },
                            icon: Icon(IconlyLight.arrowDown2),
                            label: Text("Qty:6"))
                      ],
                    )
                  ]),
                )
              ],
            ),
          ),
        ),
           IntrinsicWidth(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: FancyShimmerImage(
                        imageUrl:
                            "https://hips.hearstapps.com/hmg-prod/images/index-luxuryfurniture-1659361945.jpg?resize=1200:*",
                        height: size.height * 0.2,
                        width: size.height * 0.2)),
                SizedBox(width: 10),
                IntrinsicWidth(
                  child: Column(children: [
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.6,
                          child: TitlesTextWidget(label: "white sofa"),
                        ),
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.clear, color: Colors.red)),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(IconlyLight.heart, color: Colors.red))
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SubtitleTextWidget(
                            label: "250\$", fontSize: 20, color: Colors.blue),
                        OutlinedButton.icon(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                side: BorderSide(width: 2, color: Colors.blue)),
                            onPressed: () async{
                              await showModalBottomSheet(backgroundColor: Theme.of(context).scaffoldBackgroundColor
                              ,
      
                                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.only(topLeft:Radius.circular(16),topRight: Radius.circular(16) ))
                                 , context:context,builder:(context){return QuantityBottomSheetWidget();});
      
      
                            },
                            icon: Icon(IconlyLight.arrowDown2),
                            label: Text("Qty:6"))
                      ],
                    )
                  ]),
                )
              ],
            ),
          ),
        ),
           IntrinsicWidth(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: FancyShimmerImage(
                        imageUrl:
                            "https://www.thefurnituremarket.co.uk/media/wysiwyg/HomePageBlocks/dining-room-furniture.jpg",
                        height: size.height * 0.2,
                        width: size.height * 0.2)),
                SizedBox(width: 10),
                IntrinsicWidth(
                  child: Column(children: [
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.6,
                          child: TitlesTextWidget(label: "blue dinning tabel"),
                        ),
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.clear, color: Colors.red)),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(IconlyLight.heart, color: Colors.red))
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SubtitleTextWidget(
                            label: "500\$", fontSize: 20, color: Colors.blue),
                        OutlinedButton.icon(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                side: BorderSide(width: 2, color: Colors.blue)),
                            onPressed: () async{
                              await showModalBottomSheet(backgroundColor: Theme.of(context).scaffoldBackgroundColor
                              ,
      
                                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.only(topLeft:Radius.circular(16),topRight: Radius.circular(16) ))
                                 , context:context,builder:(context){return QuantityBottomSheetWidget();});
      
      
                            },
                            icon: Icon(IconlyLight.arrowDown2),
                            label: Text("Qty:6"))
                      ],
                    )
                  ]),
                )
              ],
            ),
          ),
        ),  IntrinsicWidth(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: FancyShimmerImage(
                        imageUrl:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRovwd08CnXazTn_5mUt6nhGU_I8V_JGjlTeA&usqp=CAU",
                        height: size.height * 0.2,
                        width: size.height * 0.2)),
                SizedBox(width: 10),
                IntrinsicWidth(
                  child: Column(children: [
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.6,
                          child: TitlesTextWidget(label: "brown dinning tabel"),
                        ),
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.clear, color: Colors.red)),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(IconlyLight.heart, color: Colors.red))
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SubtitleTextWidget(
                            label: "600\$", fontSize: 20, color: Colors.blue),
                        OutlinedButton.icon(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                side: BorderSide(width: 2, color: Colors.blue)),
                            onPressed: () async{
                              await showModalBottomSheet(backgroundColor: Theme.of(context).scaffoldBackgroundColor
                              ,
      
                                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.only(topLeft:Radius.circular(16),topRight: Radius.circular(16) ))
                                 , context:context,builder:(context){return QuantityBottomSheetWidget();});
      
      
                            },
                            icon: Icon(IconlyLight.arrowDown2),
                            label: Text("Qty:6"))
                      ],
                    )
                  ]),
                )
              ],
            ),
          ),
        ),
         ],
        ),
      
    );
  }
}
