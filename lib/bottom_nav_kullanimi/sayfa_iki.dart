import 'package:flutter/material.dart';

class SayfaIki extends StatefulWidget {
  const SayfaIki({super.key});

  @override
  State<SayfaIki> createState() => _SayfaIkiState();
}

class _SayfaIkiState extends State<SayfaIki> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: const Text("Sayfa 2",style: TextStyle(fontSize: 30,color: Colors.black54),),
    );
  }
}
