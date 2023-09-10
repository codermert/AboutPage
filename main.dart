import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Image.asset(
              'images/birds.jpg',
              fit: BoxFit.cover,
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Color.fromARGB(120, 20, 10, 40),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AppBar(
                  title: Text("Yazılım Hakkında"),
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      AvatarGlow(
                        endRadius: 80.0,
                        child: Material(
                          elevation: 8.0,
                          shape: CircleBorder(),
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 40.0,
                            child: ClipOval(
                              child: Image.asset(
                                'images/avatar.jpg',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                "Coder Mert",
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 9), // Aradaki boşluğu ayarlayabilirsiniz
                            ],
                          ),
                          Text(
                            "Mobile Developer",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[300],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 30,
                  thickness: 1,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Hakkında",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(16.0),
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.blue,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 24.0,
                              child: ClipOval(
                                child: Image.asset(
                                  'images/avatar.jpg',
                                  width: 48.0,
                                  height: 48.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 8.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Mert",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 3), // Aradaki boşluğu ayarlayabilirsiniz
                                    Icon(
                                      FontAwesomeIcons.checkCircle, // Doğru onay simgesini kullanıyoruz
                                      color: Colors.white, // Simge rengi
                                      size: 13, // Simge boyutu
                                    ),
                                  ],
                                ),
                                Text(
                                  "@codermert",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[300],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Merhaba, ben Mert! Mobile Developer olarak çalışıyorum ve UI/UX tasarımına olan tutkumla her gün yeni projelerde kendimi geliştiriyorum. "
                              "Mobil uygulama dünyasının büyüleyici yolculuğunda yeni deneyimler yaşamayı seviyorum ve kullanıcılar için etkileyici "
                              "ve kullanıcı dostu uygulamalar tasarlamak benim için bir sanattır. Ayrıca boş zamanlarımda kitap okumak ve yeni teknolojilere dalmak gibi hobilerim var. "
                              "Beni takip edin, gelişmelerimi keşfedin ve yeni projelerimde benimle birlikte yol alın!",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "10 Eylül 2023",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[300],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.heart,
                                color: Colors.white,
                                size: 16,
                              ),
                              SizedBox(width: 4),
                              Text(
                                "568.739",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.retweet,
                                color: Colors.white,
                                size: 16,
                              ),
                              SizedBox(width: 4),
                              Text(
                                "15.254",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                           Padding(
                             padding: const EdgeInsets.all(28.0),)
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
