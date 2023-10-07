import 'package:flutter/material.dart';
import 'package:task9/secondfile.dart';

void main() {
  runApp(MaterialApp(home:Mydiamondapp()));
}

class Mydiamondapp extends StatefulWidget {
  const Mydiamondapp({super.key});

  @override
  State<Mydiamondapp> createState() => _MydiamondappState();
}

class _MydiamondappState extends State<Mydiamondapp> {
  var user=TextEditingController();
  var password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: [
            SizedBox(height: 80.0),
            Column(
              children: [
                Image.asset("images/diamond.png", height: 40, width: 50),
                SizedBox(height: 16.0),
                Text('SHRINE'),
              ],
            ),
            SizedBox(height: 120.0),
            TextField(
              controller: user,
              decoration: InputDecoration(filled: true, labelText: 'Username'),
            ),
            SizedBox(height: 12.0),
// [Password]
            TextField(
              controller: password,
              decoration: InputDecoration(filled: true, labelText: 'Password'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: Text(
                    'CANCEL',
                    style: TextStyle(color: Colors.purple),
                  ),
                  onPressed: () {
                   user.clear();
                    password.clear();
                  },
                ),
                ElevatedButton(
                  child: Text(
                    'NEXT',
                    style: TextStyle(color: Colors.purple),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => mysecondscreen(data: "Welcome ${user.text} ",passdata: password.text,)));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
