import 'package:flutter/material.dart';

/// Global Component is a class with static method
/// that allow to performs action that do not required
/// to implement a class.
///
/// An example of where this class is usefult to use
/// is whenthe user want to show a dialog.
///
/// In this case the user need to do
/// ```
/// GlobalComponent.showAppDialog(....);
/// ```
class GlobalComponent {
  static void showAppDialog(
      {required BuildContext context,
      required String title,
      required String message,
      required String closeMsg,
      required ImageProvider imageProvided,
      Function? onClose,
      bool withIcon = true}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          elevation: 2,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          title: Text(title,
              style: Theme.of(context).textTheme.bodyLarge!.apply(
                    fontSizeFactor: 1.6,
                  )),
          content: SizedBox(
            height: MediaQuery.of(context).size.height *
                0.25 *
                (message.length > 150 && withIcon ? 1.8 : 1),
            width:
                MediaQuery.of(context).size.width * 0.6 * (withIcon ? 1.2 : 1),
            child: withIcon
                ? _appDialogContentWithImage(
                    context: context,
                    message: message,
                    imageProvided: imageProvided)
                : _appDialogContentWithoutImage(
                    context: context,
                    message: message,
                    imageProvided: imageProvided),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(closeMsg),
              onPressed: () {
                if (onClose != null) {
                  onClose()!;
                }
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}

Widget _appDialogContentWithoutImage(
    {required BuildContext context,
    required String message,
    required ImageProvider imageProvided}) {
  return Column(
    children: [
      Expanded(
          flex: 2,
          child: Center(
              child: SingleChildScrollView(
                  child: Text(
            message,
            style: Theme.of(context).textTheme.bodyLarge!.apply(
                  fontSizeFactor: 1.2,
                ),
          ))))
    ],
  );
}

Widget _appDialogContentWithImage(
    {required BuildContext context,
    required String message,
    required ImageProvider imageProvided}) {
  return Column(
    children: [
      Expanded(
          flex: 2,
          child: Center(
            child: Image(
              image: imageProvided,
            ),
          )),
      const Spacer(),
      Expanded(
          flex: message.length > 100 ? 4 : 2,
          child: Center(
              child: SingleChildScrollView(
                  child: Text(
            message,
            style: Theme.of(context).textTheme.bodyLarge!.apply(
                  fontSizeFactor: 1.2,
                ),
          ))))
    ],
  );
}
