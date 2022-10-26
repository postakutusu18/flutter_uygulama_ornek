import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uygulama_ornek/ekranlar/diger_sayfa.dart';

class BosSayfa extends StatelessWidget {
  final int sayfaNo;
  const BosSayfa({super.key, required this.sayfaNo});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Center(
            child: Text('Sayfa $sayfaNo'),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DigerSayfa(),
                ),
              );
            },
            child: Text('Diğer Sayfa'))
      ],
    );
  }
}
