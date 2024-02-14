import 'dart:io';

import 'package:career_speak/components/input.dart';
import 'package:career_speak/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:image_picker/image_picker.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  String inputName = 'Байда вишневецький';
  TextEditingController _inputNameController =
      TextEditingController(text: 'Байда вишневецький');

  String inputBirthday = '01 Вересня 1991';
  TextEditingController _inputBirthdayController =
      TextEditingController(text: '01 Вересня 1991');
  late DateTime _selectedDate;

  String inputEmail = 'username@mail.com';
  TextEditingController _inputEmailController =
      TextEditingController(text: 'username@mail.com');

  @override
  void initState() {
    super.initState();
    initializeDateFormatting('uk_UA', null);
    _inputBirthdayController = TextEditingController();
    _selectedDate = DateTime.now();
    _updateDateText();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
      _updateDateText();
    }
  }

  void _updateDateText() {
    final formattedDate =
        DateFormat('dd MMMM yyyy', 'uk_UA').format(_selectedDate);
    _inputBirthdayController.text = formattedDate;
  }

  File? _imageFile;

  Future<void> _pickImageFromGallery() async {
    final pickedImage =
        await ImagePicker().getImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _imageFile = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool isFillAllInput = false;

    return Scaffold(
      backgroundColor: cBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            SizedBox(
              height: 21.0,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Редагування профілю',
                          style: TextStyle(
                            color: Color(0xFF282828),
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(
                                    vertical: 0.0, horizontal: 0)),
                            minimumSize: MaterialStateProperty.all(Size(0, 0)),
                            visualDensity: VisualDensity.compact,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            overlayColor: MaterialStateProperty.all(
                              Colors.orange,
                            ),
                          ),
                          child: SvgPicture.asset(
                            'assets/images/cross_black.svg',
                            width: 14.0,
                            height: 14.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 48.0,
                    ),




                    // GestureDetector(
                    //   onTap: _pickImageFromGallery,
                    //   child: Container(
                    //     width: 100,
                    //     height: 100,
                    //     decoration: BoxDecoration(
                    //       color: Colors.grey,
                    //       borderRadius: BorderRadius.circular(10),
                    //       image: _imageFile != null
                    //           ? DecorationImage(
                    //               image: FileImage(_imageFile!),
                    //               fit: BoxFit.cover,
                    //             )
                    //           : null,
                    //     ),
                    //     child: _imageFile == null
                    //         ? Icon(
                    //             Icons.camera_alt,
                    //             color: Colors.white,
                    //             size: 50,
                    //           )
                    //         : null,
                    //   ),
                    // ),




                    TextButton(
                      onPressed: () {
                        print('select image');
                        _pickImageFromGallery();
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: 0.0, horizontal: 0)),
                        minimumSize: MaterialStateProperty.all(Size(0, 0)),
                        visualDensity: VisualDensity.compact,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(500.0)
                          )
                        ),
                        overlayColor: MaterialStateProperty.all(Colors.transparent),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          _imageFile != null ? Container(
                            width: 120, // Укажите нужные размеры
                            height: 120,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: FileImage(_imageFile!),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ) :
                          Image.asset(
                            'assets/images/profile_placeholder.png',
                            width: 120.0,
                            height: 120.0,
                          ),
                          Positioned(
                            top: 0,
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: cOrange.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(200.0)),
                            ),
                          ),
                          Positioned(
                              child: SvgPicture.asset(
                                'assets/images/camera.svg',
                                width: 24.0,
                                height: 24.0,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 36.0,
                    ),
                    Input(
                      placeholder: '', // Прізвище та імʼя
                      icon: SvgPicture.asset('assets/images/user.svg'),
                      controller: _inputNameController,
                      setValue: (value) {
                        setState(() {
                          inputName = value;
                        });
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Input(
                      placeholder: '',
                      // Прізвище та імʼя
                      icon: SvgPicture.asset('assets/images/cake.svg'),
                      controller: _inputBirthdayController,
                      onTap: () => _selectDate(context),
                      setValue: (value) {
                        setState(() {
                          inputName = value;
                        });
                      },
                    ),
                    SizedBox(
                      height: 64.0,
                    ),
                    Input(
                      placeholder: '', // Прізвище та імʼя
                      icon: SvgPicture.asset('assets/images/email.svg'),
                      controller: _inputEmailController,
                      setValue: (value) {
                        setState(() {
                          inputName = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 88.0,
              color: isFillAllInput ? cOrange : Color(0xFFE1E1E1),
              child: TextButton(
                onPressed: () {
                  // if(!isFillAllInput) return;
                  //
                  // if(password == passwordConfirm) {
                  //   PasswordRecoverySuccess(context);
                  // } else {
                  //   PasswordRecoveryFailed(context);
                  // }
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 0.0, horizontal: 0)),
                  minimumSize: MaterialStateProperty.all(Size(0, 0)),
                  visualDensity: VisualDensity.compact,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  overlayColor: MaterialStateProperty.all(
                    isFillAllInput ? Colors.orange : Colors.transparent,
                  ),
                ),
                child: Text(
                  'Зберегти',
                  style: TextStyle(
                    color: isFillAllInput ? cWhite : Color(0xFFA0A0A0),
                    fontSize: 22.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
