import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/back2.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
              children: [

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        SizedBox(height:30,),
                        Container(
                             height : 100,
                            width: 100,
                            child: Image(image: AssetImage('assets/images/logo.png'))),
                        SizedBox(height:30,),
                        const Text("Make a free consultation with our expert team to solve your prolems." ,style: TextStyle(
                         color: Color.fromRGBO(42, 133, 63, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                        SizedBox(height: 10,),
                        TextFormField(
                          controller: _nameController,
                          decoration: InputDecoration(
                              labelText: 'Name',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            // You can add email validation logic here if needed
                            return null;
                          },
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          controller: _descriptionController,
                          decoration: InputDecoration(labelText: 'Description',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                          maxLines: 3,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a description';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 20),
                        InkWell(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              // Form is valid, handle form submission here
                              String name = _nameController.text;
                              String email = _emailController.text;
                              String description = _descriptionController.text;

                              // You can process the form data as needed
                              print('Name: $name');
                              print('Email: $email');
                              print('Description: $description');
                            }
                          },
                          child: Container(
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromRGBO(42, 133, 63, 1),
                                  Color.fromARGB(234, 42, 77, 51)
                                ],
                              ),
                            ),
                            child: const Center(
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text("Submit",style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold

                                ), ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Stack(
                  children: [
                    SafeArea(
                      child: Column(children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 150,
                          margin: EdgeInsets.all(25),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 20,
                                child: Container(
                                  height: 150,
                                  width: 500,
                                  child: const Card(
                                    elevation: 100,
                                    child:  Padding(
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Head office address:",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                              "3556 Hartford Way Vlg, Mount Pleasant, SC,\n29466, Australia")
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                left: 0,
                                child: Container(
                                  child: Icon(
                                    Icons.map,
                                    color: Colors.white,
                                  ),
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle, color: Colors.green),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 150,
                          margin: EdgeInsets.all(25),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 20,
                                child: Container(
                                  height: 150,
                                  width: 500,
                                  child: const Card(
                                    elevation: 100,
                                    child: Padding(
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Call For Help:",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text("(734) 697-2907\n(843) 971-1906")
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                left: 0,
                                child: Container(
                                  child: Icon(
                                    Icons.phone,
                                    color: Colors.white,
                                  ),
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle, color: Colors.green),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 150,
                          margin: EdgeInsets.all(25),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 20,
                                child: Container(
                                  height: 150,
                                  width: 500,
                                  child: const Card(
                                    elevation: 4,
                                    child: Padding(
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Email:",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                              " noreply@envato.comn \n noreply@consultio.com")
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                left: 0,
                                child: Container(
                                  child: Icon(
                                    Icons.email,
                                    color: Colors.white,
                                  ),
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle, color: Colors.green),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
              ],
          ),
        ],
      ),
    ),
        ));
  }
}
