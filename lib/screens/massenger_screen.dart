/*import 'package:flutter/material.dart';

import 'Dio/api_provider.dart';
import 'models/success_stories_model.dart';

class MassengerScreen extends StatefulWidget {
  const MassengerScreen({super.key});

  @override
  State<MassengerScreen> createState() => _MassengerScreenState();
}

class _MassengerScreenState extends State<MassengerScreen> {
  bool isLoading = true;
  SuccessStoriesModel? successStories;
  getData() async {
    successStories = await ApiProvider().getSuccessStories();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[50],
          elevation: 0,
          title: Row(
            children: [
              CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      "https://photos-images.org/wp-content/uploads/2018/02/1968.jpg")),
              SizedBox(
                width: 10,
              ),
              Text(
                "Chats",
                style: TextStyle(
                  color: Colors.pinkAccent,
                ),
              )
            ],
          ),
          actions: [
            CircleAvatar(
                radius: 20,
                child:
                    IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt))),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
                radius: 20,
                child: IconButton(onPressed: () {}, icon: Icon(Icons.edit))),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Search")
                  ])),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 100,
                child: isLoading
                    ? Center(child: const CircularProgressIndicator())
                    : ListView.separated(
                        itemBuilder: (context, index) => buildStoryItem(
                            singleStory: successStories!.model![index]),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) => SizedBox(
                              width: 10,
                            ),
                        itemCount: successStories!.model!.length,
                        scrollDirection: Axis.horizontal),
              ),
              isLoading
                  ? Center(child: const CircularProgressIndicator())
                  : ListView.separated(
                      itemBuilder: (context, index) => buildChatItem(
                          singleStory: successStories!.model![index]),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 10),
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: successStories!.model!.length,
                    )
            ])));
  }
}

Widget buildStoryItem({required Model singleStory}) => Row(
      children: [
        Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      "https://sowaratfal.com/wp-content/uploads/2018/07/%D8%B5%D9%88%D8%B1-%D8%A3%D8%B7%D9%81%D8%A7%D9%84-%D9%85%D9%86%D9%88%D8%B9%D8%A9-15-623x623.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 3, right: 3),
                  child: CircleAvatar(radius: 5, backgroundColor: Colors.green),
                )
              ],
            ),
            Text(singleStory.title!)
          ],
        ),
      ],
    );
Widget buildChatItem({required Model singleStory}) => Row(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  "https://sowaratfal.com/wp-content/uploads/2018/07/%D8%B5%D9%88%D8%B1-%D8%A3%D8%B7%D9%81%D8%A7%D9%84-%D9%85%D9%86%D9%88%D8%B9%D8%A9-15-623x623.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 3, right: 3),
              child: CircleAvatar(radius: 5, backgroundColor: Colors.green),
            )
          ],
        ),
        SizedBox(width: 20),
        Column(
          children: [
            Text(
              singleStory.title!,
            ),
            Row(children: [
              Text("My name is aya salah"),
              SizedBox(
                width: 20,
              ),
              CircleAvatar(radius: 3, backgroundColor: Colors.blue),
              SizedBox(
                width: 20,
              ),
              Text("1:00 pm")
            ])
          ],
        )
      ],
    );
*/