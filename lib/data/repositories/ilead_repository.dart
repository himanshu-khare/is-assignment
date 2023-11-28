import 'package:is_assignment/core/utils/data_state.dart';
import 'package:is_assignment/domain/entities/get_leads_data_model/get_leads_data_model.dart';

abstract class ILeadRepository {
  Future<DataState<GetLeadsDataModel>> getLeads(int page,int size,String userId);
}
