import 'package:flutter/material.dart';
import 'welcomeScreen.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
      return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/homeimage.png'), fit: BoxFit.cover,
            )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body:
          Stack(
            children: [
              // App exit button starts here
              Positioned(
                top: 30,
                left: 45,
                child: InkWell(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 30,
                  ),
                  onTap: () async {
                    bool result = await showDialog(
                      context: context,
                      builder: (context) =>
                          AlertDialog(
                            title: Text('Are you sure?'),
                            content: Text('Do you want to exit the app?'),
                            actions: [
                              TextButton(
                                child: Text('No'),
                                onPressed: () =>
                                    Navigator.of(context).pop(false),
                              ),
                              TextButton(
                                child: Text('Yes'),
                                onPressed: () =>
                                    Navigator.of(context).pop(true),
                              ),
                            ],
                          ),
                    );

                    if (result) {
                      SystemNavigator.pop();
                    }
                  },
                ),
              ),
              // App exit button ends here

              // Notification bell starts here
              Positioned(
                top: 32,
                left: 280,
                child: InkWell(
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 30,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()),
                    );
                  },
                ),
              ),

              // Notification bell ends here

              //3 dots icon here
              Positioned(
                top: 24,
                left: 320,
                child: PopupMenuButton<int>(
                  itemBuilder: (context) =>
                  [
                    PopupMenuItem(
                      value: 1,
                      child: Text('Option 1'),
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: Text('Option 2'),
                    ),
                    PopupMenuItem(
                      value: 3,
                      child: Text('Option 3'),
                    ),
                  ],
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: 30,
                  ),
                  onSelected: (value) {
                    // Handle selection of menu options here
                  },
                ),
              ),

              //3 dot icon ends here

              // Circle code starts here
                  // other widgets in the stack...
              Positioned(
                top: 60,
                left: 50,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: CircularPercentIndicator( //circular progress indicator
                    radius: 140.0, //radius for circle
                    lineWidth: 50.0, //width of circle line
                    animation: true, //animate when it shows progress indicator first
                    percent: 60/100, //vercentage value: 0.6 for 60% (60/100 = 0.6)
                    center: Text(
                      "60 BPM",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white,  // text color
                      ),
                    ), //center text, you can set Icon as well
                    backgroundColor: Colors.lightGreen,
                    circularStrokeCap: CircularStrokeCap.round, //corner shape of progress bar at start/end
                    progressColor: Colors.blue,  // circle color
                  ),
                ),
              )
              ,
              //Circle code ends here

              Container(
                padding: EdgeInsets.only(left: 65, top: 380),
                child: Text('Categories', style: TextStyle(
                    color: Colors.white,
                    fontSize: 25
                ),),
              ),

              // view more option starts here
              Positioned(
                top: 385,
                left: 230,
                child: InkWell(
                  child: Row(
                    children: [
                      Text('View More',
                          style: TextStyle(color: Colors.white, fontSize: 17)),
                      SizedBox(width: 6),
                      // add some spacing between the text and icon
                      Icon(Icons.arrow_forward, color: Colors.white, size: 16,),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()),
                    );
                  },
                ),
              ),


              //view more option ends here
              // 6 Square Containers Start Here
              Container(
                width: 70,
                height: 65,
                margin: EdgeInsets.only(left: 62, top: 470),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                //Container 1 Image
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Image.asset('assets/bpm.png', fit: BoxFit.contain),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 76, top: 540),
                child: Text(
                  'B.P.M',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
              // Container 1 Text
              Container(
                width: 70,
                height: 65,
                margin: EdgeInsets.only(left: 162, top: 470),
                decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Image.asset('assets/temp.png', fit: BoxFit.contain),
                  ),
                ),
              ), // Container 2 Image
              Container(
                padding: EdgeInsets.only(left: 155, top: 540),
                child: Text('Temperature', style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                ),),
              ), // Container 2 Text
              Container(
                width: 70,
                height: 65,
                margin: EdgeInsets.only(left: 262, top: 470),
                decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Image.asset(
                        'assets/activity.png', fit: BoxFit.contain),
                  ),
                ),
              ), // Container 3 Image
              Container(
                padding: EdgeInsets.only(left: 272, top: 540),
                child: Text('Activity', style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                ),),
              ), // Container 3 Text
              Container(
                width: 70,
                height: 60,
                margin: EdgeInsets.only(left: 62, top: 600),
                decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Image.asset('assets/resp.png', fit: BoxFit.contain),
                  ),
                ),
              ), // Container 4 Image
              Container(
                padding: EdgeInsets.only(left: 60, top: 670),
                child: Text('Respiration', style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                ),),
              ), // Container 4 Text
              Container(
                width: 70,
                height: 60,
                margin: EdgeInsets.only(left: 162, top: 600),
                decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Image.asset('assets/hrv.png', fit: BoxFit.contain),
                  ),
                ),
              ), //Container 5 Image
              Container(
                padding: EdgeInsets.only(left: 178, top: 670),
                child: Text('H.R.V', style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                ),),
              ), //Conatiner 5 Text
              Container(
                width: 70,
                height: 60,
                margin: EdgeInsets.only(left: 262, top: 600),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Image.asset('assets/zzz.png', fit: BoxFit.contain),
                  ),
                ),
              ), // Container 6 Image
              Container(
                padding: EdgeInsets.only(left: 278, top: 670),
                child: Text('Sleep', style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                ),),
              ), //Container 6 Text
              // 6 Square Containers End Here

              // Navigation bar starts here
              Container(
                width: 340,
                height: 60,
                margin: EdgeInsets.only(left: 28, top: 760),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WelcomeScreen()),
                          );
                        },
                        child: Column(
                          children: [
                            ImageIcon(AssetImage('assets/home.png')),
                            Text('Home'),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WelcomeScreen()),
                          );
                        },
                        child: Column(
                          children: [
                            ImageIcon(AssetImage('assets/cart.png')),
                            Text('My Cart'),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WelcomeScreen()),
                          );
                        },
                        child: Column(
                          children: [
                            ImageIcon(AssetImage('assets/bell.png')),
                            Text('My Mail'),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WelcomeScreen()),
                          );
                        },
                        child: Column(
                          children: [
                            ImageIcon(AssetImage('assets/profile.png')),
                            Text('Profile'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              //Navigation bar ends here

            ],
          ),
        ),
      );
  }
}
