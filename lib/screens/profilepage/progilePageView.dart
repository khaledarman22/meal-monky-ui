import 'package:flutter/material.dart';
import 'package:mealmonky/const/consttextformfield.dart';

class ProfileScreem extends StatelessWidget {
  const ProfileScreem({Key? key}) : super(key: key);
//الاسم ورقم التلفون والعنوان
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              width: double.infinity,
              child: Column(children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          maxLines: 1,
                          'Profile',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 25),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.more_vert),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.search),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      child: ClipOval(
                          child: Image.asset(
                        'assets/images/real/user.jpg',
                        fit: BoxFit.cover,
                      )),
                    ),
                    const Text(
                      'Gail Forcewind',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 25),
                    ),
                    const Text(
                      'gailforcewind2009@email.com  ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 13),
                    ),
                    const Text(
                      'elDaqhlya / Elmansoura / talka/  ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 13),
                    ),
                    const Text(
                      '123123123123  ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 13),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    KTextFormFieldConst(
                      hint: 'Email',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    KTextFormFieldConst(
                      hint: 'Password',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    KTextFormFieldConst(
                      hint: 'Cantry',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    KTextFormFieldConst(
                      hint: 'city',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    KTextFormFieldConst(
                      hint: 'phone',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        child: Center(child: Text('Edit')), onPressed: (() {})),
                  ],
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
