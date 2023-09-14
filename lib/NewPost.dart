import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class NewPost extends StatefulWidget {
  const NewPost({Key? key}) : super(key: key);

  @override
  State<NewPost> createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  File? _image;
  final picker = ImagePicker();
  bool showSpinner = false;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final postRef = FirebaseDatabase.instance.ref().child('Posts');
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  Future getImageGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No Image Selected');
      }
    });
  }

  Future getCameraImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No Image Selected');
      }
    });
  }

  void dialog(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            content: Container(
              height: 120,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      getCameraImage();
                      Navigator.pop(context);
                    },
                    child: ListTile(
                      leading: Icon(Icons.camera),
                      title: Text('Camera'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      getImageGallery();
                      Navigator.pop(context);
                    },
                    child: ListTile(
                      leading: Icon(Icons.photo_library),
                      title: Text('Gallery'),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: const Text('Share your Story with Us!'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: InkWell(
            onTap: () {
              dialog(context);
            },
            child: Column(
              children: [
                Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height * .2,
                    width: MediaQuery.of(context).size.width * 1,
                    child: _image != null
                        ? ClipRect(
                            child: Image.file(
                              _image!.absolute,
                              width: 100,
                              height: 100,
                              fit: BoxFit.fitHeight,
                            ),
                          )
                        : Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(10)),
                            width: 100,
                            height: 200,
                            child: const Icon(
                              Icons.camera_alt,
                              color: Colors.deepPurpleAccent,
                            ),
                          ),
                  ),
                ),
                Form(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 25, bottom: 20, right: 25, top: 10),
                      ),
                      TextField(
                        controller: titleController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                            labelText: "Enter a Title",
                            border: OutlineInputBorder(),
                            labelStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal)),
                        minLines: 1,
                        maxLines: 500,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: descriptionController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                            labelText: "Tell us about your journey",
                            border: OutlineInputBorder(),
                            labelStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal)),
                        minLines: 1,
                        maxLines: 500,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      FloatingActionButton.extended(
                        backgroundColor: Colors.deepPurpleAccent,
                        onPressed: () async {
                          setState(() {
                            showSpinner = true;
                          });
                          try {
                            int date = DateTime.now().microsecondsSinceEpoch;
                            firebase_storage.Reference ref = firebase_storage
                                .FirebaseStorage.instance
                                .ref('mentalhealthapp$date');
                            UploadTask uploadTask =
                                ref.putFile(_image!.absolute);
                            await Future.value(uploadTask);
                            var newUrl = await ref.getDownloadURL();
                            final User? user = _auth.currentUser;
                            postRef
                                .child('Post List')
                                .child(date.toString())
                                .set({
                              'pId': date.toString(),
                              'pImage': newUrl.toString(),
                              'pTime': date.toString(),
                              'pTitle': titleController.text.toString(),
                              'pDescription':
                                  descriptionController.text.toString(),
                              'uEmail': user!.email.toString(),
                              'uId': user.uid.toString(),
                            }).then((value) {
                              toastMessage('Post Published');
                              setState(() {
                                showSpinner = false;
                              });
                            }).onError((error, stackTrace) {
                              toastMessage(error.toString());
                              setState(() {
                                showSpinner = false;
                              });
                            });
                          } catch (e) {
                            setState(() {
                              showSpinner = false;
                            });
                            toastMessage(e.toString());
                          }
                        },
                        label: const Text("Upload"),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}

void toastMessage(String message) {
  Fluttertoast.showToast(
      msg: message.toString(),
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.SNACKBAR,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.white,
      textColor: Colors.black,
      fontSize: 16.0);
}
