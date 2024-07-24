
import 'package:flutter/material.dart';
import 'package:logsuite/controllers/signup_controller.dart';
import 'package:logsuite/userrepo.dart';
import 'package:logsuite/validator.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool issecure = true;
  bool check = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color:  Colors.black,
            ),
            onPressed: () {
              // Navigator.pushReplacement(context,
              //     MaterialPageRoute(builder: (context) => ()));
            },
          ),
        ),
        body: Form(
          key: SignupController.signup,
          child: Padding(
            padding: EdgeInsets.only(
              top: 20,
              bottom: 24,
              left: 24,
              right: 24,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Let's Create Your Account,",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height* 0.1,
                            width: MediaQuery.of(context).size.height * 0.17,
                            child: TextFormField(
                              controller: SignupController.firstname,
                              validator: (value) =>
                                  Validator.validateText("Firstname", value),
                              style: TextStyle(
                                  fontSize: 17,
                                  color:  Colors.black),
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(bottom: 10),
                                  labelText: "First Name...",
                                  prefixIcon: Icon(Icons.person),
                                  labelStyle: TextStyle(
                                      fontSize: 17,
                                      color: 
                                           const Color.fromARGB(
                                              255, 53, 50, 50)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                          width: 1.5, color: Color.fromARGB(255, 170, 16, 225))),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        width: 1.5,
                                        color:
                                            Colors.black),
                                  )),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.height * 0.17,
                            child: TextFormField(
                              controller: SignupController.lastname,
                              validator: (value) =>
                                  Validator.validateText("Lastname", value),
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black),
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(bottom: 10),
                                  labelText: "Last Name...",
                                  prefixIcon: Icon(Icons.person),
                                  labelStyle: TextStyle(
                                      fontSize: 17,
                                      color:
                                           const Color.fromARGB(
                                              255, 53, 50, 50)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                          width: 1.5, color: Color.fromARGB(255, 170, 16, 225))),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        width: 1.5,
                                        color:
                                            Colors.black),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width:  MediaQuery.of(context).size.height * 0.5,
                        child: TextFormField(
                          controller: SignupController.username,
                          validator: (value) =>
                              Validator.validateText("Username", value),
                          style: TextStyle(
                              fontSize: 17,
                              color:  Colors.black),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(bottom: 10),
                              labelText: "Username",
                              prefixIcon: Icon(Icons.person_search),
                              labelStyle: TextStyle(
                                  fontSize: 17,
                                  color
                                      : const Color.fromARGB(255, 53, 50, 50)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      width: 1.5, color:Color.fromARGB(255, 170, 16, 225) )),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                    width: 1.5,
                                    color:Colors.black),
                              )),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height* 0.1,
                        width:  MediaQuery.of(context).size.height * 0.5,
                        child: TextFormField(
                          controller: SignupController.email,
                          validator: (value) => Validator.validateEmail(value),
                          style: TextStyle(
                              fontSize: 17,
                              color:  Colors.black),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(bottom: 10),
                              labelText: "E-Mail",
                              prefixIcon: Icon(Icons.email),
                              labelStyle: TextStyle(
                                  fontSize: 17,
                                  color
                                      : const Color.fromARGB(255, 53, 50, 50)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      width: 1.5, color:Color.fromARGB(255, 170, 16, 225))),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                    width: 1.5,
                                    color:  Color.fromARGB(255, 170, 16, 225)),
                              )),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height* 0.1,
                        width:  MediaQuery.of(context).size.height* 0.5,
                        child: TextFormField(
                          validator: (value) => Validator.phonenumber(value),
                          controller: SignupController.phonenumber,
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(bottom: 10),
                              labelText: "Phone Number",
                              prefixIcon: Icon(Icons.phone),
                              labelStyle: TextStyle(
                                  fontSize: 17,
                                  color
                                      : const Color.fromARGB(255, 53, 50, 50)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      width: 1.5, color:Color.fromARGB(255, 170, 16, 225) )),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                    width: 1.5,
                                    color: Colors.black),
                              )),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height* 0.1,
                        width: MediaQuery.of(context).size.height* 0.5,
                        child: TextFormField(
                          obscureText: issecure ? true : false,
                          validator: (value) =>Validator.validatepassword(value),
                              
                          controller: SignupController.password,
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(bottom: 10),
                              labelText: "Password",
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      issecure = !issecure;
                                    });
                                  },
                                  child: issecure
                                      ? Icon(Icons.visibility_off)
                                      : Icon(Icons.visibility)),
                              labelStyle: TextStyle(
                                  fontSize: 17,
                                  color
                                      : const Color.fromARGB(255, 53, 50, 50)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      width: 1.5, color:Color.fromARGB(255, 170, 16, 225))),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                    width: 1.5,
                                    color:Colors.black),
                              )),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Checkbox(
                          value: check,
                          onChanged: (value) {
                            setState(() {
                              check = !check;
                            });
                          },
                        ),
                      ),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: "I agree to ",
                            style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(
                            text: "Privacy Policy ",
                            style: TextStyle(
                              color: Color.fromARGB(255, 170, 16, 225),
                              fontSize: 15,
                            )),
                        TextSpan(
                            text: "and ",
                            style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(
                            text: "Terms of Use",
                            style: TextStyle(
                              color:Color.fromARGB(255, 170, 16, 225),
                              fontSize:15,
                            )),
                      ]))
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:Color.fromARGB(255, 170, 16, 225), // Set the background color here
                          ),
                          onPressed: () async{
                            
                            if (Validator.checkbox(check) == false) {

                            } else if (SignupController.signup.currentState!
                                    .validate() &&
                                Validator.checkbox(check)) {
                              SignupController.signUpcall(
                              
                                  SignupController.email.text,
                                  SignupController.password.text,
                                  context);
                              UserRepository.createUser(SignupController.user,context);
                            }
                          },
                          child: Text("Create Account"))),
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
                    padding: const EdgeInsets.only(top: 10, left: 120.0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            'assets/Icons/icons8-google-48.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            'assets/Icons/icons8-facebook-48.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
