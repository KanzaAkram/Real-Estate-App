import 'bloc/register_form_empty_bloc.dart';import 'models/register_form_empty_model.dart';import 'package:flutter/material.dart';import 'package:kanza_s_application1/core/app_export.dart';import 'package:kanza_s_application1/core/utils/validation_functions.dart';import 'package:kanza_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:kanza_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:kanza_s_application1/widgets/custom_elevated_button.dart';import 'package:kanza_s_application1/widgets/custom_text_form_field.dart';import 'package:kanza_s_application1/domain/googleauth/google_auth_helper.dart';import 'package:kanza_s_application1/domain/facebookauth/facebook_auth_helper.dart';
// ignore_for_file: must_be_immutable
class RegisterFormEmptyScreen extends StatelessWidget {RegisterFormEmptyScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

static Widget builder(BuildContext context) { return BlocProvider<RegisterFormEmptyBloc>(create: (context) => RegisterFormEmptyBloc(RegisterFormEmptyState(registerFormEmptyModelObj: RegisterFormEmptyModel()))..add(RegisterFormEmptyInitialEvent()), child: RegisterFormEmptyScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 21.v), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 50.v), Expanded(child: SingleChildScrollView(child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("msg_create_your_account".tr, style: theme.textTheme.headlineSmall)), SizedBox(height: 30.v), Align(alignment: Alignment.centerLeft, child: Text("msg_quis_nostrud_exercitation".tr, style: theme.textTheme.bodyMedium)), SizedBox(height: 50.v), _buildFullName(context), SizedBox(height: 15.v), _buildEmail(context), SizedBox(height: 15.v), _buildPassword(context), SizedBox(height: 12.v), Align(alignment: Alignment.centerRight, child: Text("lbl_show_password".tr, style: CustomTextStyles.titleSmallMedium)), SizedBox(height: 35.v), _buildRegister(context), SizedBox(height: 18.v), _buildItemSeparator(context), SizedBox(height: 18.v), _buildLayout(context)]))))]))), bottomNavigationBar: _buildSeventyEight(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.fromLTRB(24.h, 3.v, 301.h, 3.v), onTap: () {onTapArrowLeft(context);})); } 
/// Section Widget
Widget _buildFullName(BuildContext context) { return BlocSelector<RegisterFormEmptyBloc, RegisterFormEmptyState, TextEditingController?>(selector: (state) => state.fullNameController, builder: (context, fullNameController) {return CustomTextFormField(controller: fullNameController, hintText: "lbl_full_name".tr, hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 25.v, 10.h, 24.v), decoration: BoxDecoration(borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h))), child: CustomImageView(imagePath: ImageConstant.imgLockBlueGray80001, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 70.v), validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;}, contentPadding: EdgeInsets.only(top: 26.v, right: 30.h, bottom: 26.v));}); } 
/// Section Widget
Widget _buildEmail(BuildContext context) { return BlocSelector<RegisterFormEmptyBloc, RegisterFormEmptyState, TextEditingController?>(selector: (state) => state.emailController, builder: (context, emailController) {return CustomTextFormField(controller: emailController, hintText: "lbl_email".tr, hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer, textInputType: TextInputType.emailAddress, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 25.v, 10.h, 24.v), child: CustomImageView(imagePath: ImageConstant.imgDownload, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 70.v), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, contentPadding: EdgeInsets.only(top: 26.v, right: 30.h, bottom: 26.v));}); } 
/// Section Widget
Widget _buildPassword(BuildContext context) { return BlocSelector<RegisterFormEmptyBloc, RegisterFormEmptyState, TextEditingController?>(selector: (state) => state.passwordController, builder: (context, passwordController) {return CustomTextFormField(controller: passwordController, hintText: "lbl_password".tr, hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 25.v, 10.h, 24.v), child: CustomImageView(imagePath: ImageConstant.imgLocation, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 70.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: true, contentPadding: EdgeInsets.only(top: 26.v, right: 30.h, bottom: 26.v));}); } 
/// Section Widget
Widget _buildRegister(BuildContext context) { return CustomElevatedButton(text: "lbl_register".tr, onPressed: () {onTapRegister(context);}); } 
/// Section Widget
Widget _buildOr(BuildContext context) { return CustomElevatedButton(height: 25.v, width: 35.h, text: "lbl_or".tr, buttonStyle: CustomButtonStyles.fillWhiteA1, buttonTextStyle: CustomTextStyles.labelMediumOnPrimaryContainer, alignment: Alignment.center); } 
/// Section Widget
Widget _buildItemSeparator(BuildContext context) { return SizedBox(height: 25.v, width: 327.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(bottom: 11.v), child: SizedBox(width: 327.h, child: Divider(color: appTheme.blueGray50)))), _buildOr(context)])); } 
/// Section Widget
Widget _buildLayout(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(height: 70.v, width: 158.h, padding: EdgeInsets.symmetric(vertical: 22.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: CustomImageView(imagePath: ImageConstant.imgGoogle, height: 25.adaptSize, width: 25.adaptSize, alignment: Alignment.topCenter, onTap: () {onTapImgGoogle(context);})), Container(height: 70.v, width: 158.h, padding: EdgeInsets.symmetric(vertical: 22.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: CustomImageView(imagePath: ImageConstant.imgFacebook, height: 25.adaptSize, width: 25.adaptSize, alignment: Alignment.topCenter, onTap: () {onTapImgFacebook(context);}))]); } 
/// Section Widget
Widget _buildSeventyEight(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 79.h, right: 79.h, bottom: 24.v), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("msg_already_have_an".tr, style: theme.textTheme.bodyMedium), GestureDetector(onTap: () {onTapTxtRegister(context);}, child: Padding(padding: EdgeInsets.only(left: 12.h), child: Text("lbl_login".tr, style: CustomTextStyles.titleSmallPrimaryBold)))])); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the formOtpScreen when the action is triggered.
onTapRegister(BuildContext context) { NavigatorService.pushNamed(AppRoutes.formOtpScreen, ); } 
onTapImgGoogle(BuildContext context) async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            //TODO Actions to be performed after signin
          } else {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('user data is empty')));
          }
        }).catchError((onError) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(onError.toString())));
        });
         } 
onTapImgFacebook(BuildContext context) async  {             await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
              //TODO Actions to be performed after signin
              }).catchError((onError) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(onError.toString())));
            });
             } 
/// Navigates to the loginScreen when the action is triggered.
onTapTxtRegister(BuildContext context) { NavigatorService.pushNamed(AppRoutes.loginScreen, ); } 
 }
