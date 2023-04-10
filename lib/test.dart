import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('test'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              children: const [
                Icon(Icons.list_alt),
                Text('Kegiatan'),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Judul Kegiatan',
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: const [
                    Icon(Icons.sort),
                    Text('Kegiatan'),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Judul Kegiatan',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.calendar_month),
                          Text('Tanggal kegiatan'),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 24,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                                hintText: '20-03-2022',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.calendar_month),
                          Text('tanggal selesai'),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 24,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                                hintText: '20-03-2022',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(children: [
              Icon(Icons.category),
              Text('kategori'),
            ]),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(20),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: null,
                    child: const Text('Batal'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: null,
                    child: const Text('Simpan'),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
