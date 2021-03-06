import 'package:matsui/widgets/dropdown/dropdown_model.dart';
import 'package:mobx/mobx.dart';

part 'dropdown_controller.g.dart';

class DropdownController = _DropdownController with _$DropdownController;

abstract class _DropdownController with Store {
  List<DropdownModel> itens = [];

  _DropdownController({required this.itens});

  @observable
  DropdownModel value = DropdownModel(id: -1, value: "", model: 0);

  @action
  void setValue(DropdownModel newValue) => value = newValue;

  void initDropDown(List<DropdownModel> newItens) {
    itens = [];
    itens.addAll(newItens);
    if (itens.length > 0) setValue(itens[0]);
  }

  void clickItem(int index) => setValue(itens[index]);
}
