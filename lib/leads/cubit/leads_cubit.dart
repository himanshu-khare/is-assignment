import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:is_assignment/core/constants/constants.dart';
import 'package:is_assignment/core/network/network_info.dart';
import 'package:is_assignment/leads/cubit/leads_state.dart';
import 'package:is_assignment/data/repositories/leads_repository_impl.dart';
import 'package:is_assignment/domain/use_cases/getleads_usecase.dart';

class LeadsCubit extends Cubit<LeadsState> {
  LeadsCubit() : super(LeadsInitialState()) {
    getLeads();
  }

  final leadsUseCase = GetLeadsUseCase(LeadsRepositoryImpl());
  final networkInfo = NetworkInfo();
  int _currentPage = 1;

  Future<void> getLeads() async {
    emit(LeadsLoadingState());
    final isConnected = await networkInfo.isConnected();
    if (!isConnected) {
      emit(LeadsErrorState('No Internet Connection'));
    }
    try {
      final response = await leadsUseCase.getLeads(
        _currentPage,
        ApiConstants.pageSize,
        ApiConstants.userId,
      );
      if (response.data != null) {
        emit(
          LeadsSuccessState(
            data: response.data?.data ?? [],
            loadmore: response.data?.data?.isNotEmpty ?? false,
          ),
        );
      } else {
        emit(
          LeadsErrorState(
            response.error?.message ?? 'Something went wrong',
          ),
        );
      }
    } catch (error) {
      emit(LeadsErrorState(error.toString()));
    }
  }

  Future<void> loadMore() async {
    _currentPage++;
    try {
      final response = await leadsUseCase.getLeads(
        _currentPage,
        ApiConstants.pageSize,
        ApiConstants.userId,
      );
      final newList = response.data?.data;
      final list = (state as LeadsSuccessState).data;
      list?.addAll(newList ?? []);
      emit(
        LeadsSuccessState(
          data: list,
          loadmore: newList?.isNotEmpty ?? false,
        ),
      );
    } catch (err) {
      final currentstate = state as LeadsSuccessState;
      emit(
        LeadsSuccessState(
          data: currentstate.data,
        ),
      );
    }
  }
}
