import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:web_rise_consulting/translations/locale_keys.g.dart';

class ContactUsContact extends StatefulWidget implements PreferredSizeWidget {
  const ContactUsContact({Key? key}) : super(key: key);

  @override
  _ContactUsContactState createState() => _ContactUsContactState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _ContactUsContactState extends State<ContactUsContact> {
  bool _hoveredFB = false;
  bool _hoveredTel01 = false;
  bool _hoveredTel02 = false;
  bool _hoveredTel03 = false;
  bool _hoveredmail01 = false;
  bool _hoveredmail02 = false;
  bool _hoveredaddress = false;

  @override
  Widget build(BuildContext context) {
    final TextEditingController firstController = TextEditingController();
    final TextEditingController lastController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController messageController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 30),
      child: Column(
        children: [
          Text(
            LocaleKeys.contact_contact_heder.tr(),
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 1000,
            child: Wrap(
              children: [
                Text(
                  LocaleKeys.contact_contact_details.tr(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0), // ปรับความโค้ง
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey, // สีของเงา
                  offset: Offset(0, 0), // ตำแหน่งของเงา (x, y)
                  blurRadius: 20.0, // รัศมีของเงา
                  spreadRadius: 0.1, //เงาฟุ้ง
                ),
              ],
            ),
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              child: Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                children: [
                  Container(
                    width: 500,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(41, 47, 54, 1),
                      borderRadius: BorderRadius.circular(10.0), // ปรับความโค้ง
                    ),
                    padding: const EdgeInsets.all(10.0),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 20,
                          bottom: 20,
                          left: 20,
                          right: MediaQuery.of(context).size.width < 450
                              ? 30
                              : 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            LocaleKeys.contact_contact_information.tr(),
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: 350,
                            child: Text(
                              LocaleKeys.contact_con_message.tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.phone,
                                color: Colors.white,
                                size: 20,
                              ),
                              const SizedBox(width: 5),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      launch('tel:+66020000323');
                                    },
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      onEnter: (_) {
                                        setState(() {
                                          _hoveredTel01 = true;
                                        });
                                      },
                                      onExit: (_) {
                                        setState(() {
                                          _hoveredTel01 = false;
                                        });
                                      },
                                      child: Text(
                                        '+66 (0) 20000323',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                              color: _hoveredTel01
                                                  ? Colors.blue
                                                  : Colors.white,
                                            ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  GestureDetector(
                                    onTap: () {
                                      launch('tel:+660884969200');
                                    },
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      onEnter: (_) {
                                        setState(() {
                                          _hoveredTel02 = true;
                                        });
                                      },
                                      onExit: (_) {
                                        setState(() {
                                          _hoveredTel02 = false;
                                        });
                                      },
                                      child: Text(
                                        '+66 (0) 8849-69200',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                              color: _hoveredTel02
                                                  ? Colors.blue
                                                  : Colors.white,
                                            ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  GestureDetector(
                                    onTap: () {
                                      launch('tel:+660815199562');
                                    },
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      onEnter: (_) {
                                        setState(() {
                                          _hoveredTel03 = true;
                                        });
                                      },
                                      onExit: (_) {
                                        setState(() {
                                          _hoveredTel03 = false;
                                        });
                                      },
                                      child: Text(
                                        '+66 (0) 8151-99562',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                              color: _hoveredTel03
                                                  ? Colors.blue
                                                  : Colors.white,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.email,
                                color: Colors.white,
                                size: 20,
                              ),
                              const SizedBox(width: 5),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MouseRegion(
                                    onEnter: (_) {
                                      setState(() {
                                        _hoveredmail01 = true;
                                      });
                                    },
                                    onExit: (_) {
                                      setState(() {
                                        _hoveredmail01 = false;
                                      });
                                    },
                                    child: GestureDetector(
                                      onTap: () {
                                        Clipboard.setData(ClipboardData(
                                            text: 'thititha@risegroups.net'));
                                      },
                                      child: Text(
                                        'thititha@risegroups.net',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                              color: _hoveredmail01
                                                  ? Colors.blue
                                                  : Colors.white,
                                            ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  MouseRegion(
                                    onEnter: (_) {
                                      setState(() {
                                        _hoveredmail02 = true;
                                      });
                                    },
                                    onExit: (_) {
                                      setState(() {
                                        _hoveredmail02 = false;
                                      });
                                    },
                                    child: GestureDetector(
                                      onTap: () {
                                        Clipboard.setData(ClipboardData(
                                          text: 'urairat.in@risegroups.net',
                                        ));
                                      },
                                      child: Text(
                                        'urairat.in@risegroups.net',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                              color: _hoveredmail02
                                                  ? Colors.blue
                                                  : Colors.white,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.location_pin,
                                color: Colors.white,
                                size: 20,
                              ),
                              const SizedBox(width: 5),
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    _hoveredaddress = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    _hoveredaddress = false;
                                  });
                                },
                                child: GestureDetector(
                                  onTap: () {
                                    Clipboard.setData(ClipboardData(
                                        text: LocaleKeys.contact_address.tr()));
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width <=
                                            400
                                        ? 200
                                        : MediaQuery.of(context).size.width <=
                                                450
                                            ? 250
                                            : MediaQuery.of(context)
                                                        .size
                                                        .width <=
                                                    500
                                                ? 300
                                                : 350,
                                    child: Text(
                                      LocaleKeys.contact_address.tr(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                            color: _hoveredaddress
                                                ? Colors.blue
                                                : Colors.white,
                                          ),
                                      softWrap: true,
                                      overflow: TextOverflow.visible,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 200,
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            onEnter: (_) {
                              setState(() {
                                _hoveredFB = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                _hoveredFB = false;
                              });
                            },
                            child: InkWell(
                              onTap: () {
                                launch(
                                    'https://www.facebook.com/riseconsultingGroup/');
                              },
                              child: Icon(
                                Icons.facebook,
                                color: _hoveredFB ? Colors.blue : Colors.white,
                                size: 30,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        //color: const Color.fromARGB(255, 189, 108, 108),
                        width: MediaQuery.of(context).size.width < 1350
                            ? 500
                            : 800,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 0, top: 30, bottom: 30),
                          child: Wrap(
                            direction: Axis.horizontal,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            runAlignment: WrapAlignment.start,
                            spacing: 20.0, //นอน
                            runSpacing: 40.0, //ตั้ง
                            children: [
                              Container(
                                width: 350,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          LocaleKeys.contact_first_name.tr(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium
                                              ?.copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onPrimary),
                                        ),
                                        Text(
                                          ' *',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium
                                              ?.copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .error),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      child: TextField(
                                        style: TextStyle(color: Colors.black),
                                        decoration: InputDecoration(
                                          hintText: LocaleKeys
                                              .contact_first_name
                                              .tr(),
                                        ),
                                        controller: firstController,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 350,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          LocaleKeys.contact_last_name.tr(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium
                                              ?.copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onPrimary),
                                        ),
                                        Text(
                                          ' *',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium
                                              ?.copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .error),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      child: TextField(
                                        style: TextStyle(color: Colors.black),
                                        decoration: InputDecoration(
                                          hintText:
                                              LocaleKeys.contact_last_name.tr(),
                                        ),
                                        controller: lastController,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 350,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          LocaleKeys.contact_email.tr(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium
                                              ?.copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onPrimary),
                                        ),
                                        Text(
                                          ' *',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium
                                              ?.copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .error),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      child: TextField(
                                        style: TextStyle(color: Colors.black),
                                        decoration: InputDecoration(
                                          hintText:
                                              LocaleKeys.contact_email.tr(),
                                        ),
                                        controller: emailController,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 350,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          LocaleKeys.contact_phone.tr(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium
                                              ?.copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onPrimary),
                                        ),
                                        Text(
                                          ' *',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium
                                              ?.copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .error),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      child: TextField(
                                        style: TextStyle(color: Colors.black),
                                        decoration: InputDecoration(
                                          hintText:
                                              LocaleKeys.contact_phone.tr(),
                                        ),
                                        controller: phoneController,
                                        keyboardType:
                                            TextInputType.phone, // ชนิด
                                        inputFormatters: [
                                          FilteringTextInputFormatter.allow(
                                              RegExp(
                                                  r'[0-9]')), //กรอกเฉพาะตัวเลข
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 50),
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            LocaleKeys.contact_message.tr(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium
                                                ?.copyWith(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .onPrimary),
                                          ),
                                          Text(
                                            ' *',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium
                                                ?.copyWith(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .error),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        child: TextField(
                                          style: TextStyle(color: Colors.black),
                                          decoration: InputDecoration(
                                            hintText: LocaleKeys
                                                .contact_write_your_message
                                                .tr(),
                                          ),
                                          controller: messageController,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            if (firstController.text.isEmpty ||
                                lastController.text.isEmpty ||
                                emailController.text.isEmpty ||
                                phoneController.text.isEmpty ||
                                messageController.text.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    LocaleKeys.contact_please.tr(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            } else {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 50, top: 20, bottom: 20),
                                      child: Text(
                                        LocaleKeys.contact_confirmation.tr(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium
                                            ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary,
                                            ),
                                      ),
                                    ),
                                    content: Container(
                                      width: 500,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 400,
                                            child: Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: const Color.fromARGB(
                                                        255,
                                                        217,
                                                        217,
                                                        217), // สีเทา
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5), // มุมโค้ง
                                                  ),
                                                  child: Icon(Icons.check,
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 1)),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  LocaleKeys
                                                      .contact_are_you_sureA
                                                      .tr(),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headlineLarge
                                                      ?.copyWith(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onPrimary,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            width: 400,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 35, bottom: 20),
                                              child: Text(
                                                LocaleKeys.contact_are_you_sureB
                                                    .tr(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall
                                                    ?.copyWith(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .onSecondary,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    actions: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 20),
                                        child: Container(
                                          width: 170,
                                          height: 50,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                                50, 52, 58, 0),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                              color: const Color.fromRGBO(
                                                  50, 52, 58, 1),
                                              width: 1, // ความหนาเส้นขอบ
                                            ),
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text(
                                              LocaleKeys.contact_cancel.tr(),
                                              style: GoogleFonts.jost(
                                                fontWeight: FontWeight.w600,
                                                color: Color.fromRGBO(
                                                    113, 116, 123, 1),
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 20),
                                        child: Container(
                                          width: 170,
                                          height: 50,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                                50, 52, 58, 1),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              sendEmail(
                                                first: firstController.text,
                                                last: lastController.text,
                                                email: emailController.text,
                                                phone: phoneController.text,
                                                message: messageController.text,
                                              );

                                              Navigator.of(context).pop();

                                              showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    title: Container(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      padding: EdgeInsets.only(
                                                          top: 20),
                                                      child: Text(
                                                        LocaleKeys
                                                            .contact_speak_soon
                                                            .tr(),
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .displayMedium
                                                            ?.copyWith(
                                                              color: Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .primary,
                                                            ),
                                                      ),
                                                    ),
                                                    content: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          LocaleKeys
                                                              .contact_received_message
                                                              .tr(),
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyLarge
                                                                  ?.copyWith(
                                                                    color: Theme.of(
                                                                            context)
                                                                        .colorScheme
                                                                        .onPrimary,
                                                                  ),
                                                        ),
                                                      ],
                                                    ),
                                                    contentPadding:
                                                        EdgeInsets.only(
                                                            left: 120,
                                                            right: 120,
                                                            top: 20,
                                                            bottom: 30),
                                                    actions: <Widget>[
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center, // Center align the row
                                                        children: [
                                                          Container(
                                                            width: 170,
                                                            height: 50,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color
                                                                  .fromRGBO(50,
                                                                  52, 58, 1),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            child: TextButton(
                                                              onPressed: () {
                                                                GoRouter.of(
                                                                        context)
                                                                    .go('/rise-home');
                                                              },
                                                              child: Text(
                                                                LocaleKeys
                                                                    .contact_close
                                                                    .tr(),
                                                                style:
                                                                    GoogleFonts
                                                                        .jost(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          255,
                                                                          255,
                                                                          255,
                                                                          1),
                                                                  fontSize: 16,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
                                            child: Text(
                                              LocaleKeys.contact_confirm.tr(),
                                              style: GoogleFonts.jost(
                                                fontWeight: FontWeight.w600,
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(41, 47, 54, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1.0), // โค้งๆ
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 1.0, vertical: 16.0),
                            child: Text(
                              LocaleKeys.botton_send.tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future sendEmail({
    required String first,
    required String last,
    required String email,
    required String phone,
    required String message,
  }) async {
    final service = 'service_7fxg7v7';
    final template = 'template_f06y2xp';
    final userID = 'leFwIJmxoKkWxt6rl';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(
      url,
      headers: {
        'origin': 'http://localhost',
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'service_id': service,
        'template_id': template,
        'user_id': userID,
        'template_params': {
          'first_name': first,
          'last_name': last,
          'user_email': email,
          'user_phonenumber': phone,
          'message': message,
        },
      }),
    );
    print(response.body);
  }
}
