import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RecipeForm extends StatefulWidget {
  const RecipeForm({super.key});

  @override
  State<RecipeForm> createState() => _RecipeState();
}

class _RecipeState extends State<RecipeForm> {
//------------variable declaration
  final _formkey = GlobalKey<FormState>();
  var _title = "";
  var _description = "";
  var _ingredient = "";
  bool isEdit = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(right: 10.0, left: 10.0, top: 30.0),
            child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //field will visible when loginpage is false
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    key: ValueKey('Title'),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Incorrect Title";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _title = value.toString();
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(8.0),
                          borderSide: new BorderSide()),
                      labelText: "Enter  title",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    key: ValueKey('desc'),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Incorrect Description";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _description = value.toString();
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(8.0),
                          borderSide: new BorderSide()),
                      labelText: "Enter description",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    key: ValueKey('ingredient'),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Ingrediants are required";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _ingredient = value.toString();
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(8.0),
                          borderSide: new BorderSide()),
                      labelText: "Enter Ingredients",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 70,
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: isEdit
                            ? Text(
                                "Add Recipe",
                              )
                            : Text(
                                "Edit Recipe",
                              ),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
