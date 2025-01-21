import 'package:flutter/material.dart';
import 'package:lifelens/firebase_auth/firebase_auth_sevice.dart';
import 'package:lifelens/screens/otp_screen.dart';
class PhoneVerificationScreen extends StatefulWidget {
  const PhoneVerificationScreen({super.key});

  @override
  State<PhoneVerificationScreen> createState() => _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  TextEditingController phoneController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Phone Verfication",
        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
        fontSize: 22),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        

      ),
 body: Center(
   child: Column(
     children: [
       const SizedBox(height: 50),
       Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3MlezJtvtv03YzEwQZo76hte34fcDlQuvwA&s",
         height: 100,),
       const SizedBox(height: 50),
       TextFormField(
         obscureText: false



         ,
         controller: phoneController,
         decoration: const InputDecoration(

           hintText: 'Phone Number',
           filled: true,
           fillColor: Color(0xFFF5FCF9),
           contentPadding: EdgeInsets.symmetric(
               horizontal: 24.0, vertical: 16.0),
           border: OutlineInputBorder(
             borderSide: BorderSide.none,
             borderRadius: BorderRadius.all(Radius.circular(50)),
           ),
         ),
         validator: (value) {
           if (value == null || value.isEmpty) {
             return 'Phone number is required';
           }
           return null;
         },
       ),
       SizedBox(
         height: size.height *.05,
       ),
       ElevatedButton(
         style: ElevatedButton.styleFrom(
           backgroundColor: Colors.green,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(12)
           )
         ),
           onPressed:(){
           phoneNumberVerfication(phoneNumber: phoneController.text, context: context);
          // Navigator.push(context, MaterialPageRoute(builder: (context)
           //=> const OTP(verficationID : " "),
          // ));

           }, child: const Text("Send OTP",
       style: TextStyle(color: Colors.white),)),
     ],
   ),

 ),
    );
  }
}
