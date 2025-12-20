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
class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final formKey1 = useMemoized(() => GlobalKey<FormState>());
    final formKey2 = useMemoized(() => GlobalKey<FormState>());
    final isPasswordVisible = useState(true);

    final emailFocusNode = useFocusNode();
    final passwordFocusNode = useFocusNode();

    final shakeState1 = useMemoized(() => GlobalKey<ShakeState>());
    final shakeState2 = useMemoized(() => GlobalKey<ShakeState>());

    final authState = ref.watch(authProvider);
    final authNotifier = ref.read(authProvider.notifier);

    // Listen to auth state changes
    ref.listen(authProvider, (_, next) {
      next.maybeWhen(
        authenticated: (user) {
          context.router.replaceAll([const HomeRoute()]);
        },
        error: (message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message), backgroundColor: Colors.red),
          );
        },
        orElse: () {},
      );
    });

    Future<void> loginWithApple() async {}

    Future<void> loginWithGoogle() async {}

    void validate() {
      final isEmailValid = formKey1.currentState?.validate() ?? false;
      final isPasswordValid = formKey2.currentState?.validate() ?? false;

      if (isEmailValid && isPasswordValid) {
        authNotifier.login(
          email: emailController.text.trim(),
          password: passwordController.text,
        );
        return;
      }

      if (!isEmailValid) shakeState1.currentState?.shake();
      if (!isPasswordValid) shakeState2.currentState?.shake();
    }

    void togglePasswordVisibility() {
      // Unfocus everything first, then focus on password field
      FocusScope.of(context).unfocus();
      Future.delayed(const Duration(milliseconds: 100), () {
        passwordFocusNode.requestFocus();
      });
      isPasswordVisible.value = !isPasswordVisible.value;
    }

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: pagePadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                addHeight(40),
                // Headers
                Text('Welcome Back', style: TextStyles.title),
                addHeight(8),
                Text('Sign in to continue', style: TextStyles.hintThemeText),
                addHeight(48),

                // Email field
                Padding(
                  padding: EdgeInsets.only(bottom: 6.h),
                  child: Text('Email', style: TextStyles.fieldHeader),
                ),
                Form(
                  key: formKey1,
                  child: Shake(
                    key: shakeState1,
                    child: AppTextField(
                      enabled: !authState.isLoading,
                      focusNode: emailFocusNode,
                      textController: emailController,
                      autoValidateMode: AutovalidateMode.onUnfocus,
                      hintText: 'example@gmail.com',
                      keyboardType: TextInputType.emailAddress,
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
                  key: formKey2,
                  child: Shake(
                    key: shakeState2,
                    child: AppTextField(
                      enabled: !authState.isLoading,
                      focusNode: passwordFocusNode,
                      textController: passwordController,
                      action: TextInputAction.done,
                      hintText: 'Password',
                      obscureText: isPasswordVisible.value,
                      onFieldSubmitted: (_) => validate(),
                      validation: (pass) => pass?.checkLoginPassword(),
                      suffixIcon: passwordVisibilityIcon(
                        isPasswordVisible: isPasswordVisible,
                        focusNode: passwordFocusNode,
                        onToggle: togglePasswordVisibility,
                      ),
                    ),
                  ),
                ),
                addHeight(24),

                // Login button
                AppButton(
                  onPress: validate,
                  text: 'Sign In',
                  loading: authState.isLoading,
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  child: OutlinedAppButton(
                    onPress: () => context.router.push(const SignupRoute()),
                    text: 'Create new account',
                  ),
                ),

                addHeight(6),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    const Divider(color: AppColors.outlinedColor),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      color: Colors.white,
                      child: Text(
                        'or sign in with',
                        style: TextStyles.fieldHeader.copyWith(
                          color: AppColors.hintTextColor,
                        ),
                      ),
                    ),
                  ],
                ),

                addHeight(20),
                SocialAuthButtons(
                  onGooglePressed: loginWithGoogle,
                  onApplePressed: loginWithApple,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
