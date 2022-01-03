
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/Mainmenu/home.dart';
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
      home: detail(),
    );
  }
}

class detail extends StatefulWidget {
  @override
  _detail createState() => _detail();
}


class _detail extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCCF1F5),
      appBar: AppBar(
        title: Text(
          'Detail Pemesanan',
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Detail Pesanan',
                      style: GoogleFonts.heebo(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      height: 5,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Colors.grey[300]
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Kode Pemesanan :',
                          style: GoogleFonts.heebo(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        Text(
                          '00000AAAAA',
                          style: GoogleFonts.heebo(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Kode Antar :',
                          style: GoogleFonts.heebo(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        Text(
                          '00000AAAAA',
                          style: GoogleFonts.heebo(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Dipesan Pada :',
                          style: GoogleFonts.heebo(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        Text(
                          '10:00 WIB (23/12/2021)',
                          style: GoogleFonts.heebo(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Status Laundry',
                      style: GoogleFonts.heebo(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      height: 5,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Colors.grey[300]
                      ),
                    ),
                    Row(
                      children: [
                        Center(
                          child: Container(
                            width: 20,
                            height: 20,
                            child: Center(
                              child: Text(
                                '1',
                                style: GoogleFonts.heebo(
                                  fontSize: 12,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            decoration: BoxDecoration(
                              border:Border.all(
                                width: 1.5,
                                color: Colors.black87,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                                color: Colors.transparent,
                            )
                          ),
                        ),
                        SizedBox(width: 30),
                        Expanded(
                          child: Text(
                            'Berada Tempat Laundry',
                            style: GoogleFonts.heebo(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Center(
                          child: Container(
                            width: 20,
                            height: 20,
                            child: Center(
                              child: Text(
                                '2',
                                style: GoogleFonts.heebo(
                                  fontSize: 12,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            decoration: BoxDecoration(
                              border:Border.all(
                                width: 1.5,
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                                color: Colors.transparent,
                            )
                          ),
                        ),
                        SizedBox(width: 30),
                        Expanded(
                          child: Text(
                            'Dicuci',
                            style: GoogleFonts.heebo(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Center(
                          child: Container(
                            width: 20,
                            height: 20,
                            child: Center(
                              child: Text(
                                '3',
                                style: GoogleFonts.heebo(
                                  fontSize: 12,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            decoration: BoxDecoration(
                              border:Border.all(
                                width: 1.5,
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                                color: Colors.transparent,
                            )
                          ),
                        ),
                        SizedBox(width: 30),
                        Expanded(
                          child: Text(
                            'Siap diambil',
                            style: GoogleFonts.heebo(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Ringkasan Pesanan',
                      style: GoogleFonts.heebo(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      height: 5,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Colors.grey[300]
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Estimasi :',
                          style: GoogleFonts.heebo(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        Text(
                          '10:00 WIB (25/12/2021)',
                          style: GoogleFonts.heebo(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Barang yang dicuci :',
                      style: GoogleFonts.heebo(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '2kg',
                          style: GoogleFonts.heebo(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(width: 30),
                        Expanded(
                          child: Text(
                            'Cuci Kiloan',
                            style: GoogleFonts.heebo(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w400
                            )
                          ),
                        ),
                        Text(
                          '20.000',
                          style: GoogleFonts.heebo(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400
                          )
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '2kg',
                          style: GoogleFonts.heebo(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(width: 30),
                        Expanded(
                          child: Text(
                            'Cuci Kiloan',
                            style: GoogleFonts.heebo(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w400
                            )
                          ),
                        ),
                        Text(
                          '20.000',
                          style: GoogleFonts.heebo(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400
                          )
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Biaya Pengiriman',
                          style: GoogleFonts.heebo(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        Text(
                          '10.000',
                          style: GoogleFonts.heebo(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Diskon',
                          style: GoogleFonts.heebo(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        Text(
                          '10.000',
                          style: GoogleFonts.heebo(
                            fontSize: 15,
                            color: Colors.red,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 3,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Colors.grey[300]
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total :',
                          style: GoogleFonts.heebo(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          '30.000',
                          style: GoogleFonts.heebo(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Status Pembayaran',
                      style: GoogleFonts.heebo(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      height: 5,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Colors.grey[300]
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Status :',
                          style: GoogleFonts.heebo(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        Text(
                          'Lunas',
                          style: GoogleFonts.heebo(
                            fontSize: 15,
                            color: Color(0xff00B7CD),
                            fontWeight: FontWeight.w400
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Dibayar pada :',
                          style: GoogleFonts.heebo(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        Text(
                          '12:30 WIB (23/12/2021)',
                          style: GoogleFonts.heebo(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Metode Pembayaran :',
                          style: GoogleFonts.heebo(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        Text(
                          'Cuci-Koin',
                          style: GoogleFonts.heebo(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Kode Pembayaran :',
                          style: GoogleFonts.heebo(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        Text(
                          '00000AAAA',
                          style: GoogleFonts.heebo(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ),
              SizedBox(height: 100),
              
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: SizedBox(
            width: 60,
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
                'Kontak Cucikan',
                style: GoogleFonts.heebo(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white
                ),
              ),
            ),
          )
        )
      ),
    );
  }
}