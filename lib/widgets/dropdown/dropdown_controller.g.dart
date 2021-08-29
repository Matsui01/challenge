// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dropdown_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DropdownController on _DropdownController, Store {
  final _$valueAtom = Atom(name: '_DropdownController.value');

  @override
  DropdownModel get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(DropdownModel value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_DropdownControllerActionController =
      ActionController(name: '_DropdownController');

  @override
  void setValue(DropdownModel newValue) {
    final _$actionInfo = _$_DropdownControllerActionController.startAction(
        name: '_DropdownController.setValue');
    try {
      return super.setValue(newValue);
    } finally {
      _$_DropdownControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
