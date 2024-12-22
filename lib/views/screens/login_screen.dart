import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:rota/controllers/auth_controller.dart';
import 'package:rota/utils/routes/app_routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      id: AppRoutes.login,
      init: Get.find<AuthController>(),
      builder: (authController) {
        return Scaffold(
          body: LayoutBuilder(
            builder: (context, constraints) {
              return Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: constraints.maxWidth < 600 ? constraints.maxWidth : 400,
                    ),
                    child: Column(
                      children: [
                        Image.asset('assets/images/logo.png'),
                        const SizedBox(height: 64.0),
                        FormBuilder(
                          key: authController.formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              FormBuilderTextField(
                                name: 'kullanıcı adı',
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  labelText: 'Kullanıcı Adı',
                                  labelStyle: const TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                                validator: FormBuilderValidators.compose([
                                  FormBuilderValidators.required(),
                                  FormBuilderValidators.numeric(),
                                  FormBuilderValidators.minLength(11),
                                  FormBuilderValidators.maxLength(11),
                                ]),
                              ),
                              const SizedBox(height: 16.0),
                              FormBuilderTextField(
                                name: 'password',
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  labelText: 'Parola',
                                  labelStyle: const TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                obscureText: true,
                                validator: FormBuilderValidators.required(),
                              ),
                              const SizedBox(height: 16.0),
                              ElevatedButton(
                                onPressed: () async => await authController.onPressedLoginButton(),
                                child: const Text(
                                  'Giriş Yap',
                                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
