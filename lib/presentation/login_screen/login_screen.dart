import 'bloc/login_bloc.dart';import 'models/login_model.dart';import 'package:flutter/material.dart';import 'package:kanza_s_application1/core/app_export.dart';import 'package:kanza_s_application1/widgets/app_bar/appbar_leading_iconbutton_one.dart';import 'package:kanza_s_application1/widgets/app_bar/appbar_trailing_iconbutton_one.dart';import 'package:kanza_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:kanza_s_application1/widgets/custom_elevated_button.dart';import 'package:kanza_s_application1/domain/googleauth/google_auth_helper.dart';import 'package:kanza_s_application1/domain/facebookauth/facebook_auth_helper.dart';class LoginScreen extends StatelessWidget {const LoginScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<LoginBloc>(create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))..add(LoginInitialEvent()), child: LoginScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {return SafeArea(child: Scaffold(body: SizedBox(width: 355.h, child: Column(children: [SizedBox(height: 416.v, width: 355.h, child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgBackgroundIllustration416x355, height: 416.v, width: 355.h, alignment: Alignment.center), _buildAppBar(context)])), SizedBox(height: 33.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 14.h), child: Text("msg_ready_to_explore".tr, style: theme.textTheme.headlineSmall))), SizedBox(height: 42.v), CustomElevatedButton(text: "msg_continue_with_email".tr, margin: EdgeInsets.symmetric(horizontal: 14.h), leftIcon: Container(margin: EdgeInsets.only(right: 10.h), child: CustomImageView(imagePath: ImageConstant.imgArrowdown, height: 20.adaptSize, width: 20.adaptSize)), onPressed: () {onTapContinueWithEmail(context);}), SizedBox(height: 18.v), _buildItemSeparator(context), SizedBox(height: 18.v), _buildButtonSocmed(context)])), bottomNavigationBar: _buildSeventySeven(context)));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 64.v, leadingWidth: 74.h, leading: AppbarLeadingIconbuttonOne(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h), onTap: () {onTapArrowLeft(context);}), actions: [AppbarTrailingIconbuttonOne(imagePath: ImageConstant.imgProfile, margin: EdgeInsets.symmetric(horizontal: 24.h))]); } 
/// Section Widget
Widget _buildItemSeparator(BuildContext context) { return SizedBox(height: 25.v, width: 327.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(bottom: 11.v), child: SizedBox(width: 327.h, child: Divider(color: appTheme.blueGray50)))), CustomElevatedButton(height: 25.v, width: 35.h, text: "lbl_or".tr, buttonStyle: CustomButtonStyles.fillWhiteA1, buttonTextStyle: CustomTextStyles.labelMediumOnPrimaryContainer, alignment: Alignment.center)])); } 
/// Section Widget
Widget _buildButtonSocmed(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 14.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(height: 70.v, width: 158.h, padding: EdgeInsets.symmetric(vertical: 22.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: CustomImageView(imagePath: ImageConstant.imgGoogle, height: 25.adaptSize, width: 25.adaptSize, alignment: Alignment.topCenter, onTap: () {onTapImgGoogle(context);})), Container(height: 70.v, width: 158.h, margin: EdgeInsets.only(left: 10.h), padding: EdgeInsets.symmetric(vertical: 22.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: CustomImageView(imagePath: ImageConstant.imgFacebook, height: 25.adaptSize, width: 25.adaptSize, alignment: Alignment.topCenter, onTap: () {onTapImgFacebook(context);}))])); } 
/// Section Widget
Widget _buildSeventySeven(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 78.h, right: 78.h, bottom: 24.v), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("msg_don_t_have_an_account".tr, style: theme.textTheme.bodyMedium)), GestureDetector(onTap: () {onTapTxtRegister(context);}, child: Padding(padding: EdgeInsets.only(left: 13.h), child: Text("lbl_register".tr, style: CustomTextStyles.titleSmallPrimaryBold)))])); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the formEmptyScreen when the action is triggered.
onTapContinueWithEmail(BuildContext context) { NavigatorService.pushNamed(AppRoutes.formEmptyScreen, ); } 
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
/// Navigates to the registerFormEmptyScreen when the action is triggered.
onTapTxtRegister(BuildContext context) { NavigatorService.pushNamed(AppRoutes.registerFormEmptyScreen, ); } 
 }
