import 'package:flutter/material.dart';
import 'package:my_code/registr.dart';
class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);
  @override
  State<Welcome> createState() => _WelcomeState();
}
class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
       // resizaToAvoidBottomInset:false,
        child: Padding(
          padding:const EdgeInsets.symmetric(vertical: 64,horizontal: 32),
        child: Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 240,),
              const SizedBox(
                height: 18,
              ),
             const SizedBox(
                height: 60,
              ),
             const Text('Lets get started',style: TextStyle(
                fontSize: 22,fontWeight: FontWeight.bold
              ),),
             const SizedBox(
                height: 18,
              ),
             const  Text('Never a better time than no to start.',style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black38,
              ),),
            const SizedBox(
               height: 48,
             ),
             SizedBox(
               height: 48,
               width: double.infinity,
               child: ElevatedButton(
                 onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => Registr(),));
               },
               style: ButtonStyle(
                 backgroundColor:MaterialStateProperty.all<Color>(Color.fromARGB(255, 212, 58, 47)),
                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)))
               ),
                child: const Padding(
                  padding: EdgeInsets.all(1),
                  child: Text("Create Accaunt"),
                ))
             ),
             Padding(
               padding: const EdgeInsets.only(top: 10),
               child: SizedBox(
                 height: 48,
                 width: double.infinity,
                 child: ElevatedButton(onPressed: (){},
                 style: ButtonStyle(
                   backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
                   foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 212, 58, 47)),
                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)))
                 ),
                  child: const Padding(
                    padding: EdgeInsets.all(1),
                    child: Text("Login"),
                  ))
               ),
             )
          ],
        ),
        )
       ),
    );
  }
}