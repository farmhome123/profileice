import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/component/contentnews.dart';
import 'package:flutter_profile/screens/component/contentprofile.dart';
import 'package:flutter_profile/screens/component/contentstock.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int? connent = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        //  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        title: Text('Profile Jirawat Jommanee'),
        leading: IconButton(
          icon: Icon(
            Icons.list,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 10))
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "https://scontent.fcnx4-1.fna.fbcdn.net/v/t1.6435-9/96150659_1284761441721556_1382749344964280320_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=174925&_nc_eui2=AeF4ENOM0SacPegwcaQIGy8rSiEblyxt_blKIRuXLG39ufmtR4gBvgUCrdwO5mHk-kpjNCcGb6vp8jVrYJZ5b6Qd&_nc_ohc=4Ic8DZ8AbiAAX98f21c&_nc_oc=AQmmP0AANsFhh7b-VFtfu5i4_l9UqVo0EFU1PDEsNg1HTJLkzU-EpfvMWipsjyclnME8ldj82iePHi4XOhy1zPud&tn=pVw-vttqax1HU_rm&_nc_ht=scontent.fcnx4-1.fna&oh=00_AT9Gh6S_9HVcdBbiAq2QjzGgsHqpTr3fW4XExq7NBwm4yg&oe=61FD09C8",
                            ))),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.indigo,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton.icon(
                    color: Colors.indigo,
                    onPressed: () {
                      setState(() {
                        connent = 0;
                      });
                    },
                    icon: Icon(
                      Icons.account_box_rounded,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Profile',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  FlatButton.icon(
                    color: Colors.indigo,
                    onPressed: () {
                      setState(() {
                        connent = 1;
                      });
                    },
                    icon: Icon(Icons.shopping_basket, color: Colors.white),
                    label: Text('รายการสินค้า',
                        style: TextStyle(color: Colors.white)),
                  ),
                  FlatButton.icon(
                    color: Colors.indigo,
                    onPressed: () {
                      setState(() {
                        connent = 2;
                      });
                    },
                    icon: Icon(
                      Icons.note,
                      color: Colors.white,
                    ),
                    label: Text(
                      'News',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.indigo,
            ),
            Column(
              children: [
                if (connent == 0) ...[
                  contentprofile(),
                ] else if (connent == 1) ...[
                  contentstock(),
                ] else if (connent == 2) ...[
                  contentnews(),
                ],
              ],
            )
          ],
        ),
      ),
    );
  }
}
