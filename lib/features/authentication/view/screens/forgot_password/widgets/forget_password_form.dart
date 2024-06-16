import 'package:e_commernce_ui/core/constants/config_size.dart';
import 'package:e_commernce_ui/core/constants/constants.dart';
import 'package:e_commernce_ui/core/widgets/my_button.dart';
import 'package:e_commernce_ui/features/authentication/view/widgets/custom_suffixIcon.dart';
import 'package:e_commernce_ui/features/authentication/view/widgets/form_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoegetPasswordForm extends StatefulWidget {
  const FoegetPasswordForm({super.key});

  @override
  State<FoegetPasswordForm> createState() => _FoegetPasswordFormState();
}

class _FoegetPasswordFormState extends State<FoegetPasswordForm> {
  final forgotPasswordEmailController = TextEditingController();
  final List<String> errors = [];
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Center(child: buildEmailForm()),
            SizedBox(height: getProportionateScreenHeight(130)),
            errors.isEmpty
                ? const SizedBox()
                : Column(
                    children: [
                      FormError(errors: errors),
                      getProportionateScreenHeight(30).verticalSpace,
                    ],
                  ),
            MyButton(
              text: "Continue",
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: getProportionateScreenWidth(18),
              ),
              backGroudcolor: kPrimaryColor,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                }
              },
            )
          ],
        ),
      ),
    );
  }

  TextFormField buildEmailForm() {
    return TextFormField(
      controller: forgotPasswordEmailController,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        suffixIcon: CustomSuffixIcon(iconPath: "assets/icons/Mail.svg"),
      ),
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
        }
        return null;
      },
    );
  }
}
