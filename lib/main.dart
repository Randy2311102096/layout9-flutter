import 'package:flutter/material.dart'; // [cite: 1]

void main() {
  runApp(const MyApp()); // [cite: 1]
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // [cite: 1]

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout part 1', // [cite: 1]
      theme: ThemeData(
        primarySwatch: Colors.blue, // [cite: 1]
      ),
      home: const MyHomePage(title: 'Demo Layout part 1'), // [cite: 1]
      debugShowCheckedModeBanner: false, // [cite: 1]
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title}); // [cite: 2]
  final String title; // [cite: 2]

  @override
  State<MyHomePage> createState() => _MyHomePageState(); // [cite: 2]
}

class _MyHomePageState extends State<MyHomePage> {
  // Data list dari gambar ke-2
  final data = const [
    {"tgl": "02/03/2022", "nilai": "150"},
    {"tgl": "01/02/2022", "nilai": "140"},
    {"tgl": "12/01/2022", "nilai": "170"},
    {"tgl": "11/12/2021", "nilai": "110"},
    {"tgl": "10/11/2021", "nilai": "180"},
    {"tgl": "09/10/2021", "nilai": "190"},
    {"tgl": "08/09/2021", "nilai": "160"},
    {"tgl": "07/08/2021", "nilai": "155"},
    {"tgl": "06/07/2021", "nilai": "145"},
    {"tgl": "05/06/2021", "nilai": "140"},
  ]; // [cite: 2]

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( //
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10), //
          child: Column(
            children: [
              // Header Row: Welcome Text & Avatar
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Welcome,", style: TextStyle(color: Color(0xFF7367F0), fontSize: 28, fontWeight: FontWeight.w700)),
                        Text("2311102096 - Randy Lambas Batubara", style: TextStyle(fontSize: 14, color: Color(0xFF4B4B4B))),
                      ],
                    ),
                    const CircleAvatar(radius: 20), //
                  ],
                ),
              ),
              // TOEFL Status Card (Gradient)
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 35),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [Color(0xFF4839EB), Color(0xFF7367F0)]),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    const Text('Status tes TOEFL Anda:', style: TextStyle(color: Colors.white, fontSize: 14)),
                    const Text("LULUS", style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text('Listening\n80', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                        Text('Structure\n80', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                        Text('Reading\n90', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              // Riwayat Tes Title
              Container(
                alignment: Alignment.centerLeft,
                child: const Text('Riwayat Tes', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              ),
              // ListView Builder
              Expanded(
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Tanggal tes:\nNilai:', style: TextStyle(color: Colors.blue, fontSize: 20)),
                            Text('${data[index]["tgl"]!}\n${data[index]["nilai"]!}', style: TextStyle(color: Colors.blue, fontSize: 20)),
                          ],
                        ),
                        const Divider(),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}