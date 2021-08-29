import 'package:flutter/material.dart';
import 'package:matsui/widgets/dropdown/dropdown_controller.dart';

enum DropState { CANCELED, SHOWING, CLEAN }

class DropdownWidget extends StatefulWidget {
  final DropdownController dropdownController;
  final Widget renderBox;
  final Widget mainWidget;
  DropdownWidget({
    required this.dropdownController,
    required this.renderBox,
    required this.mainWidget,
  });

  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  late OverlayEntry _overlayEntry;
  final LayerLink _layerLink = LayerLink();
  DropState _dropState = DropState.CLEAN;

  void _createOverlay() {
    _overlayEntry = this._createOverlayEntry();
    Overlay.of(context)?.insert(_overlayEntry);
    _dropState = DropState.SHOWING;
  }

  void _removeOverlay() {
    this._overlayEntry.remove();
    _dropState = DropState.CLEAN;
  }

  void dropAction([DropState? _dropState]) {
    print("dropaction1");
    if (_dropState == null) _dropState = this._dropState;
    switch (_dropState) {
      case DropState.SHOWING:
        _removeOverlay();
        break;
      case DropState.CLEAN:
        _createOverlay();
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
      child: GestureDetector(
        onTap: () => dropAction(),
        child: widget.mainWidget,
      ),
    );
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox _renderBox = context.findRenderObject() as RenderBox;
    var _size = _renderBox.size;

    return OverlayEntry(
      builder: (context) => Stack(
        children: <Widget>[
          Positioned.fill(
            child: Listener(
              behavior: HitTestBehavior.translucent,
              onPointerUp: (PointerUpEvent pointerUpEvent) => dropAction(),
              onPointerMove: (PointerMoveEvent pointerMoveEvent) => _dropState = DropState.CANCELED,
            ),
          ),
          Positioned(
            height: _size.height,
            width: _size.width,
            child: CompositedTransformFollower(
              link: this._layerLink,
              offset: Offset(0.0, _size.height + 5.0),
              child: widget.renderBox,
            ),
          ),
        ],
      ),
    );
  }
  // final FocusNode _focusNode = FocusNode();

  // late OverlayEntry _overlayEntry;

  // final LayerLink _layerLink = LayerLink();

  // @override
  // void initState() {
  //   super.initState();
  //   @override
  //   void initState() {
  //     _focusNode.addListener(() {
  //       if (_focusNode.hasFocus) {
  //         this._overlayEntry = this._createOverlayEntry();
  //         Overlay.of(context)?.insert(this._overlayEntry);
  //       } else {
  //         this._overlayEntry.remove();
  //       }
  //     });
  //   }
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return CompositedTransformTarget(
  //     link: this._layerLink,
  //     child: TextFormField(
  //       focusNode: this._focusNode,
  //       decoration: InputDecoration(
  //         labelText: 'Country',
  //       ),
  //     ),
  //   );
  // }

  // OverlayEntry _createOverlayEntry() {
  //   RenderBox renderBox = context.findRenderObject() as RenderBox;
  //   var size = renderBox.size;

  //   return OverlayEntry(
  //     builder: (context) => Positioned(
  //       width: size.width,
  //       child: CompositedTransformFollower(
  //         link: this._layerLink,
  //         showWhenUnlinked: false,
  //         offset: Offset(0.0, size.height + 5.0),
  //         child: Material(
  //           elevation: 4.0,
  //           child: ListView(
  //             padding: EdgeInsets.zero,
  //             shrinkWrap: true,
  //             children: <Widget>[
  //               ListTile(
  //                 title: Text('Syria'),
  //                 onTap: () {
  //                   print('Syria Tapped');
  //                 },
  //               ),
  //               ListTile(
  //                 title: Text('Lebanon'),
  //                 onTap: () {
  //                   print('Lebanon Tapped');
  //                 },
  //               )
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
