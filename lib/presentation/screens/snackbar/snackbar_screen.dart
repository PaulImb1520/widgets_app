import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = "snackbar_screen";

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text("Hola Mundo"),
      action: SnackBarAction(
        label: "OK!",
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text("¿Estás seguro?"),
        content: const Text(
            "Aliqua adipisicing eiusmod voluptate id veniam in veniam deserunt incididunt ipsum voluptate elit consequat. Esse esse nisi voluptate ut consectetur qui in ad labore id enim nostrud qui. Voluptate ut duis tempor consequat sit minim occaecat voluptate incididunt quis sit consectetur cupidatat elit. Aliqua ex est id sint nulla pariatur incididunt sit. Irure labore occaecat ex laboris Lorem nulla Lorem Lorem anim do non do consectetur reprehenderit. Id nisi minim quis eu sit enim laboris dolore. Elit non enim elit anim culpa et."),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text("Cancelar")),
          FilledButton(
              onPressed: () => context.pop(), child: const Text("Aceptar")),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbars and dialogs"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text("Mostrar Snackbar"),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        "Exercitation adipisicing aliqua laborum aliquip officia sunt. Duis laborum deserunt officia eiusmod sit elit eiusmod non. Sit in esse consectetur eiusmod enim laboris eiusmod esse laboris culpa non.")
                  ]);
                },
                child: const Text("Licencias usadas")),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text("Mostrar diálogo")),
          ],
        ),
      ),
    );
  }
}
