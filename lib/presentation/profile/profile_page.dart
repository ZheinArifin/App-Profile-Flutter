import 'package:flutter/material.dart';

import 'widgets/card_profile_information_widget.dart';
import 'widgets/discover_list_item_widget.dart';
import 'widgets/futured_articles_widget.dart';
import 'widgets/title_and_subtitle_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<Map<String, dynamic>> listTitle = [
    {'title': 'Nature', 'desc': 'Let us plant more trees from this year'},
    {'title': 'Travel', 'desc': "These are the top place in the world visit"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
            ),
            Column(
              children: [
                CardProfileInformation(),
                TitleAndSubtitle(
                  title: "Notable Works",
                  subTitle: "Based on the popularity of articles",
                ),
                Container(
                  child: natureDiscoveryData(),
                ),
                FeaturedArticlesWidget()
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget natureDiscoveryData() {
    return Container(
      height: 230,
      margin: EdgeInsets.all(20),
      child: ListView.builder(
        itemCount: listTitle.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return DiscoverListItemWidget(
            title: listTitle[index]['title'],
            description: listTitle[index]['desc'],
          );
        },
      ),
    );
  }
}
