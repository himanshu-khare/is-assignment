import 'dart:io';

import 'package:dio/dio.dart';
import 'package:is_assignment/core/utils/api_client_service.dart';
import 'package:is_assignment/core/utils/data_state.dart';
import 'package:is_assignment/data/repositories/ilead_repository.dart';
import 'package:is_assignment/domain/entities/get_leads_data_model/get_leads_data_model.dart';

class LeadsRepositoryImpl extends ILeadRepository {
  @override
  Future<DataState<GetLeadsDataModel>> getLeads(
    int page,
    int size,
    String userId,
  ) async {
    try {
      final httpResponse = await ApiClientService.getApiService().getLeads(page, size, userId);
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      }
      return DataFailed(
        DioError(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          requestOptions: httpResponse.response.requestOptions,
          type: DioErrorType.response,
        ),
      );
    } on DioError catch (e) {
      return DataFailed(e);
    }
  }
}
