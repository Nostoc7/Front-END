

import 'package:flutter/material.dart';
import 'package:login_app/Mainmenu/main.dart';

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
      home: pesan(),
    );
  }
}

class pesan extends StatefulWidget {
  @override
  otp_ createState() => otp_();
}

class otp_ extends State<pesan> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color(0xffCCF1F5),
        body: Center(
          child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [     
                Image(
                  image: AssetImage(
                    'assets/logocucikan.png'),
                    fit: BoxFit.contain,
                    width: 180,
                    height: 240),
                SizedBox(
                  height: 30),
                Text('Kami akan mengirimkan pesan kode OTP pada handphone anda. Jangan bagikan kode tersebut dan isilah kode dengan benar',
                  style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 25),
                TextField(
                  autocorrect: false,
                  showCursor: true,
                  cursorColor: Colors.amber,
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.center,
                  textCapitalization: TextCapitalization.none,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15, 
                ),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.mail,
                    size: 30,
                  ),
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.7),
                  borderSide: BorderSide(
                    width: 0.0, style: BorderStyle.none)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.7), borderSide: BorderSide(
                    color: Colors.red,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.7),
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  hintText: "Masukkan kode...",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                  labelText: "Masukkan Kode OTP",
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
               SizedBox(
                  height: 15,),
               new SizedBox(
                width: 150,
                height: 40,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => mainmenu())
                    );
                  }, 
                  child: Text("Submit"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60)),
                    primary: Color(0xff00B7CD),
                    textStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  ),
              ),
              ],
            ), 
          ),
        )
        ),
      );
    }
}