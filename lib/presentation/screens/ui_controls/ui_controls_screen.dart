import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = "ui_controls_screen";

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UI Controls"),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Trasnportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Trasnportation selectedTrasnportation = Trasnportation.car;
  bool wantsBreakfast = false;
  bool wantsLuch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text("Developer Mode"),
          subtitle: const Text("Controles adicionales"),
          value: isDeveloper,
          onChanged: (value) {
            setState(() {
              isDeveloper = !isDeveloper;
            });
          },
        ),
        ExpansionTile(
          title: const Text("Vehículo de trasporte"),
          subtitle: Text("$selectedTrasnportation"),
          children: [
            RadioListTile(
              title: const Text("By Car"),
              subtitle: const Text("Viajar por carro"),
              value: Trasnportation.car,
              groupValue: selectedTrasnportation,
              onChanged: (value) => setState(() {
                selectedTrasnportation = Trasnportation.car;
              }),
            ),
            RadioListTile(
              title: const Text("By Boat"),
              subtitle: const Text("Viajar por barco"),
              value: Trasnportation.boat,
              groupValue: selectedTrasnportation,
              onChanged: (value) => setState(() {
                selectedTrasnportation = Trasnportation.boat;
              }),
            ),
            RadioListTile(
              title: const Text("By Plane"),
              subtitle: const Text("Viajar por avión"),
              value: Trasnportation.plane,
              groupValue: selectedTrasnportation,
              onChanged: (value) => setState(() {
                selectedTrasnportation = Trasnportation.plane;
              }),
            ),
            RadioListTile(
              title: const Text("By Submarine"),
              subtitle: const Text("Viajar por submarino"),
              value: Trasnportation.submarine,
              groupValue: selectedTrasnportation,
              onChanged: (value) => setState(() {
                selectedTrasnportation = Trasnportation.submarine;
              }),
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text("¿Incluir desayuno?"),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text("¿Incluir almuerzo?"),
          value: wantsLuch,
          onChanged: (value) => setState(() {
            wantsLuch = !wantsLuch;
          }),
        ),
        CheckboxListTile(
          title: const Text("¿Incluir cena?"),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}
