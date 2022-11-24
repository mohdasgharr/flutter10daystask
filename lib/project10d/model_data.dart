class ModelData {
  String? img;
  String? price;
  String? title;
  String? subTitle;
  String? authorName;
  double? rate;
  String? page;
  int? id;

  ModelData(
      {this.img,
        this.price,
        this.title,
        this.subTitle,
        this.authorName,
        this.rate,
        this.page,
        this.id,
});

  ModelData.fromJson(Map<String, dynamic> json) {
    img = json['img'];
    price = json['price'];
    title = json['title'];
    subTitle = json['sub_title'];
    authorName = json['author_name'];
    rate = json['rate'];
    page = json['page'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['img'] = img;
    data['price'] = price;
    data['title'] = title;
    data['sub_title'] = subTitle;
    data['author_name'] = authorName;
    data['rate'] = rate;
    data['page'] = page;
    data['id'] = id;
    return data;
  }
}
