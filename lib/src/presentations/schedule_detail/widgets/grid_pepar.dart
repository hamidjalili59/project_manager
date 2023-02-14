import 'package:base_project/src/config/constants/general_constants.dart';
import 'package:flutter/material.dart';

class DotMatrixPainter extends CustomPainter {
  DotMatrixPainter({
    this.panOffset = Offset.zero,
    required this.gridUnitSize,
    this.originAlignment = Alignment.topLeft,
    this.zoomAlignment = Alignment.center,
    this.zoomPercent = 1.0,
    this.dividerColor = Colors.white,
    this.dotColor = Colors.white,
    required this.background,
  }) {
    _crossPaint = Paint()
      ..color = dividerColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
  }

  /// The distance between consecutive dots.
  final double gridUnitSize;

  final Color dividerColor;
  final Color dotColor;

  /// The location of the origin of the grid lines.
  ///
  /// This location effects where the thicker grid rules
  /// are painted.
  final Alignment originAlignment;

  /// The location of the focal point for zooming.
  ///
  /// When zooming, this location remains un-affected, while
  /// all lines around this point are pushed outward by the
  /// [zoomPercent].
  final Alignment zoomAlignment;

  /// Zoom factor, as a percent, e.g., 2.0 expands content by
  /// 2X, and 0.5 contracts content by 2.0.
  final double zoomPercent;

  /// The color of the background of the dot matrix.
  final Color background;

  /// Horizontal and vertical displacement from the natural position of the matrix, such as
  /// when a user drags to move the grid.
  final Offset panOffset;

  late final Paint _crossPaint;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.clipRect(Offset.zero & size);

    // Paint background
    canvas.drawRect(Offset.zero & size, Paint()..color = background);

    // Paint the dots
    final origin = originAlignment.withinRect(GeneralConstants.offset & size);
    final scaledGridUnitSize = gridUnitSize * zoomPercent;
    double screenX = (panOffset.dx % scaledGridUnitSize);
    while (screenX <= size.width) {
      double screenY = (panOffset.dy % scaledGridUnitSize);

      final gridXIndex = ((screenX - origin.dx) / scaledGridUnitSize).round();
      final gridX =
          (origin.dx + (gridXIndex * scaledGridUnitSize)).round().toDouble();
      final isSectionXDivider = gridXIndex % 5 == 0;

      while (screenY <= size.height) {
        final gridYIndex = ((screenY - origin.dy) / scaledGridUnitSize).round();
        final gridY =
            (origin.dy + (gridYIndex * scaledGridUnitSize)).round().toDouble();
        final isSectionYDivider = gridYIndex % 5 == 0;

        if (isSectionXDivider && isSectionYDivider) {
          canvas.drawCircle(
              Offset(gridX, gridY), 1.4, Paint()..color = dividerColor);
        } else {
          canvas.drawCircle(
              Offset(gridX, gridY), 1.4, Paint()..color = dotColor);
        }

        screenY += scaledGridUnitSize;
      }

      screenX += scaledGridUnitSize;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
