// To parse this JSON data, do
//
//     final asiriConfigs = asiriConfigsFromJson(jsonString);

import 'dart:convert';

AsiriConfigs asiriConfigsFromJson(String str) => AsiriConfigs.fromJson(json.decode(str));

String asiriConfigsToJson(AsiriConfigs data) => json.encode(data.toJson());

class AsiriConfigs {
    String? title;
    String? logoUrl;
    String? labelText1;
    String? labelText2;
    String? buttonText;
    String? bottomText;
    double? titleFontSize;
    double? lableTextFontSize;
    double? buttonTextFontSize;
    double? bottomTextFontSize;
    double? logoHeight;
    double? logoWidth;
    double? titleContainerHeight;
    double? titleContainerWidth0;
    double? lableContainerHeight;
    double? buttonContainerHeight;
    double? bottomTextContainerHeight;
    double? pagePaddingLeft;
    double? pagePaddingRight;
    double? pagePaddingTop;
    double? pagePaddingBottom;
    double? logoMarginRight;
    double? lableContainerMarginTop;
    double? buttonMarginBottom;
    double? bottomTextContainerMarginBottom;
    String? titleTextColor;
    String? lableTextColor;
    String? buttonTextColor;
    String? buttonBackroundColor;
    String? bottomTextFontColor;
    String? pageBackroundColor;

    AsiriConfigs({
        required this.title,
        required this.logoUrl,
        required this.labelText1,
        required this.labelText2,
        required this.buttonText,
        required this.bottomText,
        required this.titleFontSize,
        required this.lableTextFontSize,
        required this.buttonTextFontSize,
        required this.bottomTextFontSize,
        required this.logoHeight,
        required this.logoWidth,
        required this.titleContainerHeight,
        required this.titleContainerWidth0,
        required this.lableContainerHeight,
        required this.buttonContainerHeight,
        required this.bottomTextContainerHeight,
        required this.pagePaddingLeft,
        required this.pagePaddingRight,
        required this.pagePaddingTop,
        required this.pagePaddingBottom,
        required this.logoMarginRight,
        required this.lableContainerMarginTop,
        required this.buttonMarginBottom,
        required this.bottomTextContainerMarginBottom,
        required this.titleTextColor,
        required this.lableTextColor,
        required this.buttonTextColor,
        required this.buttonBackroundColor,
        required this.bottomTextFontColor,
        required this.pageBackroundColor,
    });

    factory AsiriConfigs.fromJson(Map<String?, dynamic> json) => AsiriConfigs(
        title: json["title"],
        logoUrl: json["logoUrl"],
        labelText1: json["labelText1"],
        labelText2: json["labelText2"],
        buttonText: json["buttonText"],
        bottomText: json["bottomText"],
        titleFontSize: json["titleFontSize"],
        lableTextFontSize: json["lableTextFontSize"],
        buttonTextFontSize: json["buttonTextFontSize"],
        bottomTextFontSize: json["bottomTextFontSize"],
        logoHeight: json["logoHeight"],
        logoWidth: json["logoWidth"],
        titleContainerHeight: json["titleContainerHeight"],
        titleContainerWidth0: json["titleContainerWidth0"],
        lableContainerHeight: json["lableContainerHeight"],
        buttonContainerHeight: json["buttonContainerHeight"],
        bottomTextContainerHeight: json["bottomTextContainerHeight"],
        pagePaddingLeft: json["pagePaddingLeft"],
        pagePaddingRight: json["pagePaddingRight"],
        pagePaddingTop: json["pagePaddingTop"],
        pagePaddingBottom: json["pagePaddingBottom"],
        logoMarginRight: json["logoMarginRight"],
        lableContainerMarginTop: json["lableContainerMarginTop"],
        buttonMarginBottom: json["buttonMarginBottom"],
        bottomTextContainerMarginBottom: json["bottomTextContainerMarginBottom"],
        titleTextColor: json["titleTextColor"],
        lableTextColor: json["lableTextColor"],
        buttonTextColor: json["buttonTextColor"],
        buttonBackroundColor: json["buttonBackroundColor"],
        bottomTextFontColor: json["bottomTextFontColor"],
        pageBackroundColor: json["pageBackroundColor"],
    );

    Map<String?, dynamic> toJson() => {
        "title": title,
        "logoUrl": logoUrl,
        "labelText1": labelText1,
        "labelText2": labelText2,
        "buttonText": buttonText,
        "bottomText": bottomText,
        "titleFontSize": titleFontSize,
        "lableTextFontSize": lableTextFontSize,
        "buttonTextFontSize": buttonTextFontSize,
        "bottomTextFontSize": bottomTextFontSize,
        "logoHeight": logoHeight,
        "logoWidth": logoWidth,
        "titleContainerHeight": titleContainerHeight,
        "titleContainerWidth0": titleContainerWidth0,
        "lableContainerHeight": lableContainerHeight,
        "buttonContainerHeight": buttonContainerHeight,
        "bottomTextContainerHeight": bottomTextContainerHeight,
        "pagePaddingLeft": pagePaddingLeft,
        "pagePaddingRight": pagePaddingRight,
        "pagePaddingTop": pagePaddingTop,
        "pagePaddingBottom": pagePaddingBottom,
        "logoMarginRight": logoMarginRight,
        "lableContainerMarginTop": lableContainerMarginTop,
        "buttonMarginBottom": buttonMarginBottom,
        "bottomTextContainerMarginBottom": bottomTextContainerMarginBottom,
        "titleTextColor": titleTextColor,
        "lableTextColor": lableTextColor,
        "buttonTextColor": buttonTextColor,
        "buttonBackroundColor": buttonBackroundColor,
        "bottomTextFontColor": bottomTextFontColor,
        "pageBackroundColor": pageBackroundColor,
    };
}
