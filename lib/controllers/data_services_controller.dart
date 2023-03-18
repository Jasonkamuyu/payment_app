import 'package:flutter_payment_app/services/data_services.dart';
import 'package:get/get.dart';

class DataServicesController extends GetxController {
  var list = [].obs;
  final _service = DataServices();
  var _loading = false.obs;

  get loading {
    return _loading.value;
  }

  @override
  void onInit() {
    _loading.value = false;
    _loadData();
    super.onInit();
  }

  get newList {
    return list.where((e) => e["status"]).map((e) => e).toList();
  }

  _loadData() async {
    try {
      var info = _service.getusers();
      list.addAll(await info);
    } catch (e) {
      print("App Encountered an Error");
      print(e);
    } finally {
      _loading.value = true;
    }
  }
}
