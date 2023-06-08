import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Registro2 extends StatefulWidget {
  const Registro2({Key? key});

  @override
  State<Registro2> createState() => RegistroState();
}

class RegistroState extends State<Registro2> {
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;

  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(40.0),
            child: CircleAvatar(
              radius: 100.0,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage('images/user.png'),
            ),
          ),
          const SizedBox(height: 20.0),
          Center(
            child: Text(
              'Formulario de Registro',
              style: const TextStyle(
                fontFamily: 'cursiva',
                fontSize: 30.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          const Divider(color: Colors.black),
          const SizedBox(height: 20.0),
          buildTextField(
            'NOMBRE',
            icon: Icons.person_outline,
            hintText: 'Ingrese su nombre',
            labelText: 'Nombre',
            helperText: 'Ingrese un nombre',
            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 20.0),
          buildTextField(
            'APELLIDO',
            icon: Icons.person_outline,
            hintText: 'Ingrese su apellido',
            labelText: 'Apellido',
            helperText: 'Ingrese un apellido',
            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 20.0),
          buildTextField(
            'TELEFONO',
            icon: Icons.phone_outlined,
            hintText: 'Ingrese su número de teléfono',
            labelText: 'Teléfono',
            helperText: 'Ingrese un número de teléfono',
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
            ],
          ),
          const SizedBox(height: 20.0),
          buildTextField(
            'USER-NAME',
            icon: Icons.person_outline,
            hintText: 'Ingrese su nombre de usuario',
            labelText: 'Nombre de usuario',
            helperText: 'Ingrese un nombre de usuario',
            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 20.0),
          buildTextField(
            'EMAIL',
            icon: Icons.alternate_email_outlined,
            hintText: 'Ingrese su dirección de correo electrónico',
            labelText: 'Correo electrónico',
            helperText: 'Ingrese un correo electrónico',
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 20.0),
          buildTextField(
            'PASSWORD',
            icon: Icons.lock_outline,
            hintText: 'Ingrese una contraseña',
            labelText: 'Contraseña',
            helperText: 'Ingrese una contraseña',
            keyboardType: TextInputType.text,
            obscureText: true,
            controller: _passwordController,
          ),
          const SizedBox(height: 20.0),
          buildTextField(
            'CONFIRMAR CONTRASEÑA',
            icon: Icons.lock_outline,
            hintText: 'Confirme su contraseña',
            labelText: 'Confirmar contraseña',
            helperText: 'Confirme su contraseña',
            keyboardType: TextInputType.text,
            obscureText: true,
            controller: _confirmPasswordController,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: ElevatedButton(
              onPressed: () {
                String password = _passwordController.text;
                String confirmPassword = _confirmPasswordController.text;

                if (password == confirmPassword) {
                  print('¡Contraseñas coinciden!');
                  // Continuar con el proceso de inicio de sesión
                } else {
                  print('¡Las contraseñas no coinciden!');
                  // Mostrar un mensaje de error al usuario
                }
              },
              child: const Text(
                'GUARDAR',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                primary: Colors.blue, // Cambiar a color azul
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.orange,
              ),
              child: const Text(
                'INICIO',
                style: TextStyle(color: Colors.white),
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 0,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTextField(
    String label, {
    required IconData icon,
    required String hintText,
    required String labelText,
    required String helperText,
    required TextInputType keyboardType,
    bool obscureText = false,
    List<TextInputFormatter>? inputFormatters,
    TextEditingController? controller,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: TextField(
        enableInteractiveSelection: false,
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          suffixIcon: Icon(icon),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          hintText: hintText,
          helperText: helperText,
          labelStyle: const TextStyle(color: Colors.grey),
          hintStyle: const TextStyle(color: Colors.grey),
          helperStyle: const TextStyle(color: Colors.grey),
        ),
        keyboardType: keyboardType,
        obscureText: obscureText,
        inputFormatters: inputFormatters,
      ),
    );
  }
}
