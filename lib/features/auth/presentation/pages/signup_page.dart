import 'package:ai_interview_mvp/common/utils/extensions.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/components/components.dart';
import '../../../../common/styles/component_style.dart';
import '../../../../common/styles/text_style.dart';
import '../../../../config/router/app_router.dart';
import '../../../../constants/colors.dart';
import '../../application/auth_notifier.dart';
import '../../application/auth_state.dart';
import '../widgets/extras.dart';
import '../widgets/social_auth_buttons.dart';

@RoutePage()
class SignupPage extends HookConsumerWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = useTextEditingController();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();

    final formKey1 = useMemoized(() => GlobalKey<FormState>());
    final formKey2 = useMemoized(() => GlobalKey<FormState>());
    final formKey3 = useMemoized(() => GlobalKey<FormState>());
    final formKey4 = useMemoized(() => GlobalKey<FormState>());

    final isPasswordVisible = useState(true);
    final isConfirmPasswordVisible = useState(true);

    final nameFocusNode = useFocusNode();
    final emailFocusNode = useFocusNode();
    final passwordFocusNode = useFocusNode();
    final confirmPasswordFocusNode = useFocusNode();

    final shakeState1 = useMemoized(() => GlobalKey<ShakeState>());
    final shakeState2 = useMemoized(() => GlobalKey<ShakeState>());
    final shakeState3 = useMemoized(() => GlobalKey<ShakeState>());
    final shakeState4 = useMemoized(() => GlobalKey<ShakeState>());
    final shakeStatePasswordRequirements = useMemoized(
      () => GlobalKey<ShakeState>(),
    );

    // Reactive password validation states
    final password = useListenableSelector(
      passwordController,
      () => passwordController.text,
    );
    final validationStates = useMemoized(() {
      return [
        password.length >= 8, // Be at least 8 characters or more
        RegExp(r'[A-Z]').hasMatch(password) &&
            RegExp(
              r'[a-z]',
            ).hasMatch(password), // At least 1 uppercase and lowercase letter
        RegExp(r'[0-9]').hasMatch(password), // Must contain a digit or a number
        RegExp(
          r'[@$!%*?&#]',
        ).hasMatch(password), // Must contain a special character
      ];
    }, [password]);

    final authState = ref.watch(authProvider);
    final authNotifier = ref.read(authProvider.notifier);

    // Listen to auth state changes
    ref.listen(authProvider, (previous, next) {
      next.maybeWhen(
        authenticated: (user) {
          context.router.replaceAll([const HomeRoute()]);
        },
        error: (message) {
          final messenger = ScaffoldMessenger.of(context);

          messenger.clearSnackBars(); // <- dismiss existing ones
          messenger.showSnackBar(
            SnackBar(content: Text(message), backgroundColor: Colors.red),
          );
        },
        orElse: () {},
      );
    });

    void signUpWithGoogle() {}

    void signUpWithApple() {}

    void togglePasswordVisibility() {
      // Unfocus everything first, then focus on password field
      FocusScope.of(context).unfocus();
      Future.delayed(const Duration(milliseconds: 10), () {
        passwordFocusNode.requestFocus();
      });
      isPasswordVisible.value = !isPasswordVisible.value;
    }

    void togglePasswordVisibility2() {
      // Unfocus everything first, then focus on confirm password field
      FocusScope.of(context).unfocus();
      Future.delayed(const Duration(milliseconds: 10), () {
        confirmPasswordFocusNode.requestFocus();
      });
      isConfirmPasswordVisible.value = !isConfirmPasswordVisible.value;
    }

    void validate() {
      final isNameValid = formKey1.currentState?.validate() ?? false;
      final isEmailValid = formKey2.currentState?.validate() ?? false;
      final isConfirmPasswordValid = formKey4.currentState?.validate() ?? false;

      // Check if password meets all requirements
      final allPasswordRequirementsMet = validationStates.every(
        (state) => state,
      );

      if (isNameValid &&
          isEmailValid &&
          isConfirmPasswordValid &&
          allPasswordRequirementsMet) {
        authNotifier.signup(
          email: emailController.text.trim(),
          name: nameController.text.trim(),
          password: passwordController.text,
        );
        return;
      }

      if (!isNameValid) shakeState1.currentState?.shake();
      if (!isEmailValid) shakeState2.currentState?.shake();
      if (!allPasswordRequirementsMet) {
        shakeState3.currentState?.shake();
        shakeStatePasswordRequirements.currentState?.shake();
      }
      if (!isConfirmPasswordValid) shakeState4.currentState?.shake();
    }

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              surfaceTintColor: Colors.transparent,
              backgroundColor: Colors.white,
              expandedHeight: 84,
              floating: false,
              pinned: true,
              elevation: 0,
              automaticallyImplyLeading: false,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'Create Account',
                  style: TextStyles.text.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                titlePadding: EdgeInsets.only(
                  left: pagePadding.left,
                  right: pagePadding.right,
                  bottom: 8,
                ),
                expandedTitleScale: 1.5,
                centerTitle: false,
              ),
            ),
            SliverPadding(
              padding: pagePadding,
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  Text(
                    'Sign up to get started',
                    style: TextStyles.hintThemeText,
                  ),
                  addHeight(48),

                  // Name field
                  Padding(
                    padding: EdgeInsets.only(bottom: 6.h),
                    child: Text('Full Name', style: TextStyles.fieldHeader),
                  ),
                  Form(
                    key: formKey1,
                    child: Shake(
                      key: shakeState1,
                      child: AppTextField(
                        enabled: !authState.isLoading,
                        focusNode: nameFocusNode,
                        textController: nameController,
                        hintText: 'John Doe',
                        validation: (name) => name?.trim().validateName(),
                      ),
                    ),
                  ),
                  addHeight(12),

                  // Email field
                  Padding(
                    padding: EdgeInsets.only(bottom: 6.h),
                    child: Text('Email', style: TextStyles.fieldHeader),
                  ),
                  Form(
                    key: formKey2,
                    child: Shake(
                      key: shakeState2,
                      child: AppTextField(
                        enabled: !authState.isLoading,
                        focusNode: emailFocusNode,
                        textController: emailController,
                        hintText: 'example@gmail.com',
                        keyboardType: TextInputType.emailAddress,
                        autoValidateMode: AutovalidateMode.onUnfocus,
                        validation: (email) => email?.trim().validateEmail(),
                      ),
                    ),
                  ),
                  addHeight(12),

                  // Password field
                  Padding(
                    padding: EdgeInsets.only(bottom: 6.h),
                    child: Text('Password', style: TextStyles.fieldHeader),
                  ),
                  Form(
                    key: formKey3,
                    child: AppTextField(
                      enabled: !authState.isLoading,
                      focusNode: passwordFocusNode,
                      textController: passwordController,
                      hintText: 'Create a password',
                      obscureText: isPasswordVisible.value,
                      autoValidateMode: AutovalidateMode.disabled,
                      suffixIcon: passwordVisibilityIcon(
                        isPasswordVisible: isPasswordVisible,
                        focusNode: passwordFocusNode,
                        onToggle: togglePasswordVisibility,
                      ),
                    ),
                  ),
                  Shake(
                    key: shakeStatePasswordRequirements,
                    child: Container(
                      padding: EdgeInsets.all(12.h),
                      margin: EdgeInsets.only(top: 14.h),
                      decoration: BoxDecoration(
                        color: AppColors.inputBackGround.withValues(alpha: .6),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(requirements.length * 2 - 1, (
                          index,
                        ) {
                          if (index.isEven) {
                            int requirementIndex = index ~/ 2;
                            return passwordRequirementRow(
                              requirements[requirementIndex],
                              checked: validationStates[requirementIndex],
                              hasStartedTyping: password.isNotEmpty,
                            );
                          }
                          return addHeight(6);
                        }),
                      ),
                    ),
                  ),
                  addHeight(24),
                  // Confirm password field
                  Padding(
                    padding: EdgeInsets.only(bottom: 6.h),
                    child: Text(
                      'Confirm Password',
                      style: TextStyles.fieldHeader,
                    ),
                  ),
                  Form(
                    key: formKey4,
                    child: Shake(
                      key: shakeState4,
                      child: AppTextField(
                        enabled: !authState.isLoading,
                        focusNode: confirmPasswordFocusNode,
                        textController: confirmPasswordController,
                        action: TextInputAction.done,
                        hintText: 'Re-enter your password',
                        obscureText: isConfirmPasswordVisible.value,
                        onFieldSubmitted: (_) => validate(),
                        validation: (value) =>
                            value.validateConfirmPassword(passwordController),
                        suffixIcon: passwordVisibilityIcon(
                          isPasswordVisible: isConfirmPasswordVisible,
                          focusNode: confirmPasswordFocusNode,
                          onToggle: togglePasswordVisibility2,
                        ),
                      ),
                    ),
                  ),
                  addHeight(16),

                  // Signup button
                  AppButton(
                    onPress: validate,
                    text: 'Sign Up',
                    loading: authState.isLoading,
                  ),

                  addHeight(22),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      const Divider(color: AppColors.outlinedColor),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        color: Colors.white,
                        child: Text(
                          'or continue with',
                          style: TextStyles.fieldHeader.copyWith(
                            color: AppColors.hintTextColor,
                          ),
                        ),
                      ),
                    ],
                  ),

                  addHeight(20),
                  SocialAuthButtons(
                    onGooglePressed: signUpWithGoogle,
                    onApplePressed: signUpWithApple,
                  ),

                  addHeight(MediaQuery.of(context).viewInsets.bottom + 40),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
