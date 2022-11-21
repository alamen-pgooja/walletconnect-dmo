import 'package:flutter/material.dart';
import 'package:walletconnect_dmo/wallet_connect_api_clint.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 late WalletApiClint walletApiClint;
  @override
  void initState() {
    walletApiClint = WalletApiClint();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wallet operation'),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20,right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            OutlinedButton(
              onPressed: () {
                walletApiClint.connect();
              },
              child: const Text('Connect my wallet'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('change network'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('send transaction'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('call contract function'),
            ),
          ],
        ),
      ),
    );
  }
}
