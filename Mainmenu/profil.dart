

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/Mainmenu/profil.dart';
import 'package:login_app/login/login.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: profil(),
    );
  }
}

class profil extends StatefulWidget {
  @override
  _profil createState() => _profil();
}


class _profil extends State<profil> {
  @override
    Widget build(BuildContext context) {
      double width = MediaQuery.of(context).size.width;
      double height = MediaQuery.of(context).size.height;
      return Stack(
        fit: StackFit.expand,
        children: [
          Scaffold(
            backgroundColor: Color(0xffCCF1F5),
            body: SingleChildScrollView(
                child : Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Container(
                        height: height * 0.4,
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            double innerheight = constraints.maxHeight;
                            double innerwidth = constraints.maxWidth;
                            return Stack(
                              fit: StackFit.expand,
                              children: [
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child : 
                                    Container(
                                      height: innerheight * 0.85,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.white
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 20),
                                          Text(
                                            'Jhon Doe',
                                            style: GoogleFonts.nunito(
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff00B7CD),
                                              fontSize: 25,
                                              ),
                                            ),
                                          SizedBox(height: 10),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        child: Image.asset(
                                                          'assets/logocucikan.png',
                                                          fit: BoxFit.cover,
                                                          width: 30
                                                        )
                                                      ),
                                                      SizedBox(width: 10),
                                                      Text(
                                                        '20000',
                                                        style: TextStyle(
                                                          color: Colors.grey[900],
                                                          fontSize: 20,
                                                        )
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 10),
                                                  ElevatedButton.icon(
                                                    icon: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                      size: 20
                                                    ),
                                                    onPressed: (){},
                                                    label: Text('Top up Koin'),
                                                    style: ElevatedButton.styleFrom(
                                                      primary: Color(0xff00B7CD),
                                                      shape: new RoundedRectangleBorder(
                                                        borderRadius: new BorderRadius.circular(10.0)
                                                      ),
                                                    )
                                                  ),
                                                ],
                                              ),
                                              SizedBox(width: 20),
                                              Container(
                                                height: 80,
                                                width: 7,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(200),
                                                  color: Colors.grey[300]
                                                ),
                                              ),
                                              SizedBox(width: 25),
                                              Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        child: Icon(
                                                          Icons.star_border_rounded,
                                                          size: 30,
                                                        )
                                                      ),
                                                      SizedBox(width: 5),
                                                      Text(
                                                      'No Member',
                                                      style: GoogleFonts.nunito(
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: 17,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 10),
                                                  ElevatedButton.icon(
                                                    icon: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                      size: 20
                                                    ),
                                                    onPressed: (){},
                                                    label: Text('Upgrade'),
                                                    style: ElevatedButton.styleFrom(
                                                      primary: Color(0xff00B7CD),
                                                      shape: new RoundedRectangleBorder(
                                                        borderRadius: new BorderRadius.circular(10.0)
                                                      ),
                                                    )
                                                  ),
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  right: 0,
                                  child: Center(
                                    child: Container(
                                      width: innerwidth * 0.35,
                                      height: innerheight* 0.35,
                                      decoration: new BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Color(0xffCCF1F5),
                                          width: 8.0
                                        ),
                                        image: new DecorationImage(
                                          fit: BoxFit.fill,
                                          image: new NetworkImage(
                                            "https://i.imgur.com/BoN9kdC.png"
                                          )
                                        )
                                      )
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.all(20),
                        height: 450,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            TextButton(
                              onPressed: () {},
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'Edit Profil',
                                        style: GoogleFonts.heebo(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff00B7CD),
                                        ),
                                      ),
                                      Icon(
                                        Icons.edit,
                                        color: Color(0xff00B7CD)
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                    Container(
                                      height: 5,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(200),
                                        color: Colors.grey[300]
                                      ),
                                    ),
                                ],
                              )
                            ),
                            SizedBox(height: 20),
                            TextButton(
                              onPressed: () {},
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'Pengaturan',
                                        style: GoogleFonts.heebo(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff00B7CD),
                                        ),
                                      ),
                                      Icon(
                                        Icons.settings,
                                        color: Color(0xff00B7CD)
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                    Container(
                                      height: 5,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(200),
                                        color: Colors.grey[300]
                                      ),
                                    ),
                                ],
                              )
                            ),
                            SizedBox(height: 20),
                            TextButton(
                              onPressed: () {},
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'Tentang',
                                        style: GoogleFonts.heebo(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff00B7CD),
                                        ),
                                      ),
                                      Icon(
                                        Icons.book,
                                        color: Color(0xff00B7CD)
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                    Container(
                                      height: 5,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(200),
                                        color: Colors.grey[300]
                                      ),
                                    ),
                                ],
                              )
                            ),
                            SizedBox(height: 20),
                            TextButton(
                              onPressed: () {},
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'Notifikasi',
                                        style: GoogleFonts.heebo(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff00B7CD),
                                        ),
                                      ),
                                      Icon(
                                        Icons.alarm,
                                        color: Color(0xff00B7CD)
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                    Container(
                                      height: 5,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(200),
                                        color: Colors.grey[300]
                                      ),
                                    ),
                                ],
                              )
                            ),
                            SizedBox(height: 20),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => halamanawal())
                                );
                              }, 
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'Keluar Akun',
                                        style: GoogleFonts.heebo(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff00B7CD),
                                        ),
                                      ),
                                      Icon(
                                        Icons.logout,
                                        color: Color(0xff00B7CD)
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                    Container(
                                      height: 5,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(200),
                                        color: Colors.grey[300]
                                      ),
                                    ),
                                ],
                              )
                            ),
                          ],
                        )
                      )
                    ],
                  )
                )
              ),
          )
        ],
      );
    }
}