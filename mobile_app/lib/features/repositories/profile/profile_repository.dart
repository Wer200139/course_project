import 'dart:async';

import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/features/repositories/profile/models/avatar_model.dart';
import 'package:clokwise/features/repositories/profile/models/comment_result_model.dart';
import 'package:clokwise/features/repositories/profile/models/education_degree_model.dart';
import 'package:clokwise/features/repositories/profile/models/education_level_model.dart';
import 'package:clokwise/features/repositories/profile/models/education_model.dart';
import 'package:clokwise/features/repositories/profile/models/industry_model.dart';
import 'package:clokwise/features/repositories/profile/models/profile_company_model.dart';
import 'package:clokwise/features/repositories/profile/models/profile_customer_model.dart';
import 'package:clokwise/features/repositories/profile/models/profile_expert_model.dart';
import 'package:clokwise/features/repositories/profile/requests/experience_request.dart';
import 'package:clokwise/features/repositories/profile/requests/update_profile_request.dart';
import 'package:clokwise/packages/core/cw_disposable.dart';

class ProfileRepository implements CwDisposable {
  final _path = 'profile';

  final MainNetworkClient _mainNetworkClient;

  const ProfileRepository({
    required MainNetworkClient mainNetworkClient,
  }) : _mainNetworkClient = mainNetworkClient;

  @override
  FutureOr<void> dispose() {}

  Future<ReviewResultModel> getReviews({required int id, required bool isExpert}) async {
    final type = isExpert ? 'expert' : 'client';

    final response = await _mainNetworkClient.client.get(
      '$_path/get-reviews/$id/$type/',
    );

    if (response.statusCode != 200) {
      throw Exception();
    }

    final reviewResult = ReviewResultModel.fromJson(response.data);

    return reviewResult;
  }

  Future<ReviewResultModel> getReviewsNextPage({required int id, required int page, required bool isExpert}) async {
    final type = isExpert ? 'expert' : 'client';

    final response = await _mainNetworkClient.client.get(
      '$_path/get-reviews/$id/$type/?page=$page/',
    );

    if (response.statusCode != 200) {
      throw Exception();
    }

    final reviewResult = ReviewResultModel.fromJson(response.data);

    return reviewResult;
  }

  Future<ProfileCompanyModel> getCompanyProfile() async {
    final response = await _mainNetworkClient.client.get(
      '$_path/company/get/',
    );

    if (response.statusCode != 200) {
      throw Exception();
    }

    final company = ProfileCompanyModel.fromJson(response.data);

    return company;
  }

  Future<ProfileCustomerModel> getCustomerProfile() async {
    final response = await _mainNetworkClient.client.get(
      '$_path/person/get/',
    );

    if (response.statusCode != 200) {
      throw Exception();
    }

    final person = ProfileCustomerModel.fromJson(response.data);

    return person;
  }

  Future<ProfileExpertModel> getProfileExpert() async {
    final response = await _mainNetworkClient.client.get(
      '$_path/expert/get/',
    );

    if (response.statusCode != 200) {
      throw Exception();
    }

    final expert = ProfileExpertModel.fromJson(response.data);

    return expert;
  }

  Future<ProfileExpertModel> getUserExpert(int id) async {
    final response = await _mainNetworkClient.client.get(
      '$_path/expert/get/$id/',
    );

    if (response.statusCode != 200) {
      throw Exception();
    }

    final expert = ProfileExpertModel.fromJson(response.data);

    return expert;
  }

  Future<ProfileCustomerModel> getUserCustomer(int id) async {
    final response = await _mainNetworkClient.client.get(
      '$_path/client/get-main-profile/$id/',
    );

    if (response.statusCode != 200) {
      throw Exception();
    }

    final customer = ProfileCustomerModel.fromJson(response.data);

    return customer;
  }

  Future<ProfileCompanyModel> getUserCompany(int id) async {
    final response = await _mainNetworkClient.client.get(
      '$_path/client/get-main-profile/$id/',
    );

    if (response.statusCode != 200) {
      throw Exception();
    }

    final company = ProfileCompanyModel.fromJson(response.data);

    return company;
  }

  Future<List<IndustryModel>> getAvailableIndustries() async {
    final response = await _mainNetworkClient.client.get(
      '$_path/experience/get-available-industries/',
    );

    if (response.statusCode != 200) {
      throw Exception();
    }

    return response.data
        .map<IndustryModel>((message) => IndustryModel.fromJson(message))
        .toList();
  }

  Future<void> updateEducation(
      {required List<EducationModel> educations}) async {
    final response = await _mainNetworkClient.client.post(
        '$_path/education/update/',
        data: educations.map((education) => education.toJson()).toList());

    if (response.statusCode != 200) {
      throw Exception();
    }
  }

  Future<List<EducationLevelModel>> getEducationLevels() async {
    final response = await _mainNetworkClient.client
        .get('$_path/education/get-available-levels/');

    if (response.statusCode != 200) {
      throw Exception();
    }

    return response.data
        .map<EducationLevelModel>(
            (message) => EducationLevelModel.fromJson(message))
        .toList();
  }

  Future<List<EducationDegreeModel>> getEducationDegrees() async {
    final response = await _mainNetworkClient.client
        .get('$_path/education/get-available-degrees/');

    if (response.statusCode != 200) {
      throw Exception();
    }

    return response.data
        .map<EducationDegreeModel>(
            (message) => EducationDegreeModel.fromJson(message))
        .toList();
  }

  Future<void> changePassword(
      {required String currentPassword, required String newPassword}) async {
    final response =
        await _mainNetworkClient.client.put('$_path/update-password/', data: {
      'current_password': currentPassword,
      'new_password': newPassword,
    });

    if (response.data.toString().toLowerCase().contains('Неверный пароль') ) {
      throw Exception('wrongpassword');
    }

    if (response.statusCode != 200) {
      throw Exception();
    }
  }

  Future<void> updateProfile({required UpdateProfileRequest request}) async {
    final response = await _mainNetworkClient.client.post(
      '$_path/update/',
      data: request.toJson(),
    );

    if (response.statusCode != 200) {
      throw Exception();
    }
  }

  Future<void> updateExperience({
    required List<ExperienceRequest> experiences,
  }) async {
    final json = experiences.map((e) => e.toJson()).toList();

    final response = await _mainNetworkClient.client.post(
      '$_path/experience/update/',
      data: json,
    );

    if (response.statusCode != 200) {
      throw Exception();
    }
  }

  Future<void> updateActivity({
    required String website,
    required String description,
  }) async {
    final response = await _mainNetworkClient.client.post(
      '$_path/person/update-activity/',
      data: {
        "person_website": website,
        "person_activity_description": description,
      },
    );

    if (response.statusCode != 200) {
      throw Exception();
    }
  }

  Future<void> updateCompany({
    required String website,
    required String description,
    required int inn,
    required String name,
  }) async {
    final response = await _mainNetworkClient.client.post(
      '$_path/company/update-info/',
      data: {
        "company_website": website,
        "company_description": description,
        "company_inn": inn,
        "company_name": name,
      },
    );

    if (response.statusCode != 200) {
      throw Exception();
    }
  }

  Future<void> setAvatar({
    required int avatar,
  }) async {
    final response = await _mainNetworkClient.client.post(
      '$_path/set-avatar/',
      data: {
        "avatar": avatar,
      },
    );

    if (response.statusCode != 200) {
      throw Exception();
    }
  }

  Future<List<AvatarModel>> getAvatar() async {
    final response = await _mainNetworkClient.client.get(
      '$_path/get-avatars-variants/',
    );

    if (response.statusCode != 200) {
      throw Exception();
    }

    return response.data
        .map<AvatarModel>((message) => AvatarModel.fromJson(message))
        .toList();
  }

  Future<void> requestSaveInfo() async{
    final response = await _mainNetworkClient.client.post(
      '$_path/request-edit-confirmation-code/',
    );

  }
}
