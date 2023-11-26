// import 'dart:io';
// import 'dart:ui' as ui;
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class PhotoEditingScreen extends StatefulWidget {
//   @override
//   _PhotoEditingScreenState createState() => _PhotoEditingScreenState();
// }

// class _PhotoEditingScreenState extends State<PhotoEditingScreen> {
//   File? _imageFile;
//   double rotationAngle = 0.0;
//   final picker = ImagePicker();
//   double blurValue = 0.0;
//   Color blurColor = Colors.transparent;

//   Future<void> getImage() async {
//     final pickedFile = await picker.pickImage(source: ImageSource.gallery);
//     if (pickedFile != null) {
//       setState(() {
//         _imageFile = File(pickedFile.path);
//         rotationAngle = 0.0;
//       });
//     }
//   }

//   Widget _applyFilter() {
//     if (_imageFile != null) {
//       return ImageFiltered(
//         imageFilter: ui.ImageFilter.blur(sigmaX: blurValue, sigmaY: blurValue),
//         child: ColorFiltered(
//           colorFilter: ColorFilter.mode(blurColor, BlendMode.color),
//           child: Image.file(
//             _imageFile!,
//             width: 300,
//             height: 300,
//             fit: BoxFit.cover,
//             alignment: Alignment.center,
//           ),
//         ),
//       );
//     } else {
//       return Text('No image selected');
//     }
//   }

//   void rotateImage() {
//     setState(() {
//       rotationAngle += 90.0;
//       if (rotationAngle >= 360.0) {
//         rotationAngle = 0.0;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Simple Photo Editor'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             if (_imageFile != null)
//               Transform.rotate(
//                 angle: rotationAngle * 3.14159 / 180,
//                 child: _applyFilter(),
//               )
//             else
//               Text('No image selected'),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//            BottomNavigationBarItem(
//             icon: Icon(Icons.rotate_left),
//             label: 'Rotation',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.blur_circular),
//             label: 'Blur Color',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.colorize),
//             label: 'Slider',
//           ),
//         ],
//         onTap: (index) {
//           if (index == 1) {
//             setState(() {
//               blurColor = Colors.blue.withOpacity(0.5);
//             });
//           } else if (index == 2) {
//             showModalBottomSheet(
//               context: context,
//               builder: (BuildContext context) {
//                 return Container(
//                   height: 200,
//                   child: Column(
//                     children: [
//                       Text('Adjust Blur'),
//                       Slider(
//                         value: blurValue,
//                         min: 0.0,
//                         max: 10.0,
//                         label: blurValue.round().toString(),
//                         onChanged: (double newValue) {
//                           setState(() {
//                             blurValue = newValue;
//                           });
//                         },
//                         onChangeEnd: (double finalValue) {
//                           setState(() {
//                             blurValue = finalValue;
//                           });
//                         },
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             );
//           }else if (index == 0) {
//             rotateImage();
//           }
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           getImage();
//         },
//         tooltip: 'Pick Image',
//         child: Icon(Icons.add_a_photo),
//       ),
//     );
//   }
// }


