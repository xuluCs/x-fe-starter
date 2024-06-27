import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:fe_starter_project_templete/components/my_text_field.dart';
import 'package:fe_starter_project_templete/core/styles/style_color.dart';
import 'package:fe_starter_project_templete/core/styles/style_text.dart';
import 'package:fe_starter_project_templete/core/utils/route_path.dart';
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
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Gap(30.h),
              Text(
                "Create Your Account",
                style: h3Reguler(),
              ),
              Text(
                "My Todo App",
                style: h3Bold(),
              ),
              const Gap(6),
              const Gap(40),
              MyTextField(
                controller: _fullNameController,
                labelText: "Fullname",
                hintText: "Enter your fullname",
              ),
              const Gap(20),
              MyTextField(
                controller: _emailController,
                labelText: "Email",
                hintText: "Enter your email",
              ),
              const Gap(20),
              MyTextField(
                controller: _passController,
                hintText: "Enter your Password",
                labelText: "Password",
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: MaterialButton(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      onPressed: () => store.registerUser(
                          _fullNameController.text,
                          _emailController.text,
                          _passController.text,
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
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dont't any account?",
                    style: b3Medium(colorText: CustomColor.netral400),
                  ),
                  const Gap(12),
                  InkWell(
                    onTap: () => context.go(RoutePath.init),
                    child: Text(
                      "Sign Up",
                      style: b3Medium(colorText: CustomColor.primary800),
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
