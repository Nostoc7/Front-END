
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/Mainmenu/home.dart';
import 'package:login_app/isilaundry/diskon.dart';
import 'package:login_app/login/login.dart';
import 'package:login_app/isilaundry/laundry.dart';

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
      home: laundry(),
    );
  }
}

class laundry extends StatefulWidget {
  @override
  _laundry createState() => _laundry();
}


class _laundry extends State<laundry>{
  int _n = 0;  
  void add(){
    setState(() {
      _n++;
    });
  }
  void minus(){
    setState(() {
      if (_n !=0)
      _n--;
    });
  }
  void max(){
    setState(() {
      if (_n==20)
      print('Full');
    });
  }

  bool isChecked = false;
  @override
  Widget build(BuildContext context){
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Color(0xffCCF1F5);
      }
      return Color(0xff00B7CD);
    }
    return Scaffold(
      backgroundColor: Color(0xffCCF1F5),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black87 
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Laundry Pak Maman',
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
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Slot',
                        style: GoogleFonts.heebo(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black87
                        ),
                      ),
                      Text(
                        '20',
                        style: GoogleFonts.heebo(
                          fontSize: 14,
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 5,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: Colors.grey[300]
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jarak',
                        style: GoogleFonts.heebo(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black87
                        ),
                      ),
                      Text(
                        '1.8 Km',
                        style: GoogleFonts.heebo(
                          fontSize: 14,
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 5,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: Colors.grey[300]
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rating',
                        style: GoogleFonts.heebo(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black87
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 20,
                          ),
                          SizedBox(width: 7),
                          Text(
                            '4.7',
                            style: GoogleFonts.heebo(
                              fontSize: 14,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w400
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 5,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: Colors.grey[300]
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Delivery',
                        style: GoogleFonts.heebo(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black87
                        ),
                      ),
                      Text(
                        'Rp. 10.000',
                        style: GoogleFonts.heebo(
                          fontSize: 14,
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.fromLTRB(30, 13, 30, 13),
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Kupon Diskon',
                          style: GoogleFonts.heebo(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '60% SUPER SALE',
                          style: GoogleFonts.heebo(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.black87
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                      width: 80,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          primary: Color(0xff00B7CD),
                          side: BorderSide(
                            width: 2,
                            color: Color(0xff00B7CD)
                          ),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20.0)
                          ),
                        ),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => diskon()
                            )
                          );
                        },
                        child: Text(
                          'Pilih',
                          style: GoogleFonts.heebo(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            color: Color(0xff00B7CD)
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.fromLTRB(30, 13, 30, 13),
                height: 380,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cuci Kiloan',
                      style: GoogleFonts.heebo(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black87
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 5,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Colors.grey[300]
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '1 Jam Jadi',
                              style: GoogleFonts.heebo(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Colors.black87
                              ),
                            ),
                            Text(
                              'Rp. 10.000/kg',
                              style: GoogleFonts.heebo(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.grey[500]
                              ),
                            ),
                          ],
                        ),
                        Checkbox(
                          checkColor: Colors.white,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0)
                          ),
                          fillColor: MaterialStateProperty.resolveWith(getColor),
                          value: isChecked,
                          onChanged: (bool? value){
                            setState(() {
                              isChecked = value!;
                            });
                          }
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '1 Hari Jadi',
                              style: GoogleFonts.heebo(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Colors.black87
                              ),
                            ),
                            Text(
                              'Rp. 5.000/kg',
                              style: GoogleFonts.heebo(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.grey[500]
                              ),
                            ),
                          ],
                        ),
                        Checkbox(
                          checkColor: Colors.white,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0)
                          ),
                          fillColor: MaterialStateProperty.resolveWith(getColor),
                          value: isChecked,
                          onChanged: (bool? value){
                            setState(() {
                              isChecked = value!;
                            });
                          }
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '2 Hari Jadi',
                              style: GoogleFonts.heebo(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Colors.black87
                              ),
                            ),
                            Text(
                              'Rp. 4.000/kg',
                              style: GoogleFonts.heebo(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.grey[500]
                              ),
                            ),
                          ],
                        ),
                        Checkbox(
                          checkColor: Colors.white,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0)
                          ),
                          fillColor: MaterialStateProperty.resolveWith(getColor),
                          value: isChecked,
                          onChanged: (bool? value){
                            setState(() {
                              isChecked = value!;
                            });
                          }
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '3 Hari Jadi',
                              style: GoogleFonts.heebo(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Colors.black87
                              ),
                            ),
                            Text(
                              'Rp. 3.000/kg',
                              style: GoogleFonts.heebo(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.grey[500]
                              ),
                            ),
                          ],
                        ),
                        Checkbox(
                          checkColor: Colors.white,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0)
                          ),
                          fillColor: MaterialStateProperty.resolveWith(getColor),
                          value: isChecked,
                          onChanged: (bool? value){
                            setState(() {
                              isChecked = value!;
                            });
                          }
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '1 Minggu Jadi',
                              style: GoogleFonts.heebo(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Colors.black87
                              ),
                            ),
                            Text(
                              'Rp. 2.000/kg',
                              style: GoogleFonts.heebo(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.grey[500]
                              ),
                            ),
                          ],
                        ),
                        Checkbox(
                          checkColor: Colors.white,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0)
                          ),
                          fillColor: MaterialStateProperty.resolveWith(getColor),
                          value: isChecked,
                          onChanged: (bool? value){
                            setState(() {
                              isChecked = value!;
                            });
                          }
                        )
                      ],
                    ),
                  ],
                )
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.fromLTRB(30, 13, 30, 13),
                height: 320,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cuci Barang',
                      style: GoogleFonts.heebo(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black87
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 5,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Colors.grey[300]
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '1 Jam Jadi',
                              style: GoogleFonts.heebo(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Colors.black87
                              ),
                            ),
                            Text(
                              'Rp. 10.000/kg',
                              style: GoogleFonts.heebo(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.grey[500]
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              child: FloatingActionButton(
                                elevation: 1.0,
                                onPressed: (){
                                  if (_n==20)
                                  max();
                                  else add();
                                },
                                child: Icon(
                                  Icons.add,
                                  size: 17,
                                  color: Color(0xff00B7CD)
                                ),
                                backgroundColor: Colors.white,
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              '$_n',
                              style: GoogleFonts.heebo(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff00B7CD),
                              )
                            ),
                            SizedBox(width: 8),
                            Container(
                              width: 24,
                              height: 24,
                              child: FloatingActionButton(
                                elevation: 1.0,
                                backgroundColor: Colors.white,
                                onPressed: minus,
                                child: Icon(
                                  Icons.remove,
                                  size: 17,
                                  color: Color(0xff00B7CD)
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '1 Hari Jadi',
                              style: GoogleFonts.heebo(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Colors.black87
                              ),
                            ),
                            Text(
                              'Rp. 5.000/kg',
                              style: GoogleFonts.heebo(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.grey[500]
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              child: FloatingActionButton(
                                elevation: 1.0,
                                onPressed: (){
                                  if (_n==20)
                                  max();
                                  else add();
                                },
                                child: Icon(
                                  Icons.add,
                                  size: 17,
                                  color: Color(0xff00B7CD)
                                ),
                                backgroundColor: Colors.white,
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              '$_n',
                              style: GoogleFonts.heebo(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff00B7CD),
                              )
                            ),
                            SizedBox(width: 8),
                            Container(
                              width: 24,
                              height: 24,
                              child: FloatingActionButton(
                                elevation: 1.0,
                                backgroundColor: Colors.white,
                                onPressed: minus,
                                child: Icon(
                                  Icons.remove,
                                  size: 17,
                                  color: Color(0xff00B7CD)
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '2 Hari Jadi',
                              style: GoogleFonts.heebo(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Colors.black87
                              ),
                            ),
                            Text(
                              'Rp. 4.000/kg',
                              style: GoogleFonts.heebo(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.grey[500]
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              child: FloatingActionButton(
                                elevation: 1.0,
                                onPressed: (){
                                  if (_n==20)
                                  max();
                                  else add();
                                },
                                child: Icon(
                                  Icons.add,
                                  size: 17,
                                  color: Color(0xff00B7CD)
                                ),
                                backgroundColor: Colors.white,
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              '$_n',
                              style: GoogleFonts.heebo(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff00B7CD),
                              )
                            ),
                            SizedBox(width: 8),
                            Container(
                              width: 24,
                              height: 24,
                              child: FloatingActionButton(
                                elevation: 1.0,
                                backgroundColor: Colors.white,
                                onPressed: minus,
                                child: Icon(
                                  Icons.remove,
                                  size: 17,
                                  color: Color(0xff00B7CD)
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '3 Hari Jadi',
                              style: GoogleFonts.heebo(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Colors.black87
                              ),
                            ),
                            Text(
                              'Rp. 3.000/kg',
                              style: GoogleFonts.heebo(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.grey[500]
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              child: FloatingActionButton(
                                elevation: 1.0,
                                onPressed: (){
                                  if (_n==20)
                                  max();
                                  else add();
                                },
                                child: Icon(
                                  Icons.add,
                                  size: 17,
                                  color: Color(0xff00B7CD)
                                ),
                                backgroundColor: Colors.white,
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              '$_n',
                              style: GoogleFonts.heebo(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff00B7CD),
                              )
                            ),
                            SizedBox(width: 8),
                            Container(
                              width: 24,
                              height: 24,
                              child: FloatingActionButton(
                                elevation: 1.0,
                                backgroundColor: Colors.white,
                                onPressed: minus,
                                child: Icon(
                                  Icons.remove,
                                  size: 17,
                                  color: Color(0xff00B7CD)
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '1 Minggu Jadi',
                              style: GoogleFonts.heebo(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Colors.black87
                              ),
                            ),
                            Text(
                              'Rp. 2.000/kg',
                              style: GoogleFonts.heebo(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.grey[500]
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              child: FloatingActionButton(
                                elevation: 1.0,
                                onPressed: (){
                                  if (_n==20)
                                  max();
                                  else add();
                                },
                                child: Icon(
                                  Icons.add,
                                  size: 17,
                                  color: Color(0xff00B7CD)
                                ),
                                backgroundColor: Colors.white,
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              '$_n',
                              style: GoogleFonts.heebo(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff00B7CD),
                              )
                            ),
                            SizedBox(width: 8),
                            Container(
                              width: 24,
                              height: 24,
                              child: FloatingActionButton(
                                elevation: 1.0,
                                backgroundColor: Colors.white,
                                onPressed: minus,
                                child: Icon(
                                  Icons.remove,
                                  size: 17,
                                  color: Color(0xff00B7CD)
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ),
              SizedBox(height: 20),
            ],
          )
        )
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: AutomaticNotchedShape(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20) 
            )
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Estimasi Biaya',
                    style: GoogleFonts.heebo(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    'Rp. 50.000',
                    style: GoogleFonts.heebo(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff00B7CD),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0)
                    ),
                  ),
                  onPressed: (){},
                  child: Text(
                    'Menuju Pemesanan',
                    style: GoogleFonts.heebo(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white
                    ),
                  ),
                ),
              )
            ],
          )
        )
      ),
    );
  }
}