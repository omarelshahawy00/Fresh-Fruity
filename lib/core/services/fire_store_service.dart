import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/core/services/data_base_service.dart';

class FireStoreService implements DataBaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<void> addData(
      {required String path,
      required Map<String, dynamic> data,
      String? docId}) async {
    if (docId != null) {
      await firestore.collection(path).doc(docId).set(data);
    } else {
      await firestore.collection(path).add(data);
    }
  }

  @override
  Future<dynamic> getData(
      {required String path, String? uId, Map<String, dynamic>? query}) async {
    if (uId != null) {
      var data = await firestore.collection(path).doc(uId).get();
      return data.data();
    } else {
      Query<Map<String, dynamic>> data = await firestore.collection(path);
      if (query != null) {
        if (query['orderBy'] != null) {
          var orderByField = query['orderBy'];
          var descending = query['descending'];
          data = data.orderBy(orderByField, descending: descending);
        }
        if (query['limit'] != null) {
          data = data.limit(query['limit']);
        }
      }

      var restult = await data.get();
      return restult.docs.map((e) => e.data()).toList();
    }
  }

  @override
  Future<bool> isDataExist({required String path, required String uId}) async {
    var data = await firestore.collection(path).doc(uId).get();

    return data.exists;
  }
}
