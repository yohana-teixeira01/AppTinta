
import 'package:apptinta/screens/bottom_bar.dart';
import 'package:apptinta/screens/paint_shop.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:apptinta/screens/register.dart';
import 'package:apptinta/stores/login_store.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  LoginStore loginStore = LoginStore();
  var IconD =  Icons.visibility_off;

  @override
  Widget build(BuildContext context) {
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return Scaffold(
        body: Container(
          padding: EdgeInsets.only(
            top: 60,
            left: 40,
            right: 40,
          ),
          color: Color.fromARGB(255, 104, 90, 167),
          child: ListView(
            children: <Widget>[
              SizedBox(
                width: 128,
                height: 128,
                child: Image.asset("../assets/images/logo.png"),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                  'Entrar na plataforma',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              SizedBox(
                height: 30,
              ),
              Text(
                  'E-mail',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: loginStore.setEmail,
                  decoration: const InputDecoration(
                    hintText: 'email@email.com.br',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white38),
                    ),
                    hintStyle: TextStyle(
                      color: Colors.white38,
                      fontWeight: FontWeight.w200,
                      fontSize: 15,
                    ),
                  ),
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Senha',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 5,
              ),
               

              Observer(builder:(context) => 
              TextFormField(
                //autofocus: true,
                keyboardType: TextInputType.text,
                obscureText: !loginStore.passwordVisible,
                onChanged: loginStore.setPassword,
                decoration: const InputDecoration(
                  hintText: 'Senh@2023',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white38),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.white38,
                    fontWeight: FontWeight.w200,
                    fontSize: 15,
                  ),
                  //IconData: loginStore.passwordVisible ? Icons.visibility : Icons.visibility_off
                suffix: Icon(
                  Icons.visibility,
                   color: Colors.white
                   
                   ),
                ),
                onTap: loginStore.togglePasswordVisibility,

                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              ),
              const SizedBox(height: 8),
              const SizedBox(height: 20),
              Observer(builder:(context) => 
              ElevatedButton(
                onPressed: loginStore.isFormValid ? () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomBar()));
                } : null, 
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Color.fromARGB(255, 104, 90, 167),
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: Size(0.0, 54.0),
                    shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(60),
                    ),
                ),
              ),
              ),
              const SizedBox(height: 20),
              TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
              foregroundColor: Color.fromARGB(255, 104, 90, 167),
            ),
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=> Register()));
            },
            child: const Text(
              'Criar conta',
               style: TextStyle(
                  color: Colors.white38,
                  fontSize: 16,
                ),
              ),
              
          ),
            ],
          ),
        ),
    );
  }
}