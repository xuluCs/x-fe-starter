import 'package:fe_starter_project_templete/core/screen_util/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:fe_starter_project_templete/components/widgets/text_field_widget.dart';
import 'package:fe_starter_project_templete/core/constants/constants_asset.dart';
import 'package:fe_starter_project_templete/core/constants/constants_text.dart';
import 'package:fe_starter_project_templete/core/utils/route_path.dart';
import 'package:fe_starter_project_templete/features/auth/stores/auth_store.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  static const introPage = "into_page";
  LoginView({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
              Gap(34.h),
              Image.asset(
                ConstantsAsset.imglogoApp,
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              Gap(24.h),
              Text(
                ConstantText.welcomeTo,
                style: MyScreen().textStyleHeadline(context).copyWith(
                      fontWeight: FontWeight.w600,
                      color: color.primary,
                    ),
              ),
              Text(
                ConstantText.myTodo,
                style: MyScreen().textStyleHeadline(context).copyWith(
                      fontWeight: FontWeight.bold,
                      color: color.shadow,
                    ),
              ),
              Gap(6.h),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1),
                child: Text(
                  ConstantText.discriptionTodo,
                  style: MyScreen().textStyleTitle(context).copyWith(
                        fontWeight: FontWeight.w500,
                        color: color.secondary,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
              Gap(40.h),
              TextFieldWidget(
                controller: _emailController,
                hintText: "Enter your email",
                labelText: "Email",
              ),
              Gap(20.h),
              TextFieldWidget(
                controller: _passwordController,
                hintText: "Enter your password",
                labelText: "Password",
              ),
              Gap(30.h),
              Row(
                children: [
                  if (store.isLoading) const CircularProgressIndicator(),
                  if (!store.isLoading)
                    Expanded(
                      child: MaterialButton(
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                        onPressed: () {
                          store.loginUser(_emailController.text,
                              _passwordController.text, context);
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        color: color.primary,
                        child: Text(
                          "Login",
                          style: MyScreen().textStyleTitle(context).copyWith(
                                fontWeight: FontWeight.bold,
                                color: color.background,
                              ),
                        ),
                      ),
                    ),
                ],
              ),
              Gap(20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dont't any account?",
                    style: MyScreen().textStyleTitle(context).copyWith(
                          fontWeight: FontWeight.bold,
                          color: color.secondary,
                        ),
                  ),
                  const Gap(12),
                  GestureDetector(
                    onTap: () => context.go(RoutePath.signUp),
                    child: Text(
                      "Sign Up",
                      style: MyScreen().textStyleTitle(context).copyWith(
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
