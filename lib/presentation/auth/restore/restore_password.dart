import 'package:flutter/material.dart';

class RestorePassword extends StatelessWidget {
  const RestorePassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('RESTORE PASSWORD', style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 30)),
            const SizedBox(height: 15),
            const Text(
              'To restore your password, please enter your email. We will send a latter with link to set a new password',
              style: TextStyle(fontSize: 13, color: Colors.black54, letterSpacing: -.6, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 70,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter email',
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 2)),
                ),
                keyboardType: TextInputType.emailAddress,
                //validator: (w) => 'Account name should be filled in',
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4)), color: Colors.green),
              child: SizedBox(
                height: 42,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('SEND EMAIL', style: Theme.of(context).textTheme.titleSmall)],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
