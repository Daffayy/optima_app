// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
//
// @Riverpod(keepAlive: true)
// NavigatorApp hrisSamyangNavigator(NavigatorAppRef ref) {
//   final navigatorKey = ref.read(navigatorKeyProvider);
//   return NavigatorApp(navigatorKey);
// }
//
// class NavigatorApp{
//   final GlobalKey<NavigatorState> navigatorKey;
//
//   NavigatorApp(this.navigatorKey);
//
//   void popUntil(String route) {
//     navigatorKey.currentState?.popUntil(ModalRoute.withName(route));
//   }
//
//   void popWithResult({Object? result}) {
//     if (navigatorKey.currentState?.canPop() ?? false) {
//       navigatorKey.currentState?.pop(result);
//     } else {
//       SystemNavigator.pop();
//     }
//   }
//
//   Future<Object?> pushNamedWithResult(String route, {Object? arguments}) async {
//     final result =
//     await navigatorKey.currentState?.pushNamed(route, arguments: arguments);
//     return result;
//   }
//
//   Future<Object?> pushReplacementNamedWithResult(
//       String route, {
//         Object? arguments,
//       }) async {
//     final result = await navigatorKey.currentState
//         ?.pushReplacementNamed(route, arguments: arguments);
//     return result;
//   }
//
//   Future<Object?> pushNamedAndRemoveUntilWithResult(
//       String newRouteName,
//       bool Function(Route p1) predicate, {
//         Object? arguments,
//       }) async {
//     final result = await navigatorKey.currentState?.pushNamedAndRemoveUntil(
//       newRouteName,
//       predicate,
//       arguments: arguments,
//     );
//     return result;
//   }
// }