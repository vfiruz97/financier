import 'package:flutter/material.dart';

class MainAuthScreen extends StatelessWidget {
  const MainAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 50, top: 10, right: 50, bottom: 80),
        child: CustomScrollView(slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/images/humaans.png', height: 200, cacheHeight: 200),
                Text('CREATE ACCOUNT', style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.white)),
                const SizedBox(height: 15),
                const Text(
                  'Create safe and secure account',
                  style:
                      TextStyle(fontSize: 13, color: Colors.white60, letterSpacing: -.6, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 50),
                Container(
                  decoration:
                      const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4)), color: Colors.white),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => Navigator.pushNamed(context, '/register'),
                      child: SizedBox(
                        height: 47,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('REGISTER',
                                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                      color: Theme.of(context).colorScheme.primary,
                                    )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                    color: Colors.transparent,
                    border: Border.all(color: Colors.white),
                  ),
                  child: InkWell(
                    onTap: () => Navigator.pushNamed(context, '/register'),
                    child: SizedBox(
                      height: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('LOGIN WITH GOOGLE',
                              style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, '/login'),
                  child: RichText(
                    text: TextSpan(
                      text: 'Already have an account?',
                      style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 13),
                      children: const [TextSpan(text: ' Login', style: TextStyle(color: Colors.white))],
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
