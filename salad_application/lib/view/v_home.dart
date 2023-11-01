import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:flutter/services.dart';
import 'package:fruit_salad/controller/c_error_massage.dart';
import 'package:fruit_salad/model/m_page1.dart';
import 'package:fruit_salad/view/v_page1.dart';

class VHome extends StatefulWidget {
  const VHome({super.key});

  @override
  State<VHome> createState() => _VHomeState();
}

class _VHomeState extends State<VHome> {
  ConnectivityResult _connectionStatus = ConnectivityResult.none;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  @override
  void initState() {
    super.initState();
    initConnectivity();

    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initConnectivity() async {
    late ConnectivityResult result;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      developer.log('Couldn\'t check connectivity status', error: e);
      return;
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) {
      return Future.value(null);
    }

    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    setState(() {
      _connectionStatus = result;
    });
  }

  Widget view() {
    if (_connectionStatus == ConnectivityResult.none) {
      return const CErrorMassage(massage: MPage1.errorMassage);
    }
    return const VPage1();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: view(),
    );
  }
}
