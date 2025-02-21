import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travel_course/core/styles/app_text_styles.dart';

class ProfileImagePicker extends StatefulWidget {
  final String defaultImage;
  final Function(File?) onImageSelected;

  const ProfileImagePicker({
    Key? key,
    required this.defaultImage,
    required this.onImageSelected,
  }) : super(key: key);

  @override
  _ProfileImagePickerState createState() => _ProfileImagePickerState();
}

class _ProfileImagePickerState extends State<ProfileImagePicker> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
      widget.onImageSelected(_image);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: _image != null
              ? FileImage(_image!)
              : AssetImage(widget.defaultImage) as ImageProvider,
        ),
        SizedBox(height: 10),
        Text("name",style: AppTextStyles.signTitle,),
        MaterialButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => Wrap(
                children: [
                  ListTile(
                    leading: Icon(Icons.camera),
                    title: Text("Take Picture"),
                    onTap: () {
                      _pickImage(ImageSource.camera);
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.photo_library),
                    title: Text("Select Picture From The Gallery"),
                    onTap: () {
                      _pickImage(ImageSource.gallery);
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            );
          },
          child: Text("Change Profile Picture",style: AppTextStyles.rewardnumber,),
        ),
      ],
    );
  }
}
