/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/NunitoBold.ttf
  String get nunitoBold => 'assets/fonts/NunitoBold.ttf';

  /// File path: assets/fonts/NunitoExtraBold.ttf
  String get nunitoExtraBold => 'assets/fonts/NunitoExtraBold.ttf';

  /// File path: assets/fonts/NunitoMedium.ttf
  String get nunitoMedium => 'assets/fonts/NunitoMedium.ttf';

  /// File path: assets/fonts/NunitoRegular.ttf
  String get nunitoRegular => 'assets/fonts/NunitoRegular.ttf';

  /// File path: assets/fonts/NunitoSemiBold.ttf
  String get nunitoSemiBold => 'assets/fonts/NunitoSemiBold.ttf';

  /// List of all assets
  List<String> get values => [
        nunitoBold,
        nunitoExtraBold,
        nunitoMedium,
        nunitoRegular,
        nunitoSemiBold
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/add-comment.svg
  String get addComment => 'assets/images/add-comment.svg';

  /// File path: assets/images/general-insurance.svg
  String get generalInsurance => 'assets/images/general-insurance.svg';

  /// File path: assets/images/health-insurance.svg
  String get healthInsurance => 'assets/images/health-insurance.svg';

  /// File path: assets/images/life-insurance.svg
  String get lifeInsurance => 'assets/images/life-insurance.svg';

  /// File path: assets/images/status-history.svg
  String get statusHistory => 'assets/images/status-history.svg';

  /// List of all assets
  List<String> get values => [
        addComment,
        generalInsurance,
        healthInsurance,
        lifeInsurance,
        statusHistory
      ];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
