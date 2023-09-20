import 'package:flutter/material.dart';

// classnya ini nanti bisa dipanggil sama void main
// jadi skrng kita mau buat container yang berisi argumen dan manggil styletextcontainer ini. nanti textnya tinggal taruh di argumen dan style textnya bakalan langsung apply ke textnya itu

class StyleTextContainer extends StatelessWidget {
  // const StyleTextContainer(String text, {super.key}) : outputText = text;

  // String outputText;

  const StyleTextContainer(this.text, {super.key});

  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}
