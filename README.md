# 📱 QR Code Generator App (Flutter)

## 🚀 Overview

**QR Code Generator** is a simple and powerful Flutter application that allows users to **generate customizable QR codes instantly** from text, URLs, contact details, or any input data.

This app is designed with a clean UI and real-time preview so users can quickly create and share QR codes for personal, academic, or business use.

---

## ✨ Features

✅ Generate QR Code from Text / URL / Any Data
✅ Real-time QR Preview
✅ Download / Save QR Code as Image
✅ Share QR Code
✅ Input Validation
✅ Lightweight & Fast
✅ Clean Material UI
✅ Cross Platform (Android / iOS / Web)

---

## 📦 Dependencies

Add the following dependencies in `pubspec.yaml`

```yaml
dependencies:
  flutter:
    sdk: flutter
  qr_flutter: ^4.1.0
  path_provider: ^2.0.15
  permission_handler: ^11.0.1
```

---

## 📁 Project Structure

```text
lib/
│
├── screens/
│   └── qr_generator_screen.dart
│
├── widgets/
│   └── qr_preview_widget.dart
│
└── main.dart
```

---

## 🧠 How It Works

1. User enters any **text / URL / data**
2. App uses `qr_flutter` package to **convert input into QR matrix**
3. QR image is rendered on screen
4. User can **save or share the QR code**

---

## 📲 Example QR Generator Widget

```dart
QrImageView(
  data: qrData,
  size: 200,
  backgroundColor: Colors.white,
)
```

---

## 💾 Save QR Code Feature

The generated QR can be stored locally using:

* Device storage permission
* Temporary directory path
* PNG image conversion

This allows users to reuse or share QR codes anytime.

---

## 🎯 Use Cases

* Sharing Website Links
* WiFi Credentials
* Contact Information
* Payment Links
* Event Tickets
* Academic Projects
* Business Cards

---

## ⚠️ Important Notes

* Empty input will not generate QR
* Storage permission required for saving
* Large text may create dense QR patterns
* Test on real device for file saving features

---

## 🚀 Future Enhancements

* 🎨 QR Color Customization
* 🖼️ Logo inside QR Code
* 📜 QR History List
* 🔍 QR Scanner Integration
* 🌙 Dark Mode UI
* ☁️ Cloud Save / Export

---

## 👨‍💻 Author

Developed using **Flutter** for fast and scalable mobile QR generation solutions.

---
