import 'package:flutter/material.dart';
import 'package:my_code/final.dart';
import 'package:my_code/new.dart';

class Registr extends StatefulWidget {
  const Registr({Key? key}) : super(key: key);

  @override
  State<Registr> createState() => _RegistrState();
}

class _RegistrState extends State<Registr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(padding: EdgeInsets.symmetric(vertical: 14,horizontal: 32),
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
         
          children: [
             Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back,
                color: Colors.black54,
                size: 32,),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              width: 200,
              height: 200,
              decoration:const  BoxDecoration(
               // color: Color.fromARGB(255, 215, 154, 154),
                //shape: BoxShape.rectangle,
              ),
              child: Image.asset(
                'assets/images/logo.png',
                width: 200,),
            ),
              const SizedBox(
                height: 18,
              ),
             const Text('Registration',style: TextStyle(
                fontSize: 22,fontWeight: FontWeight.bold
              ),),
             const SizedBox(
                height: 18,
              ),
             const  Text('Add your phonen number.We send you a vertification code so we know your real',style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black38,
              ),
              textAlign: TextAlign.center,
              ),
            const SizedBox(
               height: 38,
             ),
             Container(
               padding: EdgeInsets.all(28),
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(12)
               ),
               child: Column(
                 children: [
                   TextFormField(
                     keyboardType: TextInputType.number,
                     style: const TextStyle(
                       fontSize: 18,
                       fontWeight: FontWeight.bold,
                     ),
                     decoration: InputDecoration(
                       enabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.black12),
                         borderRadius: BorderRadius.circular(12)
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.black12),
                         borderRadius: BorderRadius.circular(12)
                     ),
                     prefix: const Padding(
                       padding: EdgeInsets.symmetric(horizontal: 8),
                       child: Text('(+998 )',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                     )
                   ),
                   ),
                   const SizedBox(
                     height: 22,
                   )
                 ],
               ),
             ),
             
             Padding(
               padding: const EdgeInsets.only(top: 10),
               child: SizedBox(
                 height: 48,
                 width: double.infinity,
                 child: ElevatedButton(onPressed: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => Final()));
                 },
                 style: ButtonStyle(
                   backgroundColor:MaterialStateProperty.all<Color>(Color.fromARGB(255, 212, 58, 47)),
                   foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)))
                 ),
                  child: const Padding(
                    
                    padding: EdgeInsets.all(1),
                    child: Text("Send"),
                  ))
               ),
             ),
          
           
          ],
        ),
      ),
      ),
    );
    
  }
}