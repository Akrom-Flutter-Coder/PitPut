import 'package:flutter/material.dart';
import 'package:my_code/welcome.dart';
class Final extends StatefulWidget {
  const Final({Key? key}) : super(key: key);
  @override
  State<Final> createState() => _FinalState();
}
class _FinalState extends State<Final> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(padding: EdgeInsets.symmetric(vertical: 14,horizontal: 22),
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
              decoration:const BoxDecoration(
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
             const Text('Vertification',style: TextStyle(
                fontSize: 22,fontWeight: FontWeight.bold
              ),),
             const SizedBox(
                height: 18,
              ),
             const  Text('enter your code number',style: TextStyle(
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
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                   _textFieldOTP(first: true,last: false),
                   _textFieldOTP(first: true,last: false),
                   _textFieldOTP(first: true,last: false),
                   _textFieldOTP(first: true,last: true),
                   ],),
                   
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
                   Navigator.of(context).push(MaterialPageRoute(
                     builder: (context) => Welcome()  )
                     );
                 },
                 style: ButtonStyle(
                   backgroundColor:MaterialStateProperty.all<Color>(Color.fromARGB(255, 212, 58, 47)),
                   foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)))
                 ),
                  child: const Padding(
                    
                    padding: EdgeInsets.all(1),
                    child: Text("Verify",style: TextStyle(
                      fontSize: 18
                    ),),
                  ))
               ),
             ),
             const SizedBox(
               height: 18,
             ),
            const  Text('Didnt you receive any code?',
             style: TextStyle(
               fontSize: 16,
               fontWeight: FontWeight.bold,
               color: Colors.black12
             ),),
             const SizedBox(
               height: 18,
             ),
            const Text(
               'Resend New Code',
               style: TextStyle(
                 fontSize: 19,
                 fontWeight: FontWeight.bold,
                 color: Color.fromARGB(255, 234, 127, 120)
               ),
               ),
             
          ],
        ),
      ),
      ),
    );
    
  }
  _textFieldOTP({
     last, first
  }){
    return Container(
      height: 85,
      child: AspectRatio(aspectRatio: 0.8,
      child: TextField(
        autofocus: true,
        onChanged: (value){
          if(value.length==1&&last==false){
            FocusScope.of(context).nextFocus();
          }
           if(value.length==1&&first==false){
            FocusScope.of(context)..previousFocus();
          }
        },
        showCursor: false,
        readOnly: false,
        textAlign: TextAlign.center,
        style:const TextStyle(fontSize: 24,
        fontWeight: FontWeight.bold),
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          counter: const Offstage(),
          enabledBorder: OutlineInputBorder(
            borderSide:const BorderSide(width: 2,color: Colors.black12),
            borderRadius:BorderRadius.circular(12),
          ), 
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2,color: Colors.red),
            borderRadius:BorderRadius.circular(12),
          ),  
        ),
      ),),

    );
  }
}