import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadirku_mobile/utils/utils.dart';

import '../controller/login_controller.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: SizeConfig.spaceBtwSections,
        ),
        child: Column(
          children: [
            // Server
            CustomTextFormField(
              title: Dictionary.server,
              prefixIcon: AppIcons.server,
              controller: controller.server,
              validate:
                  (value) => Validator.validateEmptyText(
                    controller.server.text,
                    value,
                  ),
            ),
            const SizedBox(height: SizeConfig.spaceBtwInputFiels),
            // Email
            CustomTextFormField(
              title: Dictionary.email,
              prefixIcon: AppIcons.email,
              controller: controller.email,
              textInputType: TextInputType.emailAddress,
              validate: (value) => Validator.validateEmail(value),
            ),
            const SizedBox(height: SizeConfig.spaceBtwInputFiels),
            // Password
            Obx(
              () => CustomTextFormField(
                controller: controller.password,
                title: Dictionary.password,
                isObscure: controller.hidePassword.value,
                prefixIcon: AppIcons.password,
                suffixIconWidget: IconButton(
                  onPressed:
                      () =>
                          controller.hidePassword.value =
                              !controller.hidePassword.value,
                  icon: Icon(
                    controller.hidePassword.value
                        ? AppIcons.eyeSlash
                        : AppIcons.eye,
                  ),
                ),
                validate:
                    (value) =>
                        Validator.validateEmptyText(Dictionary.password, value),
              ),
            ),
            const SizedBox(height: SizeConfig.spaceBtwInputFiels / 2),

            // Signin button
            ButtonPrimary(
              title: Dictionary.signIn,
              onTap: () => controller.emailAndPasswordSignin(),
            ),
            const SizedBox(height: SizeConfig.spaceBtwItems),
          ],
        ),
      ),
    );
  }
}
