import 'package:flutter/material.dart';

class UnitConverterScreen extends StatelessWidget {
  const UnitConverterScreen({Key? key}) : super(key: key);  // Sửa chỗ này

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chuyển đổi đơn vị đo"), 
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Màn hình chuyển đổi đơn vị đo'),
      ),
    );
  }
}
