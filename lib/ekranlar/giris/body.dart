import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_uygulama_ornek/ekranlar/anaSayfa/ana_sayfa.dart';

import '../../datalar/demo_data.dart';

class GirisGovde extends StatelessWidget {
  const GirisGovde({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);

    return Column(
      children: [
        Expanded(
          flex: 14,
          child: PageView.builder(
            controller: controller,
            scrollDirection: Axis.horizontal,
            itemCount: sliderData.length,
            onPageChanged: (value) {},
            itemBuilder: (context, index) => Center(
              child: Column(
                children: [
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: SvgPicture.asset(sliderData[index]['resim']),
                    ),
                  ),
                  Text('${index + 1}. Slider'),
                ],
              ),
            ),
          ),
        ),
        Spacer(flex: 1),
        Padding(
          padding: EdgeInsets.all(18),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(18),
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AnaSayfa(),
                  ),
                );
              },
              child: Text("ANA SAYFA"),
            ),
          ),
        ),
      ],
    );
  }
}
