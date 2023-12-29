import 'package:flutter/material.dart';
import 'navigator_service.dart';
import 'package:images_picker/images_picker.dart';

class FileManager {
  showModelSheetForImage({
    int maxFileSize = 10 * 1024,
    List<String> allowedExtensions = const [],
    void Function(List<String?>)? getImages,
  }) async {
    showModalBottomSheet<void>(
      context: NavigatorService.navigatorKey.currentContext!,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                  leading: const Icon(Icons.photo_library),
                  title: const Text('Gallery'),
                  onTap: () async {
                    List<String?> imageList =
                        await _imgFromGallery(maxFileSize, allowedExtensions);
                    if (getImages != null) {
                      getImages(imageList);
                    }
                    NavigatorService.goBack();
                  }),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: () async {
                  List<String?> imageList =
                      await _imgFromCamera(maxFileSize, allowedExtensions);
                  if (getImages != null) {
                    getImages(imageList);
                  }
                  NavigatorService.goBack();
                },
              )
            ],
          ),
        );
      },
    );
  }

  Future<List<String?>> _imgFromGallery(
    int maxFileSize,
    List<String>? allowedExtensions,
  ) async {
    List<String?> files = [];
    List<Media>? res1 = await ImagesPicker.pick(
      pickType: PickType.image,
      maxSize: maxFileSize,
    );
    res1?.forEach((element) {
      var extension = element.path.split('.');
      if (allowedExtensions != null && allowedExtensions.isNotEmpty) {
        if (allowedExtensions.contains(extension.last)) {
          files.add(element.path);
        } else {
          ScaffoldMessenger.of(NavigatorService.navigatorKey.currentContext!)
              .showSnackBar(
            SnackBar(
              content: Text('only $allowedExtensions images are allowed'),
            ),
          );
        }
      } else {
        files.add(element.path);
      }
    });
    return files;
  }

  Future<List<String?>> _imgFromCamera(
    int maxFileSize,
    List<String>? allowedExtensions,
  ) async {
    List<String?> files = [];
    List<Media>? res1 = await ImagesPicker.openCamera(
      pickType: PickType.image,
      maxSize: maxFileSize,
    );
    res1?.forEach((element) {
      var extension = element.path.split('.');
      if (allowedExtensions != null && allowedExtensions.isNotEmpty) {
        if (allowedExtensions.contains(extension.last)) {
          files.add(element.path);
        } else {
          ScaffoldMessenger.of(NavigatorService.navigatorKey.currentContext!)
              .showSnackBar(
            SnackBar(
              content: Text('only $allowedExtensions images are allowed'),
            ),
          );
        }
      } else {
        files.add(element.path);
      }
    });
    return files;
  }
}
