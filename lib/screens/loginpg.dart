

// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'package:loginpg/screens/login.dart';

class loginpg extends StatelessWidget {
  const loginpg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(130.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 130,
                  width: 130,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://data.whicdn.com/images/275959763/original.jpg'),
                          fit: BoxFit.fitWidth)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.blue,
                    child: const Text(
                      "LEE MIN HO",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: const TextField(
                    // textAlign:TextAlign.center ,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(4.9),

                      // fillColor: Colors.grey,
                      icon: Icon(Icons.person),
                      hintText: 'Username',
                      labelStyle: TextStyle(fontStyle: FontStyle.normal),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 9,
            ), //=======use?========
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: 'Password',
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),

            GestureDetector(
              onTap: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const loginscrn(),
                    ));
              }),
              child: Container(
                height: 40,
                width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(246, 43, 40, 40),
                ),
                child: const Center(
                    child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Center(
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: const Text(
                  "Forget Password/Username?",
                  style: TextStyle(fontSize: 12.2, color: Color.fromARGB(255, 223, 221, 221)),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
