import '../../../application/auth/auth/auth_bloc.dart';
import '../../../application/auth/register/register_bloc.dart';
import '../../../injection.dart';
import '../../helpers/flushers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RegisterBloc>(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Theme.of(context).primaryColor,
        body: Padding(
          padding: const EdgeInsets.only(left: 50, top: 10, right: 50, bottom: 10),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: BlocConsumer<RegisterBloc, RegisterState>(
                  listenWhen: (p, c) => p.failureOrSuccessOption != c.failureOrSuccessOption,
                  listener: (context, state) {
                    final String? failureMesssage = state.failureOrSuccessOption.fold(
                      () => null,
                      (failureOrSuccess) => failureOrSuccess.fold(
                        (f) => f.maybeMap(
                          emailAlreadyInUse: (_) => 'This email is existed, try to log in',
                          invalidCraditional: (_) => 'Email or password is incorrect',
                          orElse: () => 'Unexpected error occured',
                        ),
                        (_) {
                          BlocProvider.of<AuthBloc>(context).add(const AuthEvent.checkAuth());
                          // Navigator.pushReplacementNamed(context, '/');
                          Navigator.restorablePopAndPushNamed(context, '/');
                          return null;
                        },
                      ),
                    );
                    if (failureMesssage != null) {
                      FlushbarHelper.showValidationError(context, message: failureMesssage);
                    }
                  },
                  builder: (context, state) {
                    return Form(
                      autovalidateMode: state.validateForm ? AutovalidateMode.always : AutovalidateMode.disabled,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('REGISTRATION',
                              style:
                                  Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 30, color: Colors.white)),
                          const SizedBox(height: 15),
                          const Text(
                            'Create an account to manage your budget and store your data in secure storage',
                            style: TextStyle(
                                fontSize: 13, color: Colors.white60, letterSpacing: -.6, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 40),
                          SizedBox(
                            height: 70,
                            child: TextFormField(
                              cursorColor: Colors.white,
                              style: const TextStyle(color: Colors.white),
                              onChanged: (value) {
                                context.read<RegisterBloc>().add(RegisterEvent.changeEmail(value));
                              },
                              decoration: InputDecoration(
                                hintText: 'Enter email',
                                hintStyle: TextStyle(
                                  color: Theme.of(context).colorScheme.secondary,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                  color: Theme.of(context).colorScheme.secondary,
                                )),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary, width: 2)),
                              ),
                              keyboardType: TextInputType.emailAddress,
                              validator: (_) => state.email.value.fold(
                                  (f) => f.maybeMap(
                                      empty: (_) => 'Fill the field',
                                      hasIncorrectLength: (_) => 'Incorrect length',
                                      incorrectEmail: (_) => 'Incorrect email',
                                      orElse: () => 'Incorrect email'),
                                  (_) => null),
                            ),
                          ),
                          SizedBox(
                            height: 70,
                            child: TextFormField(
                              cursorColor: Colors.white,
                              style: const TextStyle(color: Colors.white),
                              onChanged: (value) {
                                context.read<RegisterBloc>().add(RegisterEvent.changePassword(value));
                              },
                              decoration: InputDecoration(
                                hintText: 'Enter password',
                                hintStyle: TextStyle(
                                  color: Theme.of(context).colorScheme.secondary,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary, width: 2)),
                              ),
                              keyboardType: TextInputType.visiblePassword,
                              validator: (_) => state.password.value.fold(
                                  (f) => f.maybeMap(
                                      hasIncorrectLength: (_) => 'Incorrect length', orElse: () => 'Incorrect email'),
                                  (_) => null),
                            ),
                          ),
                          const SizedBox(height: 30),
                          InkWell(
                            onTap: () {
                              context.read<RegisterBloc>().add(const RegisterEvent.registerByLoginAndPassword());
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(4)), color: Colors.white),
                              child: SizedBox(
                                height: 42,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('REGISTER',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall
                                            ?.copyWith(color: Theme.of(context).colorScheme.primary)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          if (state.submitting) const LinearProgressIndicator(),
                          const SizedBox(height: 20),
                          Center(
                            child: InkWell(
                              onTap: () => Navigator.pushNamed(context, '/login'),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text: 'Already have an account?',
                                  style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 13),
                                  children: const [TextSpan(text: ' Login', style: TextStyle(color: Colors.white))],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 70),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
