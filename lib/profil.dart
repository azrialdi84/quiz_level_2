import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Myprofile extends StatelessWidget {
  const Myprofile({super.key});
  static const nameRoute = '/Myprofile';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          title: Row(
            children: [
              Container(
                child: Text(
                  "Profil",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                width: 300,
                child: Text(
                  "v.2402-2702",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              )
            ],
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/logo_hsi.png",
                  alignment: Alignment.center,
                  //color: Color(0xFF21366f),
                  scale: 7,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Azrialdi",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "ARN181-26036",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.black,
                    elevation: 0,
                    padding: EdgeInsets.all(5),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      SizedBox(width: 15),
                      Image.asset(
                        "assets/edit.png",
                        color: Color(0xFF21366f),
                        scale: 28,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Ubah",
                        style: TextStyle(
                          color: Color(0xFF21366f),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(),
            Container(
              height: 60,
              //color: Colors.blueAccent,
              child: Row(
                children: [
                  Image.asset(
                    "assets/whatsapp.png",
                    alignment: Alignment.center,
                    color: Color(0xFF21366f),
                    scale: 1.5,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nomor Whatsapp",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "62-816202988",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              //color: Colors.blueAccent,
              child: Row(
                children: [
                  Image.asset(
                    "assets/ic_home.png",
                    alignment: Alignment.center,
                    color: Color(0xFF21366f),
                    scale: 1.2,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Alamat",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Kp Sayuran, Kelurahan Kertajaya, Kecamatan Pebayuran",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              //color: Colors.blueAccent,
              child: Row(
                children: [
                  Image.asset(
                    "assets/pin.png",
                    alignment: Alignment.center,
                    color: Color(0xFF21366f),
                    scale: 20,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kabupaten/Kota, Provinsi, Kode Pos",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "KAB. BEKASI, JAWA BARAT, 17710",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              //color: Colors.blueAccent,
              child: Row(
                children: [
                  Image.asset(
                    "assets/ring.png",
                    alignment: Alignment.center,
                    color: Color(0xFF21366f),
                    scale: 20,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Status Pernikahan /  Jumlah Anak",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Menikah / 3",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Row(
              children: [
                Image.asset(
                  "assets/headphone.png",
                  scale: 20,
                  color: Color(0xFF21366f),
                ),
                SizedBox(width: 10),
                Text(
                  "List Admin",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Nova Wiliyanto",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 5),
                Text(
                  "  (ARN221-16218)",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              "Silsilah Ilmiyyah 6 : Beriman Kepada Malaikat",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              "Grup: ARN231-10",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Program Reguler",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Color(0xFF21366f),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.all(10),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        "Hubungi",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 15),
                      Image.asset(
                        "assets/whatsapp.png",
                        color: Colors.white,
                        scale: 1.5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(),
            Row(
              children: [
                Text(
                  "TEDI BRAJADENTAS",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  "ARN221-16218",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              "Silsilah Ilmiyyah 6 : Beriman Kepada Malaikat",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              "Grup: ARN231-10",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Program Reguler",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Color(0xFF21366f),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.all(10),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        "Hubungi",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 15),
                      Image.asset(
                        "assets/whatsapp.png",
                        color: Colors.white,
                        scale: 1.5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(),
            SizedBox(height: 6),
            Row(
              children: [
                Image.asset(
                  "assets/ic_info.png",
                  color: Color(0xFF21366f),
                  scale: 1.2,
                ),
                SizedBox(width: 10),
                Text(
                  "Info Lainnya",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/unlock.png",
                      color: Color(0xFF21366f),
                      scale: 23,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Ganti Password",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    ">",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/help.png",
                      color: Color(0xFF21366f),
                      scale: 20,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Bantuan",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    ">",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/verified.png",
                      color: Color(0xFF21366f),
                      scale: 25,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Kebijakan Privasi",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    ">",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.black,
                  elevation: 0,
                  side: BorderSide(
                    width: 1,
                    color: Colors.red,
                  )),
              onPressed: () {},
              child: Text(
                "Keluar",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
