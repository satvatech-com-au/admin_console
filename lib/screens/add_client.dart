import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddClient extends StatefulWidget {
  const AddClient({super.key});

  @override
  State<AddClient> createState() => _AddClientState();
}

class _AddClientState extends State<AddClient> {
  bool _emailInputIsVaild = true;
  bool _showPassword = true;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            "Add Client",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 60,
                child: TextField(
                  style: Theme.of(context).textTheme.headlineMedium,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      labelText: "Enter Email :",
                      errorText: _emailInputIsVaild ? null : "shhhs",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  onSubmitted: (value) =>
                      Fluttertoast.showToast(msg: "Please enter Email"),
                  onChanged: (String value) {
                    if (value.isEmpty) {
                      setState(() {
                        _emailInputIsVaild = false;
                      });
                    } else {
                      setState(() {
                        _emailInputIsVaild = true;
                      });
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 60,
                child: TextField(
                  obscureText: _obscureText,
                  style: Theme.of(context).textTheme.headlineMedium,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          )),
                      labelText: "Enter Password:",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 60,
                child: TextField(
                  obscureText: _showPassword,
                  style: Theme.of(context).textTheme.headlineMedium,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _showPassword = !_showPassword;
                            });
                          },
                          icon: Icon(
                            _showPassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                          )),
                      labelText: "Enter Password:",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 60,
                child: TextField(
                  style: Theme.of(context).textTheme.headlineMedium,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.location_on),
                      labelText: "Enter location:",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                style: Theme.of(context).textTheme.headlineMedium,
                keyboardType: TextInputType.visiblePassword,
                textCapitalization: TextCapitalization.sentences,
                maxLines: 10,
                decoration: InputDecoration(
                    hintText: "type something",
                    labelText: "Company Description:",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 60,
                child: TextField(
                  style: Theme.of(context).textTheme.headlineMedium,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      labelText: "Enter SSINT No:",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
