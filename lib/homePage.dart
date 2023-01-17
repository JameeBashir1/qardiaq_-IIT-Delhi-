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
                top: MediaQuery.of(context).size.height*0.035,
                left:MediaQuery.of(context).size.width*0.11,
                child: InkWell(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: MediaQuery.of(context).size.aspectRatio*60,
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
                top: MediaQuery.of(context).size.height*0.038,
                left: MediaQuery.of(context).size.width*0.725,
                child: InkWell(
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: MediaQuery.of(context).size.aspectRatio*60,
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
                top: MediaQuery.of(context).size.height*0.027,
                left: MediaQuery.of(context).size.width*0.817,
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
                    size: MediaQuery.of(context).size.aspectRatio*68,
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
                top: MediaQuery.of(context).size.shortestSide*0.17,
                left: MediaQuery.of(context).size.shortestSide*0.14,
                child: Container(
                  padding: EdgeInsets.all(2),
                  child: CircularPercentIndicator(
                    radius: MediaQuery.of(context).size.shortestSide*0.35,
                    lineWidth: MediaQuery.of(context).size.shortestSide*0.12,
                    animation: true,
                    percent: 69/100,
                    center: Text(
                      "69 BPM",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.aspectRatio*45,
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Color(0xFF004AAD),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Color(0xFF1A1847),
                  ),
                ),
              )

              ,
              //Circle code ends here

              Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width*0.15,
                    top: MediaQuery.of(context).size.height*0.446
                ),
                child: Text('Categories', style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.aspectRatio*52
                ),),
              ),

              // view more option starts here
              Positioned(
                top: MediaQuery.of(context).size.height*0.453,
                left: MediaQuery.of(context).size.width*0.6,
                child: InkWell(
                  child: Row(
                    children: [
                      Text('View More',
                          style: TextStyle(color: Colors.white,
                              fontSize: MediaQuery.of(context).size.aspectRatio*40
                          )),
                      SizedBox(width: MediaQuery.of(context).size.aspectRatio*6),
                      // add some spacing between the text and icon
                      Icon(Icons.arrow_forward, color: Colors.white,
                        size: MediaQuery.of(context).size.aspectRatio*40,),
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
                width: MediaQuery.of(context).size.width*0.175,
                height: MediaQuery.of(context).size.height*0.075,
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.157,
                    top: MediaQuery.of(context).size.height*0.55),
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
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width*0.2,
                    top: MediaQuery.of(context).size.height*0.635),
                child: Text(
                  'B.P.M',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.aspectRatio*35,
                  ),
                ),
              ),
              // Container 1 Text
              Container(
                width: MediaQuery.of(context).size.width*0.175,
                height: MediaQuery.of(context).size.height*0.075,
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width*0.41,
                    top: MediaQuery.of(context).size.height*0.55),
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
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.39,
                    top: MediaQuery.of(context).size.height*0.635),
                child: Text('Temperature', style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.aspectRatio*33
                ),),
              ), // Container 2 Text
              Container(
                width: MediaQuery.of(context).size.width*0.175,
                height: MediaQuery.of(context).size.height*0.075,
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width*0.665,
                    top: MediaQuery.of(context).size.height*0.55),
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
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width*0.7,
                    top: MediaQuery.of(context).size.height*0.635
                ),
                child: Text('Activity', style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.aspectRatio*33
                ),),
              ), // Container 3 Text
              Container(
                width: MediaQuery.of(context).size.width*0.175,
                height: MediaQuery.of(context).size.height*0.075,
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width*0.16,
                    top: MediaQuery.of(context).size.height*0.705),
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
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width*0.155,
                    top: MediaQuery.of(context).size.height*0.794
                ),
                child: Text('Respiration', style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.aspectRatio*35
                ),),
              ), // Container 4 Text
              Container(
                width: MediaQuery.of(context).size.width*0.175,
                height: MediaQuery.of(context).size.height*0.075,
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width*0.415,
                    top: MediaQuery.of(context).size.height*0.705),
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
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width*0.458,
                    top: MediaQuery.of(context).size.height*0.792
                ),
                child: Text('H.R.V', style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.aspectRatio*34
                ),),
              ), //Conatiner 5 Text
              Container(
                width: MediaQuery.of(context).size.width*0.175,
                height: MediaQuery.of(context).size.height*0.075,
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width*0.67,
                    top: MediaQuery.of(context).size.height*0.704),
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
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width*0.7,
                    top: MediaQuery.of(context).size.height*0.79
                ),
                child: Text('Sleep', style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.aspectRatio*34
                ),),
              ), //Container 6 Text
              // 6 Square Containers End Here

              // Navigation bar starts here
              Container(
                width: MediaQuery.of(context).size.width*1,
                height: MediaQuery.of(context).size.height*0.07,
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.07,
                    top: MediaQuery.of(context).size.height*0.88,
                    right: MediaQuery.of(context).size.width*0.07),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
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
                      padding: const EdgeInsets.all(4.0),
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
                      padding: const EdgeInsets.all(4.0),
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
                      padding: const EdgeInsets.all(4.0),
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
