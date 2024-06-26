import 'package:flutter/material.dart';

class ImageLoaderWidget extends StatefulWidget {
  final String url;
  final bool useLoading;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Color? color;

  const ImageLoaderWidget(
    this.url, {
    super.key,
    this.useLoading = true,
    this.width,
    this.height,
    this.fit,
    this.color,
  });

  @override
  State<ImageLoaderWidget> createState() => _ImageLoaderWidgetState();
}

class _ImageLoaderWidgetState extends State<ImageLoaderWidget> {
  late var image = Image.network(
    widget.url,
    width: widget.width,
    height: widget.height,
    fit: widget.fit,
    color: widget.color,
    colorBlendMode: widget.color == null ? null : BlendMode.srcATop,
    loadingBuilder: !widget.useLoading
        ? null
        : (context, child, loadingProgress) {
            if (loadingProgress == null) return child;

            return Center(
              child: CircularProgressIndicator.adaptive(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                    : null,
              ),
            );
          },
  );

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(image.image, context);
  }

  @override
  Widget build(BuildContext context) {
    return image;
  }
}
