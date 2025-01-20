import 'package:flutter/material.dart';

/// Class to track various life cycle events
class LifeCycleManager extends StatefulWidget {
  const LifeCycleManager({
    Key? key,
    required Widget child,
    required ValueChanged<AppLifecycleState> onStateChanged,
  })  : _child = child,
        _onStateChanged = onStateChanged,
        super(key: key);

  final Widget _child;

  final ValueChanged<AppLifecycleState> _onStateChanged;

  @override
  _LifeCycleManagerState createState() => _LifeCycleManagerState();
}

class _LifeCycleManagerState extends State<LifeCycleManager> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    widget._onStateChanged(state);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget._child,
    );
  }
}
