import 'package:flutter/material.dart';

class TemperatureScreen extends StatelessWidget {
  const TemperatureScreen({Key? key}) : super(key: key);  // Sửa chỗ này

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chuyển đổi nhiệt độ"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Màn hình chuyển đổi nhiệt độ'),
      ),
    );
  }
}
