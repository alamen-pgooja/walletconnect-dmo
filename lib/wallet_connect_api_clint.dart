import 'package:wallet_connect/wallet_connect.dart';

class WalletApiClint {
  static late WalletApiClint globalConnector;
  static late WCPeerMeta peerMeta;
  static late WCClient client;
  late WCSession session;

  // var handShakeId = Uuid.v4();

  WalletApiClint() {
    session = WCSession(
        topic: 'topic',
        version: '1.0',
        bridge: 'https://bridge.walletconnect.org',
        key: 'key');
    peerMeta = WCPeerMeta(
      name: 'Demo Wallet connect',
      url: 'https://example.wallet',
      description: 'Example Wallet',
      icons: [],
    );
    client = WCClient(onConnect: () {
      print('object');
    }, onSessionRequest: (id, perMeta) {
      print('object');
    });
  }

  void connect() {
    client.connectNewSession(session: session, peerMeta: peerMeta);
  }
}
