import 'package:admin/admin_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            children: [
              Image.asset("assets/images/mwlogo.gif",
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
              ),
              
            const SizedBox(height: 20,),
             const Text("SignIn to Mandirwiki",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
                fontSize: 18  ,
                
      
              ),
              ),
              SizedBox(height: 5,),
              const Text("Please enter your valid email ID & Password",
                style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(57, 54,54, 1)
              ),
              ),
            SizedBox(height: 20,),
            Form(
            child:
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:30.0),
              child: Column(
                children: [                
                  SizedBox(
                    height: 55,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,                    
                      decoration:const InputDecoration(
                          labelText: 'User / Email ID',
                          labelStyle: TextStyle(
                         fontFamily: 'Poppins',
                        fontSize: 12,
                        color: Color.fromRGBO(57, 54,54, 1)
                               
                            ),
                            
                      ) ,
                    ),
                  ),
      
                  SizedBox(height: 20,), 
                   SizedBox(
                    height: 55,
                     child: TextFormField(
                         decoration: InputDecoration(
                             labelText: 'Password',
                             labelStyle: TextStyle(
                               fontFamily: 'Poppins',
                               fontSize: 12,
                                color: Color(0xFF393636)
                                
                             ),
                             suffixIcon: Icon(Icons.visibility)
                         ),
                      
                     ),
                   )
                ],
              ),
            )
             ),
             SizedBox(
              height: 5,
             ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Forgot Password?",
                style: TextStyle(
                   color: Color.fromRGBO(57, 54,54, 1)
             
                ),
              ),
            ],
          ),
        )
      ,
        SizedBox(height: 25,),
      
        SizedBox(
          height: 55,
          width: double.infinity,
           child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ElevatedButton(
          style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          side: BorderSide.none,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          )
           ),
        onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const admin()));



        }, child: Text(
        "Submit",
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14
        ),
          )),
        ),)
      
            ],
          ),
        ),
      ),    
    );
  }
}