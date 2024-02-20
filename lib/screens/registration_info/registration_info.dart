import 'package:career_speak/components/input.dart';
import 'package:career_speak/constants.dart';
import 'package:career_speak/screens/login_phone/components/login_phone_code.dart';
import 'package:career_speak/screens/login_phone/components/login_phone_timer.dart';
import 'package:career_speak/screens/registration_info/components/registration_info_failed_email.dart';
import 'package:career_speak/screens/registration_info/components/registration_info_failed_password.dart';
import 'package:career_speak/screens/registration_info/components/registration_info_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sms_autofill/sms_autofill.dart';

class RegistrationInfo extends StatefulWidget {
  const RegistrationInfo({Key? key}) : super(key: key);

  @override
  State<RegistrationInfo> createState() => _RegistrationInfoState();
}

class _RegistrationInfoState extends State<RegistrationInfo> {
  String inputName = '';
  String inputEmail = '';
  String inputPhone = '';
  String inputPassword = '';
  String inputPasswordRepeat = '';

  bool isRegistrationByPhone = false;
  bool isErrorPassword = false;
  bool isErrorEmail = false;

  final _maskController = MaskedTextController(mask: '+38 000 000 00 00');

  @override
  Widget build(BuildContext context) {
    final bool isFillForm = inputName.isNotEmpty &&
        inputEmail.isNotEmpty &&
        inputPassword.isNotEmpty &&
        inputPasswordRepeat.isNotEmpty;

    return Scaffold(
      backgroundColor: cBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 21.0,
                    ),
                    const RegistrationInfoHeader(),
                    const SizedBox(
                      height: 24.0,
                    ),
                    const Text(
                      'Давай знайомитись ближче',
                      style: TextStyle(
                          color: cBrown,
                          fontWeight: FontWeight.w600,
                          fontSize: 18.0),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Input(
                      placeholder: 'Прізвище та імʼя',
                      icon: SvgPicture.asset('assets/images/user.svg'),
                      setValue: (value) {
                        setState(() {
                          inputName = value;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 60.0,
                    ),
                    isRegistrationByPhone
                        ? Input(
                            placeholder: 'Номер мобільного',
                            icon: SvgPicture.asset('assets/images/phone.svg'),
                            controller: _maskController,
                            setValue: (value) {
                              setState(() {
                                inputPhone = value;
                              });
                            },
                          )
                        : Input(
                            placeholder: 'Електронна пошта',
                            isError: isErrorEmail,
                            icon: SvgPicture.asset('assets/images/email.svg'),
                            setValue: (value) {
                              setState(() {
                                inputEmail = value;
                              });
                            },
                          ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          inputPhone = '';
                          inputEmail = '';
                          isRegistrationByPhone = !isRegistrationByPhone;
                        });
                      },
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.zero),
                          minimumSize: MaterialStateProperty.all(Size(0, 0)),
                          visualDensity: VisualDensity.compact,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          overlayColor:
                              MaterialStateProperty.all(cBackgroundColor)),
                      child: Text(
                        isRegistrationByPhone
                            ? 'Використати електронну пошту'
                            : 'Використати номер мобільного',
                        style: const TextStyle(
                          color: Color(0xFF3A89FD),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 44.0,
                    ),
                    isRegistrationByPhone
                        ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 242.0,
                                height: 56.0,
                                child: LoginPhoneCode(),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Row(
                                children: [
                                  TextButton(
                                    style: ButtonStyle(
                                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                                        minimumSize: MaterialStateProperty.all(Size(0, 0)),
                                        visualDensity: VisualDensity.compact,
                                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                        overlayColor: MaterialStateProperty.all(cBackgroundColor)),
                                    onPressed: () {},
                                    child: Text(
                                      'Переслати смс код ',
                                      style: TextStyle(color: Color(0xFF7A7A7A)),
                                    ),
                                  ),
                                  LoginPhoneTimer()
                                ],
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              Input(
                                placeholder: 'Пароль',
                                isError: isErrorPassword,
                                isPassword: true,
                                icon:
                                    SvgPicture.asset('assets/images/lock_orange.svg'),
                                setValue: (value) {
                                  setState(() {
                                    inputPassword = value;
                                  });
                                },
                              ),
                              const SizedBox(
                                height: 16.0,
                              ),
                              Input(
                                placeholder: 'Пароль ще раз',
                                isError: isErrorPassword,
                                isPassword: true,
                                icon:
                                    SvgPicture.asset('assets/images/lock_orange.svg'),
                                setValue: (value) {
                                  setState(() {
                                    inputPasswordRepeat = value;
                                  });
                                },
                              ),
                            ],
                          ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              height: 88.0,
              color: isFillForm ? cOrange : const Color(0xFFE1E1E1),
              child: TextButton(
                onPressed: () {

                  if(!isFillForm) return;
                  setState(() {
                    isErrorEmail = false;
                    isErrorPassword = false;
                  });

                  if(inputEmail == 'asd@asd.asd') {
                    registrationInfoFailedEmail(context);
                    setState(() {
                      isErrorEmail = true;
                    });
                  } else if(inputPassword != inputPasswordRepeat) {
                    registrationInfoFailedPassword(context);
                    setState(() {
                      isErrorPassword = true;
                    });
                  } else {
                    Navigator.pushNamed(context, '/registration_profession');
                  }

                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0)),
                  minimumSize: MaterialStateProperty.all(const Size(0, 0)),
                  visualDensity: VisualDensity.compact,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  overlayColor: MaterialStateProperty.all(
                    isFillForm ? Colors.orange : Colors.transparent,
                  ),
                ),
                child: Text(
                  'Створити акаунт',
                  style: TextStyle(
                    color: isFillForm ? cWhite : const Color(0xFFA0A0A0),
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
