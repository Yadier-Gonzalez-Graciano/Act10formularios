import 'package:flutter/material.dart';

class Pedidos extends StatelessWidget {
  const Pedidos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compras'),
        backgroundColor: Color(0xffc7eeff),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _CustomTextField(label: "ID producto"),
              SizedBox(height: 16), // Espacio entre los campos
              _CustomTextField(label: 'nombre'),
              SizedBox(height: 16),
              _CustomTextField(label: 'id cliente'),
              SizedBox(height: 16),
              _CustomTextField(label: 'num productos'),
              SizedBox(height: 16),
              _CustomTextField(label: 'precio'),
              SizedBox(height: 16),
              _CustomTextField(label: 'Fecha'),
              SizedBox(height: 16),
              _CustomTextField(label: 'SucID'),
              SizedBox(height: 16),
              _CustomTextField(label: 'SucNombre'),
              SizedBox(height: 16),
              _CustomTextField(label: "ID empleado"),
              SizedBox(height: 16), // Espacio al final de la pantalla
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomTextField extends StatefulWidget {
  final String label;

  const _CustomTextField({Key? key, required this.label}) : super(key: key);

  @override
  __CustomTextFieldState createState() => __CustomTextFieldState();
}

class __CustomTextFieldState extends State<_CustomTextField> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: widget.label,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: _isFocused ? Colors.blue : Colors.grey,
              width: 2.0), // Grosor de la línea
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.blue, width: 2.0), // Grosor de la línea
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      onTap: () {
        setState(() {
          _isFocused = true;
        });
      },
      onChanged: (_) {
        setState(() {
          _isFocused = false;
        });
      },
      onEditingComplete: () {
        setState(() {
          _isFocused = false;
        });
      },
    );
  }
}
