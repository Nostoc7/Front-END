import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        height: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(
            Radius.circular(30.0)
          )
        ),
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Syarat dan Ketentuan',
                  style: GoogleFonts.heebo(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '-',
                      style: GoogleFonts.heebo(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Berlaku pada setiap pengguna baru',
                      style: GoogleFonts.heebo(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '-',
                      style: GoogleFonts.heebo(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Promo dapat digunakan dengan Cuci-Koin\ndan Tunai',
                      style: GoogleFonts.heebo(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '-',
                      style: GoogleFonts.heebo(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Promo berlaku dengan minimal\npemesanan Rp.30.000',
                      style: GoogleFonts.heebo(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '-',
                      style: GoogleFonts.heebo(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Promo dapat digunakan dengan\npembayaran langsung atau pembayaran\nnanti',
                      style: GoogleFonts.heebo(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
                width: 120,
                height: 30,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff00B7CD),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0)
                    ),
                  ),
                  onPressed: (){},
                  child: Text(
                    'Gunakan',
                    style: GoogleFonts.heebo(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white
                    ),
                  ),
                ),
              )
          ]
        )
      ),
    );
  }
}