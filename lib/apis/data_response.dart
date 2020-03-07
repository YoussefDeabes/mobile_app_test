import 'test_data_model.dart';

class DataResponse {
  List<dynamic> data;
  final int page;
  final int perPage;
  final int total;
  final int totalPages;

  DataResponse({
    this.data,
    this.perPage,
    this.total,
    this.totalPages,
    this.page,
  });

  DataResponse.fromJson(Map<String, dynamic> json)
      : data = (json['data'] as List<TestDataModel>).map((item) {
          return item as dynamic;
        }),
        page = json['page'],
        perPage = json['per_page'],
        total = json['total'],
        totalPages = json['total_pages'];

  Map<String, dynamic> toJson() => {
        'data': data.map((item) {
          return item;
        }),
        'page': page,
        'per_page': perPage,
        'total': total,
        'total_pages': totalPages,
      };

}
