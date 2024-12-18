import 'package:flutter/material.dart';
import 'package:twitter_like/MyColors.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _isRememberMeChecked = false;
  String _email = "";
  String _password = "";
  final formKey = GlobalKey<FormState>();

  String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Veuillez entrer votre email';
    }

    String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    RegExp regExp = RegExp(pattern);

    if (!regExp.hasMatch(value)) {
      return 'Veuillez entrer un email valide';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          spacing: 16,
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon:
                    const Icon(Icons.email, color: MyColors.primaryColor),
                hintText: 'Email',
                labelText: 'Email * ',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: MyColors.primaryColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: MyColors.primaryColor),
                ),
              ),
              validator: validateEmail,
              onSaved: (value) {
                _email = value!;
              },
            ),
            TextFormField(
              onSaved: (value) {
                _password = value!;
              },
              decoration: InputDecoration(
                prefixIcon:
                    const Icon(Icons.lock, color: MyColors.primaryColor),
                hintText: 'Entrez votre mot de passe',
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: MyColors.primaryColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: MyColors.primaryColor),
                ),
              ),
              obscureText: true,
              validator: (password) {
                if (password == null || password.isEmpty) {
                  return "Password required";
                }
                return null;
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Remember me ',
                  style: TextStyle(fontSize: 16),
                ),
                Switch(
                  value: _isRememberMeChecked,
                  onChanged: (value) {
                    setState(() {
                      _isRememberMeChecked = value;
                    });
                  },
                  activeColor: MyColors.primaryColor,
                  inactiveThumbColor: Colors.grey,
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate() ?? false) {
                    formKey.currentState!.save();

                    var snackBar = SnackBar(
                      content: Text('Loged in!'),
                      backgroundColor: Colors.green,
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
