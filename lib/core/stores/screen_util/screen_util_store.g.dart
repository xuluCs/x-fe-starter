// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_util_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ScreenUtilStore on ScreenUtilStoreBase, Store {
  Computed<bool>? _$isDesktopComputed;

  @override
  bool get isDesktop =>
      (_$isDesktopComputed ??= Computed<bool>(() => super.isDesktop,
              name: 'ScreenUtilStoreBase.isDesktop'))
          .value;
  Computed<bool>? _$isTabletComputed;

  @override
  bool get isTablet =>
      (_$isTabletComputed ??= Computed<bool>(() => super.isTablet,
              name: 'ScreenUtilStoreBase.isTablet'))
          .value;
  Computed<bool>? _$isMobileComputed;

  @override
  bool get isMobile =>
      (_$isMobileComputed ??= Computed<bool>(() => super.isMobile,
              name: 'ScreenUtilStoreBase.isMobile'))
          .value;
  Computed<Size>? _$designCanvasComputed;

  @override
  Size get designCanvas =>
      (_$designCanvasComputed ??= Computed<Size>(() => super.designCanvas,
              name: 'ScreenUtilStoreBase.designCanvas'))
          .value;
  Computed<double>? _$scaleWidthComputed;

  @override
  double get scaleWidth =>
      (_$scaleWidthComputed ??= Computed<double>(() => super.scaleWidth,
              name: 'ScreenUtilStoreBase.scaleWidth'))
          .value;
  Computed<double>? _$scaleHeightComputed;

  @override
  double get scaleHeight =>
      (_$scaleHeightComputed ??= Computed<double>(() => super.scaleHeight,
              name: 'ScreenUtilStoreBase.scaleHeight'))
          .value;
  Computed<double>? _$scaleTextComputed;

  @override
  double get scaleText =>
      (_$scaleTextComputed ??= Computed<double>(() => super.scaleText,
              name: 'ScreenUtilStoreBase.scaleText'))
          .value;

  late final _$eventAtom =
      Atom(name: 'ScreenUtilStoreBase.event', context: context);

  @override
  BreakPoint? get event {
    _$eventAtom.reportRead();
    return super.event;
  }

  @override
  set event(BreakPoint? value) {
    _$eventAtom.reportWrite(value, super.event, () {
      super.event = value;
    });
  }

  late final _$keyboardHeightAtom =
      Atom(name: 'ScreenUtilStoreBase.keyboardHeight', context: context);

  @override
  double get keyboardHeight {
    _$keyboardHeightAtom.reportRead();
    return super.keyboardHeight;
  }

  @override
  set keyboardHeight(double value) {
    _$keyboardHeightAtom.reportWrite(value, super.keyboardHeight, () {
      super.keyboardHeight = value;
    });
  }

  late final _$swAtom = Atom(name: 'ScreenUtilStoreBase.sw', context: context);

  @override
  double get sw {
    _$swAtom.reportRead();
    return super.sw;
  }

  @override
  set sw(double value) {
    _$swAtom.reportWrite(value, super.sw, () {
      super.sw = value;
    });
  }

  late final _$shAtom = Atom(name: 'ScreenUtilStoreBase.sh', context: context);

  @override
  double get sh {
    _$shAtom.reportRead();
    return super.sh;
  }

  @override
  set sh(double value) {
    _$shAtom.reportWrite(value, super.sh, () {
      super.sh = value;
    });
  }

  late final _$deviceOrientationAtom =
      Atom(name: 'ScreenUtilStoreBase.deviceOrientation', context: context);

  @override
  Orientation get deviceOrientation {
    _$deviceOrientationAtom.reportRead();
    return super.deviceOrientation;
  }

  @override
  set deviceOrientation(Orientation value) {
    _$deviceOrientationAtom.reportWrite(value, super.deviceOrientation, () {
      super.deviceOrientation = value;
    });
  }

  late final _$ScreenUtilStoreBaseActionController =
      ActionController(name: 'ScreenUtilStoreBase', context: context);

  @override
  void onInitializeScreenUtil(BuildContext context) {
    final _$actionInfo = _$ScreenUtilStoreBaseActionController.startAction(
        name: 'ScreenUtilStoreBase.onInitializeScreenUtil');
    try {
      return super.onInitializeScreenUtil(context);
    } finally {
      _$ScreenUtilStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  double setWidth(num width) {
    final _$actionInfo = _$ScreenUtilStoreBaseActionController.startAction(
        name: 'ScreenUtilStoreBase.setWidth');
    try {
      return super.setWidth(width);
    } finally {
      _$ScreenUtilStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  double setHeight(num height) {
    final _$actionInfo = _$ScreenUtilStoreBaseActionController.startAction(
        name: 'ScreenUtilStoreBase.setHeight');
    try {
      return super.setHeight(height);
    } finally {
      _$ScreenUtilStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  double radius(num r) {
    final _$actionInfo = _$ScreenUtilStoreBaseActionController.startAction(
        name: 'ScreenUtilStoreBase.radius');
    try {
      return super.radius(r);
    } finally {
      _$ScreenUtilStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  double setSp(num fontSize) {
    final _$actionInfo = _$ScreenUtilStoreBaseActionController.startAction(
        name: 'ScreenUtilStoreBase.setSp');
    try {
      return super.setSp(fontSize);
    } finally {
      _$ScreenUtilStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
event: ${event},
keyboardHeight: ${keyboardHeight},
sw: ${sw},
sh: ${sh},
deviceOrientation: ${deviceOrientation},
isDesktop: ${isDesktop},
isTablet: ${isTablet},
isMobile: ${isMobile},
designCanvas: ${designCanvas},
scaleWidth: ${scaleWidth},
scaleHeight: ${scaleHeight},
scaleText: ${scaleText}
    ''';
  }
}
