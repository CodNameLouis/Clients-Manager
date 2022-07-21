import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../infra/models/defaults/provider_error_model.dart';

class CustomSnackbar {
  CustomSnackbar._();

  static const _defaultDuration = Duration(seconds: 5);
  static const _defaultMargin = EdgeInsets.fromLTRB(10, 16, 10, 0);
  static const _defaultBorderRadius = 12.0;
  static const _defaultSnackPosition = SnackPosition.TOP;
  static const _defaultDismissDirection = DismissDirection.horizontal;
 
  static final _defaultBoxShadows = [
    BoxShadow(
      color: Colors.black.withOpacity(0.2),
      offset: const Offset(0, 2),
      blurRadius: 4,
    ),
  ];

  static void showSuccess(String title, String message) {
    Get.rawSnackbar(
      title: title,
      message: message,
      backgroundColor: Colors.green,
      duration: _defaultDuration,
      margin: _defaultMargin,
      borderRadius: _defaultBorderRadius,
      snackPosition: _defaultSnackPosition,
      dismissDirection: _defaultDismissDirection,
      boxShadows: _defaultBoxShadows,
    );
  }

  static void showWarning(String title, String message, {Widget? mainButton}) {
    Get.rawSnackbar(
      title: title,
      message: message,
      backgroundColor: Colors.orange,
      duration: _defaultDuration,
      margin: _defaultMargin,
      borderRadius: _defaultBorderRadius,
      snackPosition: _defaultSnackPosition,
      dismissDirection: _defaultDismissDirection,
      boxShadows: _defaultBoxShadows,
      mainButton: mainButton,
    );
  }

  static void showError(String title, String message, {Widget? mainButton}) {
    Get.rawSnackbar(
      title: title,
      message: message,
      backgroundColor: Colors.red,
      mainButton: mainButton,
      duration: _defaultDuration,
      margin: _defaultMargin,
      borderRadius: _defaultBorderRadius,
      snackPosition: _defaultSnackPosition,
      dismissDirection: _defaultDismissDirection,
      boxShadows: _defaultBoxShadows,
    );
  }

  static void showProviderError(ProviderErrorModel providerError) {
    MaterialButton? _mainButton() {
      if (providerError.details != null) {
        MaterialButton(
          onPressed: () {
            Get.dialog(
              AlertDialog(
                title: const Text('Detalhes do Erro'),
                content: Text(providerError.details ?? ''),
              ),
            );
          },
          child: const Text(
            'Ver mais',
            style: TextStyle(color: Colors.white),
          ),
        );
      }
      return null;
    }

    int code = int.tryParse("${providerError.code}") ?? 0;
    if (getErrorSeverity(code) == Colors.red) {
      showError(
        providerError.title,
        providerError.content!,
        mainButton: _mainButton(),
      );
    } else {
      showWarning(
        providerError.title,
        providerError.content!,
        mainButton: _mainButton(),
      );
    }
  }
}

Color getErrorSeverity(int statusCode) {
  switch (statusCode) {
    case 400:
      return Colors.red;
    case 401:
      return Colors.orange;
    case 403:
      return Colors.red;
    case 404:
      return Colors.orange;
    case 500:
      return Colors.red;
    default:
      return Colors.red;
  }
}
