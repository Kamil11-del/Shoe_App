import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/core/models/response.dart';

final FirebaseFirestore firestore = FirebaseFirestore.instance;
final CollectionReference reference = firestore.collection('profileData');
class FirebaseCrud{
  static Future<Response> updateEmployee({
    required String name,
    required String position,
    required String contactno,
    required String docId,
  }) async {
    Response response = Response();
    DocumentReference documentReference = reference.doc(docId);
    Map<String, dynamic> data = <String, dynamic>{
      "employee_name": name,
      "position": position,
      "contactno": contactno,
    };
    await documentReference.update(data).whenComplete(() {
      response.code == 200;
      response.message == "updated Successfully";
    }).catchError((e) {
      response.code == 500;
      response.message = e;
    });

    return response;
  }

}
