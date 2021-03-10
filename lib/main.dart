import 'package:flutter/material.dart';
import 'package:flutter_kai/Password.dart';
import 'package:flutter_kai/Username.dart';

// Ketika Flutter dijalankan, maka secara otomatis akan mengeksekusi class 
// yang menjadi value dari runApp() yang berada di dalam method main()
void main() {
  runApp(MyApp());
}

// Class MyApp() meng-extend StatelessWidget
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // untuk mengatur route, theme,dsb
    return MaterialApp(
      title: 'Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //mengatur warna icon didalam border
        primaryColor: Colors.green[200],
      ),
      home: Login(),
    );
  }
}

// Class MLogin meng-extend StatefulWidget
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String username = "Admin";
  String password = "Admin123";
  String alert = "Siap Login";
  
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController usernameInput = new TextEditingController();
  TextEditingController passwordInput = new TextEditingController();


  void prosesLogin() {}
  
  @override
  Widget build(BuildContext context) {
    // untuk mengatur struktur visual layout
    return Scaffold(
      // fungsi body disini untuk memuat content
        body: Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(8),
      // mengatur warna background login
      color: Colors.grey[800],
      child: Column(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                // mengatur background warna icon
                color: Colors.green[200],
                shape: BoxShape.circle),
            child: Center(
              child: Icon(
                // icon kereta api
                Icons.directions_railway,
                // ukuran icon
                size: 50,
                 // mengatur warna icon bagian dalam
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          //mengatur teks, font, color 
          Text(
            "Hello Admin, Silahkan Masuk!",
            style: TextStyle(fontSize: 20, color: Colors.blueGrey[50]),
          ),

          
// space untuk username
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
            ],
          ),

          Text(alert),


          Column(
            children: [
              SizedBox(
                height: 20,
              ),
            ],
          ),

          Username(),

          

// space untuk password
        SizedBox(
            height: 20,
          ),

          // Form(
          //   key: _formKey,
          //   child: null,),

          Password(),

        
// space untuk card
// fungsi sizedbox adalah 
        SizedBox(
          // untuk mengatur tinggi pada button (masuk)
            height: 10,
          ),

          Card(
            // untuk memberikan warna pada button
            color: Colors.green[200],
            elevation: 5,
            child: Container(
              // mengatur tinggi
              height: 50,
              // button loginnya terbuat dari Inkwell
              child: InkWell(
                splashColor: Colors.blueGrey[50],
             // Ketika di klik atau di tab, akan keluar warna putih
              onTap: (){},
              child: Center(
                child: Text("Masuk", style: TextStyle(fontSize: 20, color: Colors.white),
              )
              ),
            ),
          )
          )
        ],
      ),
    )
  );
}
}