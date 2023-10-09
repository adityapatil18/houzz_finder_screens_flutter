import 'package:flutter/material.dart';
import 'package:screens_practice/feedback_screen.dart';
import 'package:screens_practice/invite_friends_screen.dart';
import 'package:screens_practice/list_your_property.dart';
import 'package:screens_practice/notifications_screen2.dart';

class SettingscreenAnother extends StatefulWidget {
  const SettingscreenAnother({super.key});

  @override
  State<SettingscreenAnother> createState() => _SettingscreenAnotherState();
}

class _SettingscreenAnotherState extends State<SettingscreenAnother> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sofia',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Text(
                      'View and Edit profile ',
                    )
                  ],
                ),
                Container(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/profile.png'),
                  ),
                )
              ],
            ),
            // ListView.builder(
            //   itemCount: 1,
            //   itemBuilder: (context, index) {
            //     return ListTile(
            //       title: Text('Notifications'),
            //     );
            //   },
            // ),
            SizedBox(
              height: 20,
            ),

            Card(
              child: ListTile(
                trailing: Image.asset(
                  'images/notification.png',
                  height: 30,
                  color: Colors.grey,
                ),
                title: Text(
                  'Notifications',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => NotificationsScreen2()));
                },
              ),
            ),
            Card(
              child: ListTile(
                trailing: Image.asset(
                  'images/giftbox.png',
                  color: Colors.grey,
                  height: 30,
                ),
                title: Text(
                  'Invite Friends',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => InviteFriendsScreen()));
                },
              ),
            ),
            Card(
              child: ListTile(
                trailing: Image.asset(
                  'images/coupons.png',
                  color: Colors.grey,
                  height: 35,
                ),
                title: Text(
                  'Credits & Coupons',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Card(
              child: ListTile(
                trailing: Image.asset(
                  'images/coupons.png',
                  height: 30,
                  color: Colors.grey,
                ),
                title: Text(
                  'List Your Property',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ListPropertyScreen()));
                },
              ),
            ),
            Card(
              child: ListTile(
                trailing: Image.asset(
                  'images/settings.png',
                  height: 30,
                  color: Colors.grey,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Card(
              child: ListTile(
                trailing: Image.asset(
                  'images/customerservice.png',
                  height: 30,
                  color: Colors.grey,
                ),
                title: Text(
                  'Help & Support',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Card(
              child: ListTile(
                trailing: Image.asset(
                  'images/feedback.png',
                  height: 30,
                  color: Colors.grey,
                ),
                title: Text(
                  'Give us Feedback',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FeedbackScreen(),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // fixedColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30,
                color: Colors.grey,
              ),
              label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
                size: 30,
                color: Colors.grey,
              ),
              label: 'Saved'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 30,
                color: Colors.grey,
              ),
              label: 'Settings',
              backgroundColor: Colors.black)
        ],
      ),
    );
  }
}
