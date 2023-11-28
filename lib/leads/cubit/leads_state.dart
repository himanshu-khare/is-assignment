import 'package:is_assignment/domain/entities/get_leads_data_model/lead.dart';

abstract class LeadsState {}

class LeadsInitialState extends LeadsState {}

class LeadsLoadingState extends LeadsState {}

class LeadsErrorState extends LeadsState {
  LeadsErrorState(this.message);
  final String message;
}

class LeadsSuccessState extends LeadsState {
  LeadsSuccessState({this.data,this.loadmore=false});
  bool loadmore;
  List<Lead>? data;
}
