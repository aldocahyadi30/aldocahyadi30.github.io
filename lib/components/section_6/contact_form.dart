import 'package:flutter/material.dart';
import 'package:portfolio/components/buttons/loading_button.dart';
import 'package:portfolio/themes/color_pallette.dart';
import 'package:portfolio/components/dialog/dialog.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final nameInputController = TextEditingController();
  final emailInputController = TextEditingController();
  final messageInputController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  

  Future<void> handleSendButton() async {
    if (_formKey.currentState!.validate()) {
      var response = await http.post(
        Uri.parse('https://formspree.io/f/xrgwdayd'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'name': nameInputController.text,
          'email': emailInputController.text,
          'message': messageInputController.text,
        }),
      );

      if (!mounted) return;

      if (response.statusCode == 200) {
        _formKey.currentState!.reset();
        showMyDialog(context, 'Confirmation', 'Your email have been sent!');
      } else {
        showMyDialog(
            context, 'Error', 'Something went wrong. Please try again.');
      }
    }
  }

  bool isEmailValid(String email) {
    final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    return emailRegExp.hasMatch(email);
  }

  @override
  void dispose() {
    emailInputController.dispose();
    nameInputController.dispose();
    messageInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 500.0,
      decoration: BoxDecoration(
        color: WebColors.yellow,
        border: Border.all(
          color: WebColors.yellow, // Add this line
          width: 2.0, // You can adjust the width as needed
        ),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Text('Get in touch!',
                style: TextStyle(
                    color: WebColors.blackPrimary,
                    fontSize: 32.0,
                    fontWeight: FontWeight.w500)),
          ),
          const Divider(
            color: WebColors.blackPrimary,
            thickness: 0.5,
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: nameInputController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.person,
                      color: WebColors.blackPrimary,
                    ),
                    filled: true,
                    fillColor: WebColors.lightYellow,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide.none),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: 'Name',
                    labelStyle: const TextStyle(color: WebColors.blackPrimary),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  controller: emailInputController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    } else if (!isEmailValid(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.email,
                      color: WebColors.blackPrimary,
                    ),
                    filled: true,
                    fillColor: WebColors.lightYellow,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide.none),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: 'Email',
                    labelStyle: const TextStyle(color: WebColors.blackPrimary),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  controller: messageInputController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your message';
                    }
                    return null;
                  },
                  maxLines: 3,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: WebColors.lightYellow,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide.none),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: 'Message',
                    alignLabelWithHint: true,
                    labelStyle: const TextStyle(color: WebColors.blackPrimary),
                  ),
                ),
                const SizedBox(height: 20.0),
                Align(
                    alignment: Alignment.bottomRight,
                    child: LoadingButton(
                        name: 'Send Email', onButtonPressed: handleSendButton),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
