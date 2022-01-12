import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helloflutter/language.dart';

class HelloFlutterWidget extends StatelessWidget {
  const HelloFlutterWidget(this.helloFlutter, {Key? key}) : super(key: key);

  final HelloFlutter helloFlutter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flag.fromCode(
            helloFlutter.flagCode,
            height: 70,
            width: 70,
          ),
          Text(
            helloFlutter.text,
            style: GoogleFonts.openSans(fontSize: 30),
          ),
          ElevatedButton(
            onPressed: () async {
              await FlutterTts().setLanguage(helloFlutter.locale);
              await FlutterTts().speak(helloFlutter.text);
            },
            child: const Text('Speak'),
          ),
        ],
      ),
    );
  }
}
