import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'nombre'    : 'Tyrioon',
      'apellidos' : 'Lannister',
      'email'     : 'tyrion@gmail.com',
      'password'  : '1234',
      'role'      : 'usuario'
    };

    return Scaffold(
      appBar: AppBar( title: const Text('Input Screen'), ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              CustomTextFormField(
                hintText: 'Nombre',
                labelText: 'Nombre completo',
                helperText: 'Solo letras',
                icon: Icons.check_circle,
                suffixIcon: Icons.supervisor_account_outlined, 
                formProperty: 'nombre', 
                formValues: formValues,
              ),
        
              const SizedBox(height: 30,),
        
              CustomTextFormField(
                hintText: 'Apellidos',
                labelText: 'Apellidos',
                icon: Icons.supervised_user_circle_sharp, 
                formProperty: 'apellidos', 
                formValues: formValues,
              ),
        
              const SizedBox(height: 30,),
        
              CustomTextFormField(
                hintText: 'E-Mail',
                labelText: 'E-Mail',
                icon: Icons.alternate_email_rounded,
                //Para que salga en el teclado la @ para el email
                keyboardType: TextInputType.emailAddress,
                //para que no salgan las mayusculas
                textCapitalization: TextCapitalization.none,
                formProperty: 'email', 
                formValues: formValues,
              ),
        
              const SizedBox(height: 30,),
        
              CustomTextFormField(
                hintText: 'Password',
                labelText: 'Password',
                icon: Icons.alternate_email_rounded,
                //para contrasenas
                obscureText: true,
                formProperty: 'password', 
                formValues: formValues,
              ),

              const SizedBox(height: 30,),

              DropdownButtonFormField(
                items: const [
                    DropdownMenuItem(value: 'usuario',child: Text('Usuario'),),
                    DropdownMenuItem(value: 'editor',child: Text('Editor'),),
                    DropdownMenuItem(value: 'programador',child: Text('Programador'),),
                    DropdownMenuItem(value: 'administrador',child: Text('Administrador'),),
                  ], 
                onChanged: (value) {
                  print(value);
                  //para que el valor por defecto sea usuario
                  formValues['role'] = value ?? 'usuario';
                }
              ),
        
              const SizedBox(height: 30,),
        
              ElevatedButton(
                onPressed: () {
                  //desactivar el teclado 
                  FocusScope.of(context).requestFocus(FocusNode());

                  //validar el form
                  if (!myFormKey.currentState!.validate()) {
                      print('Formulario no valido');
                      return;
                  }else{
                    print( formValues );
                  }
                },
                child: const SizedBox(
                  width: double.infinity,
        
                  child: Center(child: Text('Enviar')),
                ),
                 
              )
            ],
          ),
        ),
      )
    );
  }
}
