import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/core/services/data_base_service.dart';
import 'package:ecommerce_app/features/auth/data/models/user_model.dart';

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
  Future<Map<String, dynamic>> getData(
      {required String path, required String uId}) async {
    var data = await firestore.collection(path).doc(uId).get();
    return data.data() as Map<String, dynamic>;
  }

  @override
  Future<bool> isDataExist({required String path, required String uId}) async {
    var data = await firestore.collection(path).doc(uId).get();

    return data.exists;
  }
}
