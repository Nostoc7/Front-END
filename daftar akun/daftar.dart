

import 'package:flutter/material.dart';
import 'package:login_app/daftar%20akun/otp.dart';

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
      home: daftar(),
    );
  }
}

class daftar extends StatefulWidget {
  @override
  register createState() => register();
}

class register extends State<daftar> {
  bool _securetext = true;
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
                Text('Isilah Data di bawah ini dengan benar',
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
                    Icons.phone,
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
                  hintText: "Masukkan Nomor Telepon...",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                  labelText: "Nomor Telepon",
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
                SizedBox(
                  height: 15,),
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
                obscureText: _securetext,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye),
                    onPressed: (){
                      setState(() {
                        _securetext = !_securetext;
                      });
                    },),
                  icon: Icon(
                    Icons.lock,
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
                  hintText: "Masukkan Password...",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                  labelText: "Password",
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                  height: 15,),
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
                obscureText: _securetext,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye),
                    onPressed: (){
                      setState(() {
                        _securetext = !_securetext;
                      });
                    },),
                  icon: Icon(
                    Icons.lock,
                    size: 30,
                  ),
                border:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.7),
                  borderSide: BorderSide(
                    width: 0.0, style: BorderStyle.none)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.7),
                  borderSide: BorderSide(
                    color: Colors.red,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.7),
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),

                  hintText: "Masukkan Kembali Password...",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                  labelText: "Konfirmasi Password",
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
                    MaterialPageRoute(builder: (context) => pesan())
                  );
                }, 
                child: Text("Daftar"),
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
        ),
      ));
    }
}