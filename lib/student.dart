class student {
  String? id;
  String? name;
  String? type;
  String? description;
  String? qty;

  student({this.id, this.name, this.type, this.description, this.qty});

  student.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    description = json['description'];
    qty = json['qty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['type'] = this.type;
    data['description'] = this.description;
    data['qty'] = this.qty;
    return data;
  }
}