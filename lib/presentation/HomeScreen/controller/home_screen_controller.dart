import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ravitaskk/presentation/HomeScreen/models/TrendingMovieDataModel.dart';

import '../../../../utils/HelperFiles/ui_utils.dart';
import '../../../../utils/HelperFiles/regex_utils.dart';
import '../../../ApiServices/api_service.dart';
import '../../../App Configurations/api_endpoints.dart';
import '../../../utils/ConstantsFiles/string_constants.dart';

class HomeScreenController extends GetxController {
  TextEditingController searchController = TextEditingController();
  var movieListModel = TrendingListData().obs;
  var movieList = <Results>[].obs;
  var duplicateMovieList = <Results>[].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onInit() {
    callGetCardListApi();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void filterSearchResults(String query) {
    if(query.isNotEmpty){
      movieList.value=  duplicateMovieList.value.where((val) => val.title!.toLowerCase().contains(query.toLowerCase())).toList();
    }else{
      movieList.value=duplicateMovieList.value;
    }
  }

  Future<void> callGetCardListApi() async {
    ApiService()
        .callGetApi(
            body: await getMovieApiBody(),
            headerWithToken: true,
            showLoader: true,
            url: ApiEndPoints.GET_TRENDING_MOVIE)
        .then((value) {
      print(value);
      if (value != null) {
        movieListModel.value = TrendingListData.fromJson(value);
        movieList.value = movieListModel.value.results!;
        duplicateMovieList.value = movieList.value;
      } else {
        UIUtils.showSnakBar(
            bodyText: StringConstants.NO_DATA,
            headerText: StringConstants.ERROR);
      }
    });
  }

  Future<FormData> getMovieApiBody() async {
    final form = FormData({});
    return form;
  }
}
