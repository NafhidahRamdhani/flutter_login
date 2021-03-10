import 'package:flutter/material.dart';

class Username extends StatelessWidget {
  const Username({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var usernameInput;
        return TextFormField(
            controller: usernameInput,
        validator: (value){
          if(value.isEmpty){
            return "Isi Username Anda";
          }
          return null;
        },
        
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              //mengatur warna border
                borderSide: BorderSide(color: Colors.blueGrey[50])),
            prefixIcon: Icon(
              // mengatur dan menampilkan icon username 
              Icons.person,
              // ukuran icon
              size: 40,
            ),
            hintText: "Masukkan Username",
            // mengatur warna teks
            hintStyle: TextStyle(color: Colors.green[200]),
            // memberi label username di dekat border
            labelText: "Username"));
  }
}
