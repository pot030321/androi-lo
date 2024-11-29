import 'package:flutter/material.dart';

class DaysInMonthScreen extends StatelessWidget {
  const DaysInMonthScreen({Key? key}) : super(key: key);  // Sửa chỗ này

  @override
  Widget build(BuildContext context) {
    TextEditingController monthController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Số ngày trong tháng"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: monthController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Nhập tháng',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                int month = int.tryParse(monthController.text) ?? 0;
                int days = 0;

                if (month > 0 && month <= 12) {
                  if (month == 2) {
                    days = 28; // Lấy số ngày tháng 2 (không xét năm nhuận)
                  } else if (month == 4 || month == 6 || month == 9 || month == 11) {
                    days = 30;
                  } else {
                    days = 31;
                  }

                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Kết quả'),
                        content: Text('Số ngày trong tháng $month là: $days'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Đóng'),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Lỗi'),
                        content: const Text('Tháng không hợp lệ.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Đóng'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: const Text('Tính số ngày'),
            ),
          ],
        ),
      ),
    );
  }
}
