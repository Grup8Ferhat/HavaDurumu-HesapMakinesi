import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/editable_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hesap Makinesi",
      home: iskele(),
    );
  }
}

class iskele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Basit Hesap Makinesi")),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  num sayi1 = 0, sayi2 = 0, sonuc = 0;

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  sayiTopla() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 + sayi2;
      t1.text = "";
      t2.text = "";
    });
  }

  sayiCikar() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 - sayi2;
      t1.text = "";
      t2.text = "";
    });
  }

  sayiCarp() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 * sayi2;
      t1.text = "";
      t2.text = "";
    });
  }

  sayiBol() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 / sayi2;
      t1.text = "";
      t2.text = "";
    });
  }

  void temizle() {
    setState(() {
      t1.clear();
      t2.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Text("$sonuc"),
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            ElevatedButton(
              onPressed: sayiTopla,
              child: Text("topla"),
            ),
            ElevatedButton(
              onPressed: sayiCikar,
              child: Text("çıkar"),
            ),
            ElevatedButton(
              onPressed: sayiCarp,
              child: Text("çarp"),
            ),
            ElevatedButton(
              onPressed: sayiBol,
              child: Text("böl"),
            ),
          ],
        ),
      ),
    );
  }
}
