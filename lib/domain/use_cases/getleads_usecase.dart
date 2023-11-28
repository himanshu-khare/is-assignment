import 'package:is_assignment/core/utils/data_state.dart';
import 'package:is_assignment/data/repositories/ilead_repository.dart';
import 'package:is_assignment/domain/entities/get_leads_data_model/get_leads_data_model.dart';

class GetLeadsUseCase {
  GetLeadsUseCase(this._leadRepository);
  final ILeadRepository _leadRepository;

  Future<DataState<GetLeadsDataModel>> getLeads(
    int page,
    int size,
    String userId,
  ) {
    return _leadRepository.getLeads(page, size, userId);
  }
}
