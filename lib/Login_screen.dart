
import 'package:flutter/material.dart';
import 'package:logsuite/controllers/login_controller.dart';
import 'package:logsuite/usermodel.dart';
import 'package:logsuite/userrepo.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool checkbox = false;
  bool visible = true;
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding:EdgeInsets.all(10),
            child: Column(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Image(
                    height: 150,
                    image: AssetImage("assets/Images/logoipsum-255 1.png")),
                Text(
                  "Welcome Back,",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height:8),
                Text("Discover Limitless Choices and Unmatched Conveinence.",
                    style: Theme.of(context).textTheme.bodyMedium)
              ]),
              //form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical:16),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: SigninController.email,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          labelText: "E-Mail",
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        controller: SigninController.password,
                        obscureText: visible,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          labelText: "Password",
                          suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  visible = !visible;
                                });
                              },
                              child: visible
                                  ? Icon(Icons.visibility_off)
                                  : Icon(Icons.visibility)),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  value: checkbox,
                                  onChanged: (value) {
                                    setState(() {
                                      checkbox = !checkbox;
                                    });
                                  }),
                              const Text("RememberMe"),
                            ],
                          ),
                         
                        ],
                      ),
                      const SizedBox(
                        height:32,
                      ),
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 170, 16, 225)//et the background color here
                              ),
                              onPressed: () async {
                                UserModel? usermodel =
                                    await UserRepository.getUserDetail(
                                        SigninController.email.text);
                                CircularProgressIndicator();
                                SigninController.signIncall(
                                    usermodel,
                                    SigninController.email.text,
                                    SigninController.password.text,
                                    context);
                              },
                              child: Text("SignIn"))),
                      const SizedBox(height: 16),
                      SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                              onPressed: () {
                                // Navigator.pushReplacement(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => SignUp()),
                                // );
                              },
                              child: Text("CreateAccount"))),
                    ],
                  ),
                ),
              ),
              const SizedBox(height:16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Divider(
                    color
                        : Colors.grey,
                    thickness: 0.5,
                    indent: 60,
                    endIndent: 5,
                  )),
                  Text("or signin with",
                      style: Theme.of(context).textTheme.labelMedium),
                  Flexible(
                      child: Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                    indent: 5,
                    endIndent: 60,
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(100)),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 120.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                       
                      },
                      child: Image.asset(
                        'assets/Icons/icons8-google-48.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                      },
                      child: Image.asset(
                        'assets/Icons/icons8-facebook-48.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ],
                ),
              )
            ])),
      ),
    );
  }
}
