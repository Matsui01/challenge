import 'package:flutter/material.dart';
import 'package:matsui/widgets/dropdown/dropdown_controller.dart';

import '../../app_theme.dart';

enum DropState { CANCELED, SHOWING, CLEAN }

class DropdownWidget extends StatefulWidget {
  dropAction() => createState().dropAction();

  final DropdownController dropdownController;
  final String title;
  final BuildContext ancestorContext;
  final ButtonStyle buttonStyle;
  final bool? fillWidth;
  final TextStyle? textStyle;
  DropdownWidget({
    required this.dropdownController,
    required this.title,
    required this.ancestorContext,
    required this.buttonStyle,
    this.fillWidth,
    this.textStyle,
  });

  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  late OverlayEntry _overlayEntry;
  final LayerLink _layerLink = LayerLink();
  late var _size;
  DropState _dropState = DropState.CLEAN;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((Duration duration) {
      final RenderBox renderBox = context.findRenderObject() as RenderBox;
      _size = renderBox.size;
    });
  }

  void _createOverlay() {
    _overlayEntry = this._createOverlayEntry();
    Overlay.of(widget.ancestorContext)?.insert(_overlayEntry);
    _dropState = DropState.SHOWING;
  }

  void _removeOverlay() {
    this._overlayEntry.remove();
    _dropState = DropState.CLEAN;
  }

  void dropAction([DropState? _dropState]) {
    if (widget.dropdownController.itens.length == 0) return;
    if (_dropState == null) _dropState = this._dropState;
    switch (_dropState) {
      case DropState.SHOWING:
        print("Dropdown Removido");
        _removeOverlay();
        break;
      case DropState.CLEAN:
        _createOverlay();
        print("Dropdown Adicionado");
        break;
      case DropState.CANCELED:
        print("Ação Cancelada!");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: this._layerLink,
      child: Container(
        // width: widget.fillWidth ?? widget.fillWidth,
        margin: EdgeInsets.only(right: spacingSize, left: spacingSize),
        child: TextButton(
          style: widget.buttonStyle,
          onPressed: () => dropAction(),
          child: Container(
            padding: EdgeInsets.only(top: spacingSize, bottom: spacingSize, left: spacingSize, right: spacingSize),
            // width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.title, softWrap: true, style: widget.textStyle ?? Theme.of(context).textTheme.button),
                Icon(Icons.expand_more, size: smallIconSize, color: Theme.of(context).iconTheme.color),
              ],
            ),
          ),
        ),
      ),
    );
  }

  OverlayEntry _createOverlayEntry() {
    return OverlayEntry(builder: (context) {
      return Stack(
        children: <Widget>[
          Positioned.fill(
            child: Listener(
              behavior: HitTestBehavior.translucent,
              onPointerUp: (PointerUpEvent pointerUpEvent) {
                dropAction();
                // _dropState = DropState.CANCELED;
              },
            ),
          ),
          Positioned(
            width: _size.width,
            child: CompositedTransformFollower(
                link: this._layerLink,
                offset: Offset(0.0, _size.height + 5.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  margin: EdgeInsets.only(left: spacingSize, right: spacingSize),
                  child: Column(
                    children: List.generate(widget.dropdownController.itens.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          dropAction();
                          widget.dropdownController.clickItem(index);
                        },
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(top: spacingSize, bottom: spacingSize, left: spacingSize, right: spacingSize),
                          child: Text(widget.dropdownController.itens[index].value, style: widget.textStyle ?? Theme.of(context).textTheme.button),
                        ),
                      );
                    }),
                  ),
                )),
          ),
        ],
      );
    });
  }
}
