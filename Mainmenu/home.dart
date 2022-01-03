
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/Mainmenu/home.dart';
import 'package:login_app/isilaundry/laundry.dart';
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
      home: home(),
    );
  }
}

class home extends StatefulWidget {
  @override
  _home createState() => _home();
}


class _home extends State<home> {
  bool _switchValue1=true;
  bool _switchValue2=true;
  bool _switchValue3=true;
  @override
    Widget build(BuildContext context) {
      double width = MediaQuery.of(context).size.width;
      double height = MediaQuery.of(context).size.height;
      return Scaffold(
        drawer: Drawer(
          child: Container(
            padding: EdgeInsets.all(20),
            color: Color(0xff00B7CD),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 25),
                Text(
                  'Filter Pencarian',
                  style: GoogleFonts.heebo(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
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
                SizedBox(height: 25),
                TextButton(
                  onPressed: (){},
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Terbaik',
                            style: GoogleFonts.heebo(
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          CupertinoSwitch(
                            value: _switchValue1,
                            activeColor: Color(0xffCCF1F5),
                            onChanged: (value){
                              setState(() {
                                _switchValue1 = value;
                              });
                            }
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                TextButton(
                  onPressed: (){},
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Termurah',
                            style: GoogleFonts.heebo(
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          CupertinoSwitch(
                            value: _switchValue2,
                            activeColor: Color(0xffCCF1F5),
                            onChanged: (value){
                              setState(() {
                                _switchValue2 = value;
                              });
                            }
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                TextButton(
                  onPressed: (){},
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Terdekat',
                            style: GoogleFonts.heebo(
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          CupertinoSwitch(
                            value: _switchValue3,
                            activeColor: Color(0xffCCF1F5),
                            onChanged: (value){
                              setState(() {
                                _switchValue3 = value;
                              });
                            }
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffCCF1F5),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0)
                    ),
                  ),
                  onPressed: () {}, 
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Cari',
                            style: GoogleFonts.heebo(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff00B7CD),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ),                
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Text(
            'Cari Laundry',
            style: GoogleFonts.heebo(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white
            ),
          ),
          backgroundColor: Color(0xff00B7CD),
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20) 
            )
          ),
          elevation: 0.0,
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Cari Laundry ...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.zero,
                  filled: true,
                  fillColor: Colors.white
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Color(0xffCCF1F5),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(height: 20),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => laundry()
                      )
                    );
                  }, 
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 85,
                          height: 85,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage('https://cdn.linkumkm.id/library/4/8/2/1/5/48215_840x576.jpg'),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30)
                            )
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Laundry Pak Maman',
                              style: GoogleFonts.heebo(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87
                              ),
                            ),
                            Text(
                              'Buka hingga 19:00',
                              style: GoogleFonts.heebo(
                                fontSize: 12,
                                color: Colors.grey
                              ),
                            ),
                            Text(
                              'Mulai dari Rp.5000/kg',
                              style: GoogleFonts.heebo(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey[500]
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Colors.yellow,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '4.8',
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    color: Colors.black
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => laundry()
                      )
                    );
                  }, 
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 85,
                          height: 85,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage('https://cdn.linkumkm.id/library/4/8/2/1/5/48215_840x576.jpg'),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30)
                            )
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Laundry Pak Maman',
                              style: GoogleFonts.heebo(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87
                              ),
                            ),
                            Text(
                              'Buka hingga 19:00',
                              style: GoogleFonts.heebo(
                                fontSize: 12,
                                color: Colors.grey
                              ),
                            ),
                            Text(
                              'Mulai dari Rp.5000/kg',
                              style: GoogleFonts.heebo(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey[500]
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Colors.yellow,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '4.8',
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    color: Colors.black
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => laundry()
                      )
                    );
                  }, 
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 85,
                          height: 85,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage('https://cdn.linkumkm.id/library/4/8/2/1/5/48215_840x576.jpg'),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30)
                            )
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Laundry Pak Maman',
                              style: GoogleFonts.heebo(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87
                              ),
                            ),
                            Text(
                              'Buka hingga 19:00',
                              style: GoogleFonts.heebo(
                                fontSize: 12,
                                color: Colors.grey
                              ),
                            ),
                            Text(
                              'Mulai dari Rp.5000/kg',
                              style: GoogleFonts.heebo(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey[500]
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Colors.yellow,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '4.8',
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    color: Colors.black
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => laundry()
                      )
                    );
                  }, 
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 85,
                          height: 85,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage('https://cdn.linkumkm.id/library/4/8/2/1/5/48215_840x576.jpg'),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30)
                            )
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Laundry Pak Maman',
                              style: GoogleFonts.heebo(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87
                              ),
                            ),
                            Text(
                              'Buka hingga 19:00',
                              style: GoogleFonts.heebo(
                                fontSize: 12,
                                color: Colors.grey
                              ),
                            ),
                            Text(
                              'Mulai dari Rp.5000/kg',
                              style: GoogleFonts.heebo(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey[500]
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Colors.yellow,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '4.8',
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    color: Colors.black
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => laundry()
                      )
                    );
                  }, 
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 85,
                          height: 85,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage('https://cdn.linkumkm.id/library/4/8/2/1/5/48215_840x576.jpg'),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30)
                            )
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Laundry Pak Maman',
                              style: GoogleFonts.heebo(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87
                              ),
                            ),
                            Text(
                              'Buka hingga 19:00',
                              style: GoogleFonts.heebo(
                                fontSize: 12,
                                color: Colors.grey
                              ),
                            ),
                            Text(
                              'Mulai dari Rp.5000/kg',
                              style: GoogleFonts.heebo(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey[500]
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Colors.yellow,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '4.8',
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    color: Colors.black
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          )
        )
      );
    }
}       