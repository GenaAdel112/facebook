import 'package:facebook_task2/Home_Screen.dart';
import'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen2  extends StatefulWidget{
  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}
class _LoginScreen2State extends State<LoginScreen2> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 10),
            Center(
              child: Image.asset(
                  'assets/images/facebook.png', width: 100, height: 100
              ),
            ),
            SizedBox(height: 60),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Mobile Number or Email Address',
                hintStyle: TextStyle(color: Color(0xFF898F9C), fontSize: 16),
                filled: true,
                fillColor: Color(0xFFF2F2F2).withOpacity(0.47),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide:BorderSide(color: Color(0xFF898F9C)
                  ),),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Color(0xFF898F9C)),
                ),
              ),
            ),
            SizedBox(height: 24),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: _obscurePassword,
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(color: Color(0xFF898F9C), fontSize: 16),
                filled: true,
                fillColor: Color(0xFFF2F2F2).withOpacity(0.47),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Color(0xFF898F9C)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Color(0xFF898F9C)),
                ),
                suffixIcon:IconButton(
                  icon: Icon(_obscurePassword ? Icons.visibility_off : Icons.visibility,
                      color: Color(0xFF898F9C)),
                  onPressed: (){
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
              style:ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF1877F2),
                alignment: Alignment.center,
                padding: EdgeInsetsGeometry.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text('Login',style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              ),
            ),
            SizedBox(height: 24),
            Center(
              child: Text('Forgotten Password ?',style: TextStyle(
                color: Color(0xFF898F9C),
                fontSize: 16,
              ),
              ),
            ),
            SizedBox(height: 224),
            OutlinedButton(onPressed: (){},
              style: OutlinedButton.styleFrom(
                padding:EdgeInsets.symmetric(vertical: 16),
                side: BorderSide(color: Color(0xFF1877F2), width: 1.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text('Create Account',style: TextStyle(
                color: Color(0xFF1877F2),
                fontSize: 16,
              ),),),
            SizedBox(height: 10,),
            Image.asset('assets/images/Meta Logo.png',width: 98,height: 40,),




          ],
        ),
      ),
      ),
    );
  }
}