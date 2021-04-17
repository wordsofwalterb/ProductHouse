abstract class Model {
  const Model(this.id);
  final String id;
  Map<String, dynamic> toJson();
}
