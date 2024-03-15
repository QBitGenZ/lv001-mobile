import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home/home_screen.dart';
import '../verify/accountAuth_screen.dart';


/**
 * Class khung nhap gioi tinh
 */
class GenderContainer extends StatefulWidget {
  @override
  _GenderContainerState createState() => _GenderContainerState();
}

class _GenderContainerState extends State<GenderContainer> {
  String selectedGender = ''; // Biến để lưu trữ giới tính được chọn
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              'Giới tính',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ),
          SizedBox(width: 12.0), // Khoảng cách giữa text và các nút radio
          Container(

            child: Row(
              children: [
                Radio(
                  value: 'Nam',
                  groupValue: selectedGender,
                  onChanged: (String? value) {
                    setState(() {
                      selectedGender = value!;
                    });
                  },
                ),
                Text('Nam'),
                Radio(
                  value: 'Nữ',
                  groupValue: selectedGender,
                  onChanged: (String? value) {
                    setState(() {
                      selectedGender = value!;
                    });
                  },
                ),
                Text('Nữ'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/**
 * Class khung nhap password
 */
class PasswordContainer extends StatefulWidget {
  @override
  _PasswordContainerState createState() => _PasswordContainerState();
}

class _PasswordContainerState extends State<PasswordContainer> {
  bool _obscureText = true;
  late double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;

    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: TextFormField(
          keyboardType: TextInputType.visiblePassword,
          obscureText: _obscureText,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            labelText: 'Mật khẩu',
            suffixIcon: IconButton(
              icon:
                  Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                style: BorderStyle.none,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/**
 * Class khung nhap lai password
 */
class RepasswordContainer extends StatefulWidget {
  @override
  _RepasswordContainerState createState() => _RepasswordContainerState();
}

class _RepasswordContainerState extends State<RepasswordContainer> {
  bool _obscureText = true;
  late double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;

    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: TextFormField(
          keyboardType: TextInputType.visiblePassword,
          obscureText: _obscureText,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            labelText: 'Nhập lại mật khẩu',
            suffixIcon: IconButton(
              icon:
                  Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            ),
            enabledBorder: OutlineInputBorder(

              borderSide: BorderSide(
                style: BorderStyle.none,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SignupScreen extends StatelessWidget {
  late double screenWidth;
  late double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            color: Color(0xFFEEE8DA),
            child: Stack(
              children: [
                Positioned(
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      child: Container(
                          margin: EdgeInsets.only(
                              top: 50, left: screenWidth * 0.0555),
                          child: Image.asset('assets/images/Vector.png'))),
                ),
                Column(
                  children: [
                    titleContainer(context),
                    userContainer(context),
                    lineBetweenContainer(),
                    PasswordContainer(),
                    lineBetweenContainer(),
                    RepasswordContainer(),
                    lineBetweenContainer(),
                    nameContainer(context),
                    lineBetweenContainer(),
                    dobContainer(context),
                    lineBetweenContainer(),
                    GenderContainer(),
                    lineBetweenContainer(),
                    phoneContainer(context),
                    signinbtnContainer(context)
                  ],
                ),
              ],
            )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  /**
   * Widget tieu de trang
   */
  Container titleContainer(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(
            0, (screenHeight * 0.03375) + 55, 0, screenHeight * 0.03375),
        child: Center(
          child: Text(
            "Đăng ký\n" "tài khoản mới",
            style: GoogleFonts.roboto(
                fontSize: 30, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ));
  }

  /**
   * Widget viền giữa các khung
   */
Container lineBetweenContainer(){
    return
      Container(
        height: 1,
        color: Color(0x00D9D9D9),
      );
}
  /**
   * Widget khung nhap username
   */
  Container userContainer(BuildContext context) {
    return Container(

      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: TextFormField(
          // keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            labelText: 'Tài khoản',
            // prefixIcon: Icon(Icons.phone),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              borderSide: BorderSide(
                style: BorderStyle.none,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
  /**
   * Widget khung nhap tên
   */
  Container nameContainer(BuildContext context) {
    return Container(

      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: TextFormField(
          // keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            labelText: 'Họ và tên',
            // prefixIcon: Icon(Icons.phone),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                style: BorderStyle.none,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
  Container phoneContainer(BuildContext context) {
    return Container(

      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: TextFormField(
          // keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            labelText: 'Số điện thoại hoặc gmail',
            // prefixIcon: Icon(Icons.phone),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                style: BorderStyle.none,
                color: Colors.white,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
  /**
   * Widget khung nhap ngay sinh
   */
  Container dobContainer(BuildContext context) {
    return Container(

      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: TextFormField(
          // keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            labelText: 'Ngày sinh',
            // prefixIcon: Icon(Icons.phone),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                style: BorderStyle.none,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }



  /**
   * Widget button đăng nhập
   */
  Container signinbtnContainer(BuildContext context) {
    return Container(
      width: screenWidth * 0.83333,
      height: screenHeight * 0.075,
      margin: EdgeInsets.only(top: screenHeight*0.04125),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => AccountAuthScreen()),
          );
        },
        child: Text(
          'Đăng ký',
          style: GoogleFonts.roboto(
              fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0x00006B28),
          // Màu nền của nút

          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          // Padding nút
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0), // Bo tròn góc nút
          ),
        ),
      ),
    );
  }
}
