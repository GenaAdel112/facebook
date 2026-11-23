import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: Row(
                children: [
                  Text(
                    'Facebook',
                    style: TextStyle(
                      color: Color(0xFF1877F2),
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Spacer(),
                  Image.asset('assets/images/Plus.png', width: 26, height: 26),
                  SizedBox(width: 12),
                  Image.asset('assets/images/Search.png', width: 25, height: 25),
                  SizedBox(width: 12),
                  Image.asset('assets/images/Messenger.png', width: 25, height: 25),
                ],
              ),
            ),
            Padding(
              padding:EdgeInsets.only(top: 8),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding:EdgeInsets.only(bottom: 8),
                      decoration:BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Color(0xFF1877F2), width: 3),
                        ),
                      ),
                      child:Icon(Icons.home, color: Color(0xFF1877F2), size: 30),
                    ),
                  ),
                  Expanded(
                    child: Icon(Icons.ondemand_video_outlined, color: Colors.grey, size: 30),
                  ),
                  Expanded(
                    child: Icon(Icons.storefront_outlined, color: Colors.grey, size: 30),
                  ),
                  Expanded(
                    child: Icon(Icons.account_circle_outlined, color: Colors.grey, size: 30),
                  ),
                  Expanded(
                    child: Icon(Icons.notifications_none, color: Colors.grey, size: 30),
                  ),
                  Expanded(
                    child: Center(
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey, width: 1),
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/Messy.png',
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(height: 1),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding:EdgeInsets.all(12),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundImage: AssetImage('assets/images/Messy.png'),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "What's in Your Mind?",
                              style: TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                          ),
                          Icon(Icons.photo_library, color: Colors.green, size: 28),
                        ],
                      ),
                    ),
                    Divider(thickness: 2.5, color: Color(0xFF898F9C)),
                    SizedBox(
                      height: 178,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding:EdgeInsets.all(8),
                        children: [
                          createStoryCard('assets/images/Messy2.png'),

                          storyCard(
                            'assets/images/Winner Messy.png',
                            'assets/images/Ellipse2.png',
                          ),

                          storyCard(
                            'assets/images/Rectangle.png',
                            'assets/images/Ronal.png',
                          ),

                          storyCard(
                            'assets/images/42.png',
                            'assets/images/Ahly.png',
                          ),
                        ],
                      ),
                    ),
                    Divider(thickness: 2, color: Color(0xFF898F9C)),
                    postWidget('assets/images/LogoRoute.png', 'assets/images/Route.png'),
                    Divider(thickness: 2, color: Color(0xFF898F9C)),
                    postWidget('assets/images/LogoRoute.png', 'assets/images/Route.png'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget createStoryCard(String image) {
    return Container(
      width: 116,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                ClipRRect(
                  borderRadius:
                  BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.asset(
                    image,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                Positioned(
                  bottom: -14,
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 11,
                      backgroundColor: Color(0xFF1877F2),
                      child: Icon(Icons.add, color: Colors.white, size: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, bottom: 6),
            child: Text(
              'Create a\nStory',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }

  Widget storyCard(String image, String avatar, {bool selected = false}) {
    return Container(
      width: 112,
      margin:EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: selected
            ? Border.all(color:Color(0xFF1E90E0), width: 2)
            : null,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(image, fit: BoxFit.cover),
            Positioned(
              top: 6,
              left: 6,
              child: CircleAvatar(
                radius: 17,
                backgroundColor:Color(0xFF1877F2),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage(avatar),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget postWidget(String logo, String postImage) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:EdgeInsets.all(12),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(logo),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Route',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Text('8h . ',
                            style: TextStyle(color: Colors.grey, fontSize: 12)),
                        Icon(Icons.public, size: 12, color: Colors.grey),
                      ],
                    ),
                  ],
                ),
              ),
              Icon(Icons.more_horiz, size: 22),
            ],
          ),
        ),

        Image.asset(
          postImage,
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.all(12),
          child: Row(
            children: [
              Icon(Icons.favorite_border),
              SizedBox(width: 8),
              Icon(Icons.chat_bubble_outline),
              SizedBox(width: 8),
              Icon(Icons.send_outlined),
              Spacer(),
              Icon(Icons.bookmark_border),
            ],
          ),
        ),
      ],
    );
  }
}