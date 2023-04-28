class ForceUpdateApiResponseModel {
  Data? data;
  Result? result;

  ForceUpdateApiResponseModel({this.data, this.result});

  ForceUpdateApiResponseModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    result =
        json['result'] != null ? new Result.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    return data;
  }
}

class Data {
  String? isUpdate;
  String? isForcefullyUpdate;
  int? userId;
  String? accessToken;
  String? pkAstroProfileIdInt;
  String? updateMsg;

  Data(
      {this.isUpdate,
      this.isForcefullyUpdate,
      this.userId,
      this.accessToken,
      this.pkAstroProfileIdInt,
      this.updateMsg});

  Data.fromJson(Map<String, dynamic> json) {
    isUpdate = json['is_update'];
    isForcefullyUpdate = json['is_forcefully_update'];
    userId = json['user_id'];
    accessToken = json['access_token'];
    pkAstroProfileIdInt = json['pk_astro_profile_id_int'];
    updateMsg = json['update_msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['is_update'] = this.isUpdate;
    data['is_forcefully_update'] = this.isForcefullyUpdate;
    data['user_id'] = this.userId;
    data['access_token'] = this.accessToken;
    data['pk_astro_profile_id_int'] = this.pkAstroProfileIdInt;
    data['update_msg'] = this.updateMsg;
    return data;
  }
}

class Result {
  String? statusCode;
  String? status;
  String? message;

  Result({this.statusCode, this.status, this.message});

  Result.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'];
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status_code'] = this.statusCode;
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}
