import 'bloc/payment_paypal_bloc.dart';
import 'models/payment_paypal_model.dart';
import 'package:flutter/material.dart';
import 'package:kanza_s_application1/core/app_export.dart';
import 'package:kanza_s_application1/core/utils/validation_functions.dart';
import 'package:kanza_s_application1/widgets/custom_elevated_button.dart';
import 'package:kanza_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PaymentPaypalPage extends StatefulWidget {
  const PaymentPaypalPage({Key? key})
      : super(
          key: key,
        );

  @override
  PaymentPaypalPageState createState() => PaymentPaypalPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentPaypalBloc>(
      create: (context) => PaymentPaypalBloc(PaymentPaypalState(
        paymentPaypalModelObj: PaymentPaypalModel(),
      ))
        ..add(PaymentPaypalInitialEvent()),
      child: PaymentPaypalPage(),
    );
  }
}

class PaymentPaypalPageState extends State<PaymentPaypalPage>
    with AutomaticKeepAliveClientMixin<PaymentPaypalPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: _buildScrollView(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Column(
              children: [
                BlocSelector<PaymentPaypalBloc, PaymentPaypalState,
                    TextEditingController?>(
                  selector: (state) => state.lockController,
                  builder: (context, lockController) {
                    return CustomTextFormField(
                      controller: lockController,
                      hintText: "lbl_jonathan".tr,
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(50.h),
                          ),
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgLockBlueGray80001,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 70.v,
                      ),
                    );
                  },
                ),
                SizedBox(height: 15.v),
                BlocSelector<PaymentPaypalBloc, PaymentPaypalState,
                    TextEditingController?>(
                  selector: (state) => state.emailController,
                  builder: (context, emailController) {
                    return CustomTextFormField(
                      controller: emailController,
                      hintText: "lbl_user_email_com".tr,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.emailAddress,
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgDownload,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 70.v,
                      ),
                      validator: (value) {
                        if (value == null ||
                            (!isValidEmail(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_email".tr;
                        }
                        return null;
                      },
                    );
                  },
                ),
                SizedBox(height: 30.v),
                CustomImageView(
                  imagePath: ImageConstant.imageNotFound,
                  height: 1.v,
                  width: 100.h,
                ),
                SizedBox(height: 10.v),
                CustomElevatedButton(
                  text: "lbl_next".tr,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
