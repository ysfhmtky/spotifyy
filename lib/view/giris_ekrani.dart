import 'package:flutter/material.dart';
import 'package:spotifyy/constants/colors.dart';

import 'ana_menu.dart';

class GirisEkrani extends StatefulWidget {
  const GirisEkrani({super.key});

  @override
  State<GirisEkrani> createState() => _GirisEkraniState();
}

class _GirisEkraniState extends State<GirisEkrani> {
  bool isRememberMe = true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: [
            Container(
              height: height / 2,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorConstants.primaryColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60)
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 70,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                  const SizedBox(height: 20,),
                  const Text('Millions of songs, free on spotify',
                  style: TextStyle(fontSize: 18,color: Colors.white, fontWeight: FontWeight.w600, fontFamily: 'Roboto', fontStyle: FontStyle.normal))
                ],
              ),
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: height /1.9 ,
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32)
                      ),
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text('Login Account',
                              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,),
                            const SizedBox(height: 22,),
                            const SizedBox(
                                height: 40,
                                child: Input(hint: 'Email Or Username', icon: Icons.email_outlined)),
                            const SizedBox(height: 16,),
                            const SizedBox(
                              height: 40,
                              child: Input(hint: 'Password', icon: Icons.key_outlined)),
                            SwitchListTile.adaptive(
                              value: isRememberMe,
                              onChanged: ((value){
                                setState(() {
                                  isRememberMe = value;
                                });
                              }),
                              contentPadding: EdgeInsets.zero,
                              title:  Text('Remember Me', style: TextStyle(
                              color: ColorConstants.starterWhite ,
                              fontSize: 14,
                              fontWeight: FontWeight.w400
                              )),
                            ),
                            MaterialButton(
                              color: ColorConstants.primaryColor,
                              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const AnaMenu())),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(31)
                              ),
                              height: 40,
                              child: const Text('Log In' , style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w700
                              ) ),
                            ),
                            const SizedBox(height: 16,),
                            Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    thickness: 1,
                                    height: 1,
                                    color: ColorConstants.starterWhite,
                                  ),
                                ),
                                 const SizedBox(width: 12,),
                                 Text('or', style: TextStyle(
                                 color: ColorConstants.starterWhite,
                                 fontSize: 13,
                                 fontWeight: FontWeight.w700
                                ),),
                                const SizedBox(width: 12,),
                                Expanded(
                                  child: Divider(
                                    thickness: 1,
                                    height: 1,
                                    color: ColorConstants.starterWhite,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 22,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 40,
                                  child: Image.asset('assets/images/google+.png')
                                ),
                                const SizedBox(width: 20,),
                                SizedBox(
                                  height: 40,
                                  child: Image.asset('assets/images/facebook.png')
                                ),
                              ],
                            ),
                            const SizedBox(height: 26,),
                            Text('Forget Password' , style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: ColorConstants.starterWhite
                            ), textAlign: TextAlign.center,)
                          ],
                        )
                    ),
                    const SizedBox(height: 16,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Dont have an accound?', style: TextStyle(
                         color: Colors.white,
                         fontSize: 14,
                         fontWeight: FontWeight.w500
                        )),
                       const SizedBox(width: 20,),
                        Text('Sign Up Now', style: TextStyle(
                        color: ColorConstants.primaryColor,
                          fontWeight: FontWeight.w700,
                        ))
                      ],
                    ),
                    const SizedBox( height: 44,)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Input extends StatelessWidget {
  const Input({
    super.key, required this.hint, required this.icon,
  }) ;

  final String hint;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: hint,
          labelStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26),
            borderSide: BorderSide(color: ColorConstants.starterWhite)// This is not a const constructor
          ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(26),
          borderSide: BorderSide(color: ColorConstants.primaryColor),
        ),
          suffixIcon: Icon(icon)
      ),
    );
  }
}