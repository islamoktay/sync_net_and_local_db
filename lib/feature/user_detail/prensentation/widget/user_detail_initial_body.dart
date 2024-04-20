import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'package:sync_net_and_local_db/core/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/feature/user_detail/constants/form_constants.dart';
import 'package:sync_net_and_local_db/feature/user_detail/prensentation/cubit/user_detail_cubit.dart';

class UserDetailInitialBody extends StatelessWidget {
  UserDetailInitialBody({
    required this.user,
    super.key,
  });
  final _formKey = GlobalKey<FormBuilderState>();

  final User? user;

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      initialValue: user != null ? User.toMapForForm(user!) : {},
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            FormBuilderTextField(
              name: FormConstants.name,
              decoration: const InputDecoration(labelText: 'Name'),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
              ]),
            ),
            FormBuilderTextField(
              name: FormConstants.mail,
              decoration: const InputDecoration(labelText: 'Mail'),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.email(),
              ]),
            ),
            FormBuilderTextField(
              name: FormConstants.phone,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(labelText: 'Phone'),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.numeric(),
              ]),
            ),
            const SizedBox(height: 32),
            BlocBuilder<UserDetailCubit, UserDetailState>(
              builder: (context, state) {
                return MaterialButton(
                  color: Theme.of(context).colorScheme.secondary,
                  onPressed: () {
                    if (_formKey.currentState?.saveAndValidate() ?? false) {
                      context.read<UserDetailCubit>().createUser(
                            User.fromMap(_formKey.currentState!.value, user),
                          );
                    }
                  },
                  child: const Text(
                    'Create',
                    style: TextStyle(color: Colors.white),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
