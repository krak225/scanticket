import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:job_boarder/app/data/provider/responses/register_response.dart';

import '../../../config/app_constants.dart';
import '../../services/dio_service.dart';

class RegisterRepo {

  final DioService dioService;
  final GetStorage _storage = GetStorage();

  RegisterRepo({required this.dioService});

  Future<Response> register({required dynamic data}) async {

    return await dioService.postData('/register', data: data);

  }

  Future<Response> update_profile({required dynamic data}) async {
    return await dioService.postData('/update_profile', data: data);
  }

  Future sessionDataSave(RegisterResponse registerResponse) async {
    _storage.write(AppConstants.USER_ID, registerResponse.data?.id);
    _storage.write(AppConstants.USER_FIRSTNAME, registerResponse.data?.firstname);
    _storage.write(AppConstants.USER_LASTNAME, registerResponse.data?.lastname);
    _storage.write(AppConstants.USER_EMAIL, registerResponse.data?.email);
    print('@@@@@@@@@@@@@@@@@@RegisterResponse@@@@@@@@@@@');
    print(registerResponse.data?.firstname);
    print(registerResponse.data?.email);
  }


}
