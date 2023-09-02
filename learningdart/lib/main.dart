import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DecorationImage backgroundImage = DecorationImage(
      image: AssetImage('assets/homback.png'),
      fit: BoxFit.fill,
    );

    return MaterialApp(
      title: 'Your App Title',
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: backgroundImage,
          ),
          child: Stack(
            children: [
              Center(
                child: YourMainContentWidget(),
              ),
              Positioned(
                child: YourLogo(
                  imagePath: 'assets/logo.png',
                  left: 95,
                  top: 85,
                ),
              ),
              Positioned(
                child: HomePage(),
                left: 100,
                top: 430,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class YourLogo extends StatelessWidget {
  final String imagePath;
  final double left;
  final double top;

  YourLogo({
    required this.imagePath,
    required this.left,
    required this.top,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      child: Image.asset(
        imagePath,
        width: 200, // Adjust the width and height as needed
        height: 200,
      ),
    );
  }
}

class YourMainContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Your main content goes here
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Food With',
            style: TextStyle(
              fontSize: 55,
              height: 0.8,
              color: Color.fromARGB(255, 157, 144, 26),
              fontFamily: 'Finger Paint',
            ),
          ),
          Text(
            'Love',
            style: TextStyle(
              fontSize: 55,
              color: Color.fromARGB(255, 157, 144, 26),
              fontFamily: 'Finger Paint',
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Your existing content here

        ElevatedButton(
          onPressed: () {
            // Add your action here when the button is pressed
            // For example, you can navigate to another screen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            primary: Color.fromARGB(255, 157, 144, 26),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  30), // Change the button color as needed
            ),
          ),
          child: Text(
            'Getting Started',
            style: TextStyle(
              fontSize: 18,
              color: const Color.fromARGB(255, 3, 3, 3),
              fontFamily: 'Finger Paint', // Change the text color as needed
            ),
          ),
        ),
      ],
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DecorationImage loginImage = DecorationImage(
      image: AssetImage('assets/logback.png'),
      fit: BoxFit.fill,
    );
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: loginImage,
      ),
      child: Stack(
        children: [
          Positioned(
            child: Text(
              'Login to your account',
              style: TextStyle(
                fontSize: 28,
                color: Color.fromARGB(255, 190, 175, 31),
                fontFamily: 'Finger Paint',
              ),
            ),
            left: 50,
            top: 150,
          ),
          Positioned(
            left: 50,
            top: 220, // Adjust the top position as needed
            child: Container(
              width: 320,
              height: 300, // Adjust the width as needed
              child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Finger Paint',
                        color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 90, 85, 84),
                    isCollapsed: true,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  ),
                  textAlign: TextAlign.left),
            ),
          ),
          Positioned(
            left: 50,
            top: 280, // Adjust the top position as needed
            child: Container(
              width: 320,
              height: 300, // Adjust the width as needed
              child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Finger Paint',
                        color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 90, 85, 84),
                    isCollapsed: true,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  ),
                  textAlign: TextAlign.left),
            ),
          ),
          Positioned(child: Logged(), left: 50, top: 340),
          /*GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                child: Text("Don't have an account? SignUp",
                    style:
                        TextStyle(fontSize: 16, fontFamily: 'Finger Paint'))),*/
        ],
      ),
    ));
  }
}

class Logged extends StatelessWidget {
  bool isBuyer = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Your existing content here

        ElevatedButton(
          onPressed: () {
            // Add your action here when the button is pressed
            // For example, you can navigate to another screen
            if (isBuyer) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChoicesMatterPage()),
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUpPage()),
              );
            }
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            primary: Color.fromARGB(255, 199, 81, 66),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  15), // Change the button color as needed
            ),
          ),
          child: Container(
            width: 279,
            height: 30,
            child: Text(
              'Login',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 253, 253, 253),
                fontFamily: 'Finger Paint', // Change the text color as needed
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}

class Signed extends StatelessWidget {
  bool isBuyer = false;
  Signed({required this.isBuyer});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Your existing content here

        ElevatedButton(
          onPressed: () {
            // Add your action here when the button is pressed
            // For example, you can navigate to another screen
            if (isBuyer) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChoicesMatterPage()),
              );
            } else {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            }
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            primary: Color.fromARGB(255, 199, 81, 66),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  15), // Change the button color as needed
            ),
          ),
          child: Container(
            width: 279,
            height: 30,
            child: Text(
              'SignUp',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 253, 253, 253),
                fontFamily: 'Finger Paint', // Change the text color as needed
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  DecorationImage loginImage = DecorationImage(
    image: AssetImage('assets/logback.png'),
    fit: BoxFit.fill,
  );
  bool isBuyerSelected = false;
  bool isSellerSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: loginImage,
      ),
      child: Stack(
        children: [
          Positioned(
            child: Text(
              'Create your account',
              style: TextStyle(
                fontSize: 28,
                color: Color.fromARGB(255, 190, 175, 31),
                fontFamily: 'Finger Paint',
              ),
            ),
            left: 50,
            top: 150,
          ),
          Positioned(
            left: 50,
            top: 220, // Adjust the top position as needed
            child: Container(
              width: 320,
              height: 300, // Adjust the width as needed
              child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Finger Paint',
                        color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 90, 85, 84),
                    isCollapsed: true,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  ),
                  textAlign: TextAlign.left),
            ),
          ),
          Positioned(
            left: 50,
            top: 280, // Adjust the top position as needed
            child: Container(
              width: 320,
              height: 300, // Adjust the width as needed
              child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hintText: 'New Password',
                    hintStyle: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Finger Paint',
                        color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 90, 85, 84),
                    isCollapsed: true,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  ),
                  textAlign: TextAlign.left),
            ),
          ),
          Positioned(
            left: 50,
            top: 340, // Adjust the top position as needed
            child: Container(
              width: 320,
              height: 300, // Adjust the width as needed
              child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Finger Paint',
                        color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 90, 85, 84),
                    isCollapsed: true,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  ),
                  textAlign: TextAlign.left),
            ),
          ),
          Positioned(
            left: 50,
            top: 400, // Adjust the top position as needed
            child: Container(
                width: 158,
                height: 40,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 90, 85, 84),
                    borderRadius: BorderRadius.circular(
                        15)), // Adjust the width as needed
                child: Align(
                  alignment: Alignment.center,
                  child: CheckboxListTile(
                    title: Text(
                      'Buyer',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Finger Paint',
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    value: isBuyerSelected,
                    onChanged: (newValue) {
                      setState(() {
                        if (isSellerSelected == false) {
                          isBuyerSelected = newValue ?? false;
                        }
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.white,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 24.0),
                  ),
                )),
          ),
          Positioned(
            left: 212,
            top: 400, // Adjust the top position as needed
            child: Container(
                width: 158,
                height: 40,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 90, 85, 84),
                    borderRadius: BorderRadius.circular(
                        15)), // Adjust the width as needed
                child: Align(
                  alignment: Alignment.center,
                  child: CheckboxListTile(
                    title: Text(
                      'Seller',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Finger Paint',
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    value: isSellerSelected,
                    onChanged: (newValue) {
                      setState(() {
                        if (isBuyerSelected == false) {
                          isSellerSelected = newValue ?? false;
                        }
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.white,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 24.0),
                  ),
                )),
          ),
          Positioned(
              child: Signed(
                isBuyer: isBuyerSelected,
              ),
              left: 50,
              top: 460),
          /*GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text("Don't have an account? Login",
                  style: TextStyle(fontSize: 16, fontFamily: 'Finger Paint'))),
        */
        ],
      ),
    ));
  }
}

class ChoicesMatterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DecorationImage loginImage = DecorationImage(
      image: AssetImage('assets/choicesback.png'),
      fit: BoxFit.fill,
    );
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: loginImage,
            ),
            child: Column(children: [
              Positioned(
                child: Text(
                  'Your choices matter!',
                  style: TextStyle(
                    fontSize: 28,
                    color: Color.fromARGB(255, 190, 175, 31),
                    fontFamily: 'Finger Paint',
                  ),
                ),
                left: 50,
                top: 150,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Your existing content here
                  Positioned(
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your action here when the button is pressed
                          // For example, you can navigate to another screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          primary: Color.fromARGB(255, 199, 81, 66),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                30), // Change the button color as needed
                          ),
                        ),
                        child: Container(
                          width: 230,
                          height: 30,
                          child: Text(
                            'Share my favourites',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 253, 253, 253),
                              fontFamily:
                                  'Finger Paint', // Change the text color as needed
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      left: 10,
                      top: 120),
                  Positioned(
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your action here when the button is pressed
                          // For example, you can navigate to another screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          primary: Color.fromARGB(255, 90, 85, 84),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                30), // Change the button color as needed
                          ),
                        ),
                        child: Container(
                          width: 230,
                          height: 30,
                          child: Text(
                            'Skip for now',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily:
                                  'Finger Paint', // Change the text color as needed
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      left: 10,
                      top: 180),
                ],
              )
            ])));
  }
}
