import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ravitaskk/App%20Configurations/api_endpoints.dart';
import 'package:ravitaskk/utils/ConstantsFiles/string_constants.dart';
import '../../../App Configurations/color_constants.dart';
import '../../../utils/HelperFiles/math_utils.dart';
import '../../routes/app_routes.dart';
import 'controller/home_screen_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  var homeController = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.bgPrimary,
      appBar: AppBar(
        title: const Text('Trending Movies'),
        backgroundColor: ColorConstant.primaryBlue,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          height: size.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (value) {
                    homeController.filterSearchResults(value);
                  },
                  controller: homeController.searchController,
                  decoration: InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: ColorConstant.primaryBlue, width: 1.0),
                        borderRadius: BorderRadius.all(
                            Radius.circular(getHorizontalSize(24)))),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(getHorizontalSize(24))),
                      borderSide: BorderSide(
                          color: ColorConstant.primaryBlue, width: 1.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: getVerticalSize(24)),
              Expanded(
                child: Obx(
                  ()=> ListView.builder(
                    shrinkWrap: true,
                    itemCount: homeController.movieList.value.length,
                    itemBuilder: (context, index) {
                      return
                        Padding(
                          padding:  EdgeInsets.only(left: getHorizontalSize(16),right: getVerticalSize(16)),
                          child: InkWell(
                            onTap: () async {
                              var url = ApiEndPoints.BASE_URL_IMAGE+homeController.movieList.value[index].posterPath.toString();
                              if(await canLaunch(url)){
                              await launch(url);
                              }else {
                              throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.all(getVerticalSize(4)),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                                  color: ColorConstant.primaryWhite,
                              ),
                              padding:  EdgeInsets.all(getVerticalSize(12)),
                              child: Text(homeController.movieList.value[index].title.toString())),
                          ),
                        );
                    },
                  ),
                ),
              ),
              SizedBox(height: getVerticalSize(6)),
            ],
          ),
        ),
      ),
    );
  }
}


