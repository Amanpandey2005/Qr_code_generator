import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() => runApp(const ModernQRApp());

class ModernQRApp extends StatelessWidget {
  const ModernQRApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hides the debug banner
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.deepPurple),
      home: const QRGeneratorScreen(),
    );
  }
}

class QRGeneratorScreen extends StatefulWidget {
  const QRGeneratorScreen({super.key});

  @override
  State<QRGeneratorScreen> createState() => _QRGeneratorScreenState();
}

class _QRGeneratorScreenState extends State<QRGeneratorScreen> {
  final TextEditingController _controller = TextEditingController();
  String _qrData = "Scan me!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(title: const Text("QR Studio"), centerTitle: true),
      // --- THE FIX STARTS HERE ---
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(), // Makes scrolling feel smoother
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              // The "Beautiful" QR Card
              Center( // Keeps the QR centered
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      )
                    ],
                  ),
                  child: QrImageView(
                    data: _qrData,
                    version: QrVersions.auto,
                    size: 250.0,
                    eyeStyle: const QrEyeStyle(
                      eyeShape: QrEyeShape.circle,
                      color: Colors.deepPurple,
                    ),
                    dataModuleStyle: const QrDataModuleStyle(
                      dataModuleShape: QrDataModuleShape.circle,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              // Input Field
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: "Enter URL or text",
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(Icons.link, color: Colors.deepPurple),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                  // Added a clear button for better UX
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      _controller.clear();
                      setState(() => _qrData = "Scan me!");
                    },
                  ),
                ),
                onChanged: (value) => setState(() => _qrData = value.isEmpty ? "Scan me!" : value),
              ),
              const SizedBox(height: 20),
              const Text(
                "Your QR updates in real-time",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}