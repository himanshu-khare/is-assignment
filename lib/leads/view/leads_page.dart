import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:is_assignment/domain/entities/get_leads_data_model/lead.dart';
import 'package:is_assignment/leads/cubit/leads_cubit.dart';
import 'package:is_assignment/leads/cubit/leads_state.dart';
import 'package:is_assignment/leads/widgets/build_lead_item.dart';

class LeadsPage extends StatelessWidget {
  const LeadsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LeadsCubit(),
      child: const LeadsView(),
    );
  }
}

class LeadsView extends StatelessWidget {
  const LeadsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Leads')),
      body: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: BlocBuilder<LeadsCubit, LeadsState>(
          builder: (context, state) {
            if (state is LeadsErrorState) {
              return Center(child: Text(state.message));
            }
            if (state is LeadsSuccessState) {
              return ListView.builder(
                itemCount: state.data!.length + 1,
                itemBuilder: (ctx, index) {
                  if (index == state.data!.length) {
                    if (state.loadmore) {
                      context.read<LeadsCubit>().loadMore();
                      return const Padding(
                        padding: EdgeInsets.all(16),
                        child: Center(child: CircularProgressIndicator()),
                      );
                    } else {
                      return const Text(
                        'No More Data',
                        textAlign: TextAlign.center,
                      );
                    }
                  }
                  final item = state.data?[index] ?? Lead();
                  return BuildLeadItem(
                    lead: item,
                  );
                },
              );
            }
            return const Center(child: CircularProgressIndicator.adaptive());
          },
        ),
      ),
    );
  }
}
