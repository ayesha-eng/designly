import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';

import 'package:image_picker/image_picker.dart';



class ImageUpload extends StatefulWidget {
  @override
  _ImageUploadState createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {

  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [
        Center(
          child: GestureDetector(
            onTap: () {
              _showPicker(context);
            },
            child: CircleAvatar(
              radius: 55,
              backgroundColor: SecondaryBGColor,
              child: _image != null
                  ? ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.file(
                  _image,
                  width: 100,
                  height: 100,
                  fit: BoxFit.fitHeight,
                ),
              )
                  : Container(
                decoration: BoxDecoration(
                    color: SecondaryBGColor,
                    borderRadius: BorderRadius.circular(50)
                ),
                width: 100,
                height: 100,
                child: Icon(
                  Icons.camera_alt,
                  color: PrimaryBGColor,
                ),
              ),
            ),
          ),
        ),
      ],

    );
  }
  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
  dynamic _image;
  _imgFromCamera() async {

    dynamic image = await /*ImagePicker*/ _image.pickImage(
        source: ImageSource.camera, imageQuality: 50);
    setState(() {
      _image = image;
    });
  }
  _imgFromGallery() async {
    dynamic image = await _image.pickImage(
        source: ImageSource.gallery, imageQuality: 50);
    setState(() {
      _image = image;
    });
  }
}



