import 'package:apptinta/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:apptinta/screens/register.dart';
import 'package:flutter/services.dart';

class   Register extends StatelessWidget {
  const Register ({super.key});

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
                  'Criar conta',
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
                  'Nome',
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
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    hintText: 'nome',
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
              TextFormField(
                //autofocus: true,
                keyboardType: TextInputType.text,
                obscureText: true,
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
                  suffix: Icon(
                    Icons.visibility,
                    color: Colors.white,
                    ),
                ),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Confirmar senha',
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
                //autofocus: true,
                keyboardType: TextInputType.text,
                obscureText: true,
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
                  suffix: Icon(
                    Icons.visibility,
                    color: Colors.white,
                    ),
                ),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, MaterialPageRoute(builder: (context)=> Login()));
                },
                child: Text(
                  'Criar conta',
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
              const SizedBox(height: 100),
            ],
          ),
        ),
    );
  }
}