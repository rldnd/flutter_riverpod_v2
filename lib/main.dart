import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_v2/riverpod/provider_observer.dart';
import 'package:flutter_riverpod_v2/screen/home_screen.dart';

void main() {
  runApp(
    ProviderScope(
      observers: [Logger()],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    ),
  );
}
