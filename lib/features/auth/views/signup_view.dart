import 'package:fe_starter_project_templete/core/screen_util/screen_util.dart';
import 'package:fe_starter_project_templete/core/screen_util/screen_util_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:fe_starter_project_templete/components/widgets/text_field_widget.dart';
import 'package:fe_starter_project_templete/features/auth/stores/auth_store.dart';
import 'package:provider/provider.dart';

class SignUpView extends StatelessWidget {
  SignUpView({super.key});

  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<AuthStore>(context);
    final color = MyScreen().colorDisplay(context);
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              MyScreen().screenGapSize(height: 30.h),
              Text(
                "Create Your Account",
                style: MyScreen()
                    .textStyleHeadline(context)
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              Text(
                "My Todo App",
                style: MyScreen().textStyleTitle(context).copyWith(
                      color: color.primary,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              MyScreen().screenGapSize(height: 46.h),
              TextFieldWidget(
                controller: _fullNameController,
                labelText: "Fullname",
                hintText: "Enter your fullname",
              ),
              MyScreen().screenGapSize(height: 20),
              TextFieldWidget(
                controller: _emailController,
                labelText: "Email",
                hintText: "Enter your email",
              ),
              MyScreen().screenGapSize(height: 20),
              TextFieldWidget(
                controller: _passController,
                hintText: "Enter your Password",
                labelText: "Password",
              ),
              MyScreen().screenGapSize(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: MaterialButton(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      onPressed: () => store.registerUser(
                          _fullNameController.text.trim(),
                          _emailController.text.trim(),
                          _passController.text.trim(),
                          context),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      color: Colors.blue.shade700,
                      child: const Text(
                        "Register",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              MyScreen().screenGapSize(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "I have any account?",
                    style: MyScreen().textStyleBody(context).copyWith(
                          fontWeight: FontWeight.bold,
                          color: color.secondary,
                        ),
                  ),
                  MyScreen().screenGapSize(width: 6.h),
                  InkWell(
                    onTap: () => context.go('/login'),
                    child: Text(
                      "Sign In",
                      style: MyScreen().textStyleBody(context).copyWith(
                            fontWeight: FontWeight.bold,
                            color: color.primary,
                          ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
