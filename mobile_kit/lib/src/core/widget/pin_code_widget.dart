import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_kit/src/core/resources/assets.dart';

class PinCodeWidget extends StatefulWidget {
  const PinCodeWidget({
    Key? key,
    required this.onComplete,
    this.minPinLength = 4,
    this.maxPinLength = 25,
    this.onChangedPin,
    this.onLeftAction,
    this.clearStream,
    this.centerBottomWidget,
    this.numbersStyle = const TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600, color: Colors.grey),
    this.borderSide = const BorderSide(width: 1, color: Colors.grey),
    this.buttonColor = Colors.black12,
    this.deleteButtonColor = Colors.black12,
    this.filledIndicatorColor = Colors.blueAccent,
    this.deleteIconColor = Colors.white,
    this.onPressColorAnimation = Colors.yellow,
    this.shouldShowLeftWidget,
  }) : super(key: key);

  /// Callback after all pins input
  final void Function(String pin) onComplete;

  /// Callback onChange
  final void Function(String pin)? onChangedPin;

  /// Callback onLeftAction
  final void Function()? onLeftAction;

  /// Event for clear pin
  final Stream<bool>? clearStream;

  /// Min pins to use
  final int minPinLength;

  /// Max pins to use
  final int maxPinLength;

  /// Any widgets on the empty place, usually - 'forgot?'
  final Widget? centerBottomWidget;

  /// Need to show widget on the left
  final bool? shouldShowLeftWidget;

  /// numbers styling
  final TextStyle numbersStyle;

  /// buttons border styling
  final BorderSide borderSide;

  /// buttons color
  final Color buttonColor;

  /// filled pins color
  final Color filledIndicatorColor;

  /// delete icon color
  final Color deleteIconColor;

  /// delete icon color
  final Color deleteButtonColor;

  /// color appears when press pin button
  final Color onPressColorAnimation;

  @override
  State<StatefulWidget> createState() => PinCodeState();
}

class PinCodeState<T extends PinCodeWidget> extends State<T> {
  final _gridViewKey = GlobalKey();
  final _key = GlobalKey<ScaffoldState>();
  final ScrollController listController = ScrollController();

  late String pin;
  late double _aspectRatio;
  bool animate = false;

  int currentPinLength() => pin.length;

  @override
  void initState() {
    super.initState();
    pin = '';
    _aspectRatio = 0;

    if (widget.clearStream != null) {
      widget.clearStream!.listen((val) {
        if (val) {
          clear();
        }
      });
    }

    WidgetsBinding.instance.addPostFrameCallback(_afterLayout);
  }

  void clear() {
    if (_key.currentState?.mounted != null && _key.currentState!.mounted) {
      setState(() => pin = '');
    }
  }

  void reset() => setState(() {
        pin = '';
      });

  void calculateAspectRatio() {
    final renderBox = _gridViewKey.currentContext!.findRenderObject() as RenderBox;
    final cellWidth = renderBox.size.width / 3;
    final cellHeight = renderBox.size.height / 4;
    if (cellWidth > 0 && cellHeight > 0) {
      _aspectRatio = cellWidth / cellHeight;
    }

    setState(() {});
  }

  void changeProcessText(String text) {}

  void close() {
    Navigator.of(_key.currentContext!).pop();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        key: _key,
        body: body(context),
        resizeToAvoidBottomInset: false,
      );

  Widget body(BuildContext context) {
    final deleteIconImage = Icon(
      Icons.clear,
      color: widget.deleteIconColor,
      size: 35,
    );
    final faceIDIcon = SvgPicture.asset(
      Assets.faceIdIcon,
      color: widget.deleteIconColor,
      width: 90,
      height: 90,
    );
    return MeasureSize(
      onChange: (size) {
        calculateAspectRatio();
      },
      child: Container(
        key: _gridViewKey,
        padding: const EdgeInsets.only(left: 40, right: 40, bottom: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(
              height: 20,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: ListView(
                  controller: listController,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  shrinkWrap: true,
                  children: List.generate(widget.maxPinLength, (index) {
                    const size = 10.0;
                    if (index < pin.length - 1) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                        child: Container(
                          width: size,
                          height: size,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: widget.filledIndicatorColor,
                          ),
                        ),
                      );
                    } else if (index == pin.length - 1) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                        child: AnimatedContainer(
                          width: animate ? size : size + 10,
                          height: !animate ? size : size + 10,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: widget.filledIndicatorColor,
                          ),
                        ),
                      );
                    }
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                      child: Container(
                        width: size,
                        height: size,
                        decoration: BoxDecoration(
                          border: Border.all(color: widget.filledIndicatorColor, width: 2),
                          shape: BoxShape.circle,
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            // const Spacer(flex: 1),
            Flexible(
              flex: 26,
              child: Container(
                  child: _aspectRatio > 0
                      ? GridView.count(
                          shrinkWrap: true,
                          crossAxisCount: 3,
                          childAspectRatio: _aspectRatio + 0.18,
                          physics: const NeverScrollableScrollPhysics(),
                          children: List.generate(
                            12,
                            (index) {
                              const double marginRight = 15;
                              const double marginLeft = 15;
                              const double marginBottom = 4;

                              if (index == 11) {
                                return Container(
                                  child: IconButton(
                                    onPressed: _onRemove,
                                    icon: deleteIconImage,
                                  ),
                                );
                              } else if (index == 10) {
                                index = 0;
                              } else if (index == 9) {
                                if (widget.shouldShowLeftWidget == true) {
                                  return Container(
                                    child: IconButton(
                                      // splashColor: Colors.transparent,
                                      // highlightColor: Colors.transparent,
                                      onPressed: widget.onLeftAction,
                                      icon: faceIDIcon,
                                    ),
                                  );
                                } else {
                                  return const SizedBox();
                                }
                              } else {
                                index++;
                              }
                              return Container(
                                margin: const EdgeInsets.only(left: marginLeft, right: marginRight, bottom: marginBottom),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: widget.buttonColor,
                                    side: widget.borderSide,
                                    shape: const CircleBorder(),
                                  ),
                                  onPressed: () => _onPressed(index),
                                  child: Text(
                                    '$index',
                                    style: widget.numbersStyle,
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      : null),
            ),
            widget.centerBottomWidget != null
                ? Flexible(
                    flex: 2,
                    child: Center(child: widget.centerBottomWidget!),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }

  Future<void> _onPressed(int num) async {
    setState(() {
      animate = false;
      pin += num.toString();
      _checkPinAndComplete();
    });
    Future.delayed(const Duration(milliseconds: 60)).then((value) {
      if (mounted) {
        setState(() {
          animate = true;
        });
      }
    });
    listController.jumpTo(listController.position.maxScrollExtent);
  }

  void _checkPinAndComplete() {
    if (currentPinLength() == widget.maxPinLength) {
      widget.onComplete(pin);
    }
  }

  void _onRemove() {
    if (currentPinLength() == 0) {
      return;
    }
    setState(() => pin = pin.substring(0, pin.length - 1));
  }

  void _afterLayout(dynamic _) {
    calculateAspectRatio();
  }
}

// Credits for the code below for https://stackoverflow.com/a/60868972/7198006
typedef OnWidgetSizeChange = void Function(Size size);

class _MeasureSizeRenderObject extends RenderProxyBox {
  Size? oldSize;
  final OnWidgetSizeChange onChange;

  _MeasureSizeRenderObject(this.onChange);

  @override
  void performLayout() {
    super.performLayout();

    final Size newSize = child!.size;
    if (oldSize == newSize) {
      return;
    }

    oldSize = newSize;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      onChange(newSize);
    });
  }
}

class MeasureSize extends SingleChildRenderObjectWidget {
  const MeasureSize({
    Key? key,
    required this.onChange,
    required Widget child,
  }) : super(key: key, child: child);

  /// Function to be called when layout changes
  final OnWidgetSizeChange onChange;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _MeasureSizeRenderObject(onChange);
  }
}
