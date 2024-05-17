import 'package:flutter/material.dart';

class Clientes extends StatelessWidget {
  const Clientes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes'),
        backgroundColor: Color(0xffc7eeff),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Container(
            // Agregamos un ancho máximo para el contenedor
            constraints: BoxConstraints(maxWidth: 400), // Por ejemplo
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _CustomTextField(label: 'Nombre del cliente'),
                SizedBox(height: 16), // Espacio entre los campos
                _CustomTextField(label: 'Apellido Paterno'),
                SizedBox(height: 16),
                _CustomTextField(label: 'Apellido Materno'),
                SizedBox(height: 16),
                _CustomTextField(label: 'ID Cliente'),
                SizedBox(height: 16),
                _CustomTextField(label: 'Correo Electronico'),
                SizedBox(height: 16),
                _CustomTextField(label: 'Numero Telefonico'),
                SizedBox(height: 16),
                _CustomTextField(label: 'Edad'),
                SizedBox(height: 16),
                _CustomTextField(label: 'Contacto'),
                SizedBox(height: 16),
                _CustomTextField(label: 'Direccion'),
              ],
            ),
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
