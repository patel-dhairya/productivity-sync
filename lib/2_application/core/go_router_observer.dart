import 'package:flutter/material.dart';

/// A custom [NavigatorObserver] that logs navigation events.
///
/// This observer can be added to the [Navigator] to receive callbacks
/// for various navigation events such as pushing, popping, removing, and
/// replacing routes.

class GoRouterObserver extends NavigatorObserver {
  GoRouterObserver();

  /// Called when a route is popped off the navigator.
  @override
  void didPop(Route route, Route? previousRoute) {
    debugPrint(
      'did Pop: ${route.settings.name}, '
      'previous route: ${previousRoute?.settings.name}',
    );
  }

  /// Called when a new route is pushed onto the navigator.
  @override
  void didPush(Route route, Route? previousRoute) {
    debugPrint(
      'did Push: ${route.settings.name}, '
      'previous route: ${previousRoute?.settings.name}',
    );
  }

  /// Called when a route is removed from the navigator.
  @override
  void didRemove(Route route, Route? previousRoute) {
    debugPrint(
      'did Remove: ${route.settings.name}, '
      'previous route: ${previousRoute?.settings.name}',
    );
  }

  /// Called when a new route replaces another route in the navigator.
  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    debugPrint(
      'did Replace: ${newRoute?.settings.name}, '
      'old route: ${oldRoute?.settings.name}',
    );
  }

  /// Called when a user gesture starts controlling a route
  @override
  void didStartUserGesture(Route route, Route? previousRoute) {
    debugPrint(
      'didStartUserGesture: ${route.settings.name}, '
      'previousRoute: ${previousRoute?.settings.name}',
    );
  }

  /// Called when the user gesture controlling a route ends.
  @override
  void didStopUserGesture() {
    debugPrint('didStopUserGesture debug');
  }
}
