import 'package:flutter/material.dart';
import 'temperature_screen.dart';
import 'unit_converter_screen.dart';
import 'days_in_month_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ứng dụng chuyển đổi'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TemperatureScreen()),
                );
              },
              child: const Text('Chuyển đổi nhiệt độ'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UnitConverterScreen()),
                );
              },
              child: const Text('Chuyển đổi đơn vị đo'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DaysInMonthScreen()),
                );
              },
              child: const Text('Tính số ngày trong tháng'),
            ),
          ],
        ),
      ),
    );
  }
}
