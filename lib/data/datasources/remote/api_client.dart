import 'package:dio/dio.dart';
import 'package:is_assignment/core/constants/constants.dart';
import 'package:is_assignment/domain/entities/get_leads_data_model/get_leads_data_model.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET('lead/getLeadDetails')
  Future<HttpResponse<GetLeadsDataModel>> getLeads(
    @Query('page') int page,
    @Query('size') int size,
    @Query('userId') String userId,
  );
}
