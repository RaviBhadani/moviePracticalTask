import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';
import '../utils/HelperFiles/ui_utils.dart';
import 'network_info.dart';

class ApiService extends GetConnect {
  var headers;
  var headersWithToken;
  var contentType;
  String authToken = '';

  Future<void> getToken() async {}

  Future<void> initApiService() async {
    await NetworkInfo.checkNetwork().whenComplete(() async {

      headers = {"Accept": "application/json"};
      headersWithToken = {
        "Accept": "application/json",
      };
      contentType = "multipart/form-data";
    });
  }

  Future<dynamic> callGetApi(
      {required FormData body,
        required url,
        bool showLoader = true,
        bool headerWithToken = true}) async {
    if (showLoader) {
      UIUtils.showProgressDialog(isCancellable: false);
    }
    await initApiService();
    final response = await get(
      url,
      headers: headerWithToken ? headersWithToken : headers,
      contentType: contentType,
    );
    if (response.status.hasError) {
      if (showLoader) {
        UIUtils.hideProgressDialog();
      }
      return response.body;
    } else {
      if (showLoader) {
        UIUtils.hideProgressDialog();
      }
      return response.body;
    }
  }
}
