import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final VoidCallback? onTap;

  const CustomText(
    this.text, {
    super.key,
    this.style,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Widget textWidget = Text(
      text,
      style: style,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );

    if (onTap != null) {
      textWidget = GestureDetector(
        onTap: onTap,
        child: textWidget,
      );
    }

    return textWidget;
  }
}

// Predefined text styles for common use cases
class AppTextStyles {
  static const TextStyle heading1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle heading2 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle heading3 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle body = TextStyle(
    fontSize: 16,
    color: Colors.black87,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 14,
    color: Colors.black87,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 13,
    color: Colors.black54,
  );

  static const TextStyle link = TextStyle(
    fontSize: 16,
    color: Colors.blue,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
  );

  static const TextStyle amount = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle status = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}

// Convenience text widgets
class HeadingText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;

  const HeadingText(this.text, {super.key, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text,
      style: AppTextStyles.heading1,
      textAlign: textAlign,
    );
  }
}

class BodyText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;

  const BodyText(this.text, {super.key, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text,
      style: AppTextStyles.body,
      textAlign: textAlign,
    );
  }
}

class LinkText extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final TextAlign? textAlign;

  const LinkText(this.text, {super.key, this.onTap, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text,
      style: AppTextStyles.link,
      textAlign: textAlign,
      onTap: onTap,
    );
  }
}

class AmountText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;

  const AmountText(this.text, {super.key, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text,
      style: AppTextStyles.amount,
      textAlign: textAlign,
    );
  }
}
