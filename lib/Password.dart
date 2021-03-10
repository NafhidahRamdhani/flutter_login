import 'package:flutter/material.dart';

class Password extends StatelessWidget {
  const Password({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var passwordInput;
    return TextFormField(
        // Agar bisa input password
        obscureText: true,
        controller: passwordInput,
        validator: (value) {
          if (value.isEmpty) {
            return "Isi Password Anda";
          }
          return null;
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
              //mengatur warna border
              borderSide: BorderSide(color: Colors.white)),
          prefixIcon: Icon(
            // mengatur icon lock untuk password
            Icons.lock,
            size: 40,
          ),
          hintText: "Masukkan Password",
          // mengatur warna teks
          hintStyle: TextStyle(color: Colors.green[200]),
          // memberi label password di dekat border
          labelText: "Password",
          labelStyle: TextStyle(color: Colors.green[200]),
        ));
  }
}
