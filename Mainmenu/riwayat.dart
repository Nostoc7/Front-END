
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/Mainmenu/home.dart';
import 'package:login_app/detail/detail.dart';
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
      home: riwayat(),
    );
  }
}

class riwayat extends StatefulWidget {
  @override
  _riwayat createState() => _riwayat();
}


class _riwayat extends State<riwayat> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffCCF1F5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Riwayat',
          style: GoogleFonts.heebo(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white
          ),
        ),
        backgroundColor: Color(0xff00B7CD),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20) 
          )
        ),
      ),
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
                        builder: (context) => halamanawal()
                      )
                    );
                  }, 
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                    height: 120,
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
                            Container(
                              height: 5,
                              width: width * 0.55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200),
                                  color: Colors.grey[300]
                              ),
                            ),
                            Text(
                              'Status : Belum dibayar',
                              style: GoogleFonts.heebo(
                                fontSize: 15,
                                color: Colors.red
                              ),
                            ),
                            Text(
                              'Tekan untuk melihat pemesanan',
                              style: GoogleFonts.heebo(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.italic,
                                color: Colors.grey[500]
                              ),
                            ),
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
                        builder: (context) => detail()
                      )
                    );
                  }, 
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                    height: 120,
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
                            Container(
                              height: 5,
                              width: width * 0.55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200),
                                  color: Colors.grey[300]
                              ),
                            ),
                            Text(
                              'Status : Sudah dibayar',
                              style: GoogleFonts.heebo(
                                fontSize: 15,
                                color: Color(0xff00B7CD)
                              ),
                            ),
                            Text(
                              'Tekan untuk melihat pemesanan',
                              style: GoogleFonts.heebo(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.italic,
                                color: Colors.grey[500]
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ]
            )      
        )
      ),
    );
  }
}     