
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/Mainmenu/home.dart';
import 'package:login_app/dialog/customdialog.dart';
import 'package:login_app/login/login.dart';
import 'package:login_app/isilaundry/diskon.dart';

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
      home: diskon(),
    );
  }
}

class DialogHelper {
  static exit(context) => showDialog(
    context: context, 
    builder: (context) => CustomDialog()
    );
}

class diskon extends StatefulWidget {
  @override
  _diskon createState() => _diskon();
}

class _diskon extends State<diskon>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xffCCF1F5),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black87
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Diskon yang Tersedia',
          style: GoogleFonts.heebo(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black87
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20) 
          )
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10
          ),
          child: Column(
            children: [
              SizedBox(height: 20),
              InkWell(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/logocucikan.png',
                        fit: BoxFit.cover,
                        width: 70,
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Promo Terbatas',
                              style: GoogleFonts.heebo(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.red
                              ),
                            ),
                            Text(
                              'SUPER PROMO 60%',
                              style: GoogleFonts.heebo(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87
                              ),
                            ),
                            Text(
                              'Berlaku hingga 30/12/2021',
                              style: GoogleFonts.heebo(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          DialogHelper.exit(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                            color: Colors.white
                          ),
                          child: Icon(
                            Icons.keyboard_arrow_right_sharp,
                            color: Colors. black87,
                            size: 30,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}