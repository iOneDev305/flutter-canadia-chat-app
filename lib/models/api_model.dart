class ApiModel {
  final int code;
  final String? msg;
  final String? time;
  final dynamic data;

  ApiModel({
    required this.code,
    this.msg,
    this.time,
    this.data,
  });

  factory ApiModel.fromJson(Map<String, dynamic> json) {
    return ApiModel(
      code: json['code'],
      msg: json['msg'],
      time: json['time'],
      data: json['data'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'msg': msg,
      'time': time,
      'data': data,
    };
  }
}