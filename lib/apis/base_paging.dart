class BaseBaging {
  final int totalData;
  final int page;
  final int total;
  final int totalPages;
  final int pagingCounter;

  BaseBaging(
      this.totalData,
      this.total,
      this.totalPages,
      this.page,
      this.pagingCounter,
     );

  BaseBaging.fromJson(Map<String, dynamic> json)
      : totalData = json['totalData'],
        total = json['total'],
        totalPages = json['totalPages'],
        page = json['page'],
        pagingCounter = json['pagingCounter'];

  Map<String, dynamic> toJson() => {
        'totalData': totalData,
        'page': page,
        'total': total,
        'totalPages': totalPages,
        'pagingCounter': pagingCounter,
      };

  static BaseBaging clearPagin() {
    return BaseBaging(0, 0, 0, 0, 0,);
  }
}
