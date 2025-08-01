import 'package:flutter/material.dart';

class StackAlertdialogueForm extends StatefulWidget {
  const StackAlertdialogueForm({super.key});

  @override
  State<StackAlertdialogueForm> createState() => _HomePageState();
}

class _HomePageState extends State<StackAlertdialogueForm> {
  int counterValue = 0;

  void showDialogBar() {
    showDialog(
      barrierColor: Colors.pink.shade100,
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Are you sue ?"),
          content: Text("Hello world, Welcome to our class"),
          // backgroundColor: Colors.blue,
          // titleTextStyle: TextStyle(color: Colors.white, fontSize: 28),
          elevation: 0,
          shadowColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () {
                print("Done Clicked");
              },
              icon: Icon(Icons.done),
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.close),
            ),
          ],
        );
      },
    );
  }

  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //An app bar to display at the top of the scaffold.
        backgroundColor: Colors
            .blueAccent, //The fill color to use for an app bar's [Material].
        title: Text(
          //The primary widget displayed in the app bar.
          "facebook",
          style: TextStyle(
            //If non-null, the style to use for this text.
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight
                .w800, //The typeface thickness to use when painting the text (e.g., bold).
          ),
        ),
        centerTitle: true, //Whether the title should be centered.
        //properties : widget which starts the fisrt capital letter
        leading: Icon(Icons.menu, color: Colors.white),

        actions: [
          //A list of Widgets to display in a row after the [title] widget.
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search_rounded, color: Colors.white),
          ),
        ],
      ),

      //-------------------------------------- body -------------------------------------------------------//
      // Row -> Horizontal , Column -> Vertical

      //  body: Center(
      //    child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //          //-------------------------------- Stack Widget --------------------------------------------
      //          Stack(
      //           clipBehavior: Clip.none,
      //             //Creating flag design in bangladesh by Stack
      //           alignment: Alignment.center,
      //           children: [
      //                   //1st Widget will be included green background
      //                   Container(
      //                         width: 350,
      //                         height: 200,
      //                         color: Color(0xFF008000),
      //                   ),
      //                   //2nd widgert will be included red circle
      //                   Positioned(
      //                     top: -60,
      //                     child: CircleAvatar(
      //                         backgroundColor: Colors.red,
      //                         radius: 60,
      //                     ),
      //                   ),
      //                  ],
      //          ),
      //       ],
      //    ),
      //  ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Form(
                key: formkey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value){
                        if(value!.isEmpty)
                        {
                          return "Email field can not be empty";
                        }
                        return null;
                      },
                      enabled: true,
                      obscureText: false,
                      obscuringCharacter: "#",
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.red, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.green, width: 2),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey),
                        ),

                        labelText: "Email",
                        hintText: "Enter your email",
                        hintStyle: TextStyle(fontWeight: FontWeight.w400),
                        // filled: true,
                        // fillColor: Colors.yellow,
                        prefixIcon: Icon(Icons.email),
                      ),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),

                    SizedBox(height: 20),

                    TextFormField(
                      validator: (value) {
                        if (value!.length < 6) {
                          return "Password should be more than 6 digit";
                        }
                        return null;
                      },
                      enabled: true,
                      obscureText: true,
                      obscuringCharacter: ".",
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.red, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.green, width: 2),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.yellow),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey),
                        ),

                        labelText: "password",
                        hintText: "Enter your password",
                        hintStyle: TextStyle(fontWeight: FontWeight.w400),
                        // filled: true,
                        // fillColor: Colors.yellow,
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility),
                      ),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              GestureDetector(
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    showDialogBar();
                  }
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';

// class StackAlertdialogueForm extends StatefulWidget {
//   const StackAlertdialogueForm({super.key});

//   @override
//   State<StackAlertdialogueForm> createState() => _StackAlertdialogueFormState();
// }

// class _StackAlertdialogueFormState extends State<StackAlertdialogueForm> {
//   void showDialogBar() {
//     showDialog(
//       barrierColor: Colors.pink.shade100,
//       barrierDismissible: false,
//       context: context, 
//       builder: (context) {
//       return AlertDialog(
//             title: Text("Are you Sure ?"),
//             content: Text("Hello world, Welcome to our class"),
//             actions: [
//               IconButton(onPressed: (){print("Clicked Me");}, icon: Icon(Icons.done)),
//               IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.close)),

//             ],
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.purple,
//         leading: Icon(Icons.menu, color: Colors.white, size: 28),
//         actions: [
//           Padding(
//             padding: EdgeInsets.all(8),
//             child: Icon(Icons.search, color: Colors.white),
//           ),
//         ],
//         title: Text(
//           "Awesome",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 30,
//             fontWeight: FontWeight.w700,
//             letterSpacing: 3,
//           ),
//         ),
//         centerTitle: true,
//       ),

//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Center(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),

//               child: GestureDetector(
//                 onTap: () {showDialogBar();},
//                 child: Container(
//                   height: 50,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Colors.red,
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Center(
//                     child: Text(
//                       "Login",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
