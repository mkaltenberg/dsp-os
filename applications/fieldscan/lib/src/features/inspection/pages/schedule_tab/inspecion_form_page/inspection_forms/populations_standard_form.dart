import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:fieldscan/models/ModelProvider.dart';
import 'package:fieldscan/src/constants/providers/current_user.dart';
import 'package:fieldscan/src/repositories/inspection_child_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:stringr/stringr.dart';
import 'package:uuid/uuid.dart';

class PopulationsStandardForm extends ConsumerStatefulWidget {
  final InspectionParent inspectionParent;
  final String fieldName;
  final String fieldNumber;
  final GeoPointObject userLocation;
  final String hybridName;
  final Function callback;
  const PopulationsStandardForm(
      {Key? key,
      required this.inspectionParent,
      required this.fieldName,
      required this.fieldNumber,
      required this.userLocation,
      required this.hybridName,
      required this.callback})
      : super(key: key);

  @override
  PopulationsStandardFormState createState() => PopulationsStandardFormState();
}

class PopulationsStandardFormKeys {
  static String comments = 'COMMENTS';
  static String areRoguesPresent = "ARE_ROGUES_PRESENT";
  static String femaleCountOne = 'FEMALE_COUNT_ONE';
  static String femaleCountTwo = 'FEMALE_COUNT_TWO';
  static String maleCount = 'MALE_COUNT';
}

class PopulationsStandardFormState
    extends ConsumerState<PopulationsStandardForm> {
  final _formKey = GlobalKey<FormBuilderState>();
  var uuid = const Uuid();
  late String newDocId;

  @override
  void initState() {
    super.initState();
    newDocId = uuid.v4();
  }

  @override
  Widget build(BuildContext context) {
    double headerFontSize = 17;
    FontWeight headerFontWeight = FontWeight.w700;
    FontWeight subHeaderFontWeight = FontWeight.w500;

    AsyncValue<List<AuthUserAttribute>> currentUserProfile =
        ref.watch(currentUserProfileProvider);
    return currentUserProfile.when(
        loading: () => const CircularProgressIndicator(),
        error: (error, stackTrace) => Text('Error: $error'),
        data: (currentUserProfile) {
          String getUserEmail() {
            for (var attribute in currentUserProfile) {
              if (attribute.userAttributeKey.key == 'email') {
                return attribute.value;
              }
            }
            return '';
          }

          String getUserFirstName() {
            for (var attribute in currentUserProfile) {
              if (attribute.userAttributeKey.key == 'given_name') {
                return attribute.value;
              }
            }
            return '';
          }

          String getUserLastName() {
            for (var attribute in currentUserProfile) {
              if (attribute.userAttributeKey.key == 'family_name') {
                return attribute.value;
              }
            }
            return '';
          }

          return SingleChildScrollView(
            child: Column(
              children: <Widget>[
                FormBuilder(
                  key: _formKey,
                  // enabled: false,
                  onChanged: () {
                    _formKey.currentState!.save();
                    debugPrint(_formKey.currentState!.value.toString());
                  },
                  autovalidateMode: AutovalidateMode.disabled,
                  skipDisabled: true,
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(children: [
                          HeaderFieldNameRow(
                              headerFontSize: headerFontSize,
                              headerFontWeight: headerFontWeight,
                              widget: widget,
                              subHeaderFontWeight: subHeaderFontWeight),
                          HeaderHybridNameRow(
                              headerFontSize: headerFontSize,
                              headerFontWeight: headerFontWeight,
                              widget: widget,
                              subHeaderFontWeight: subHeaderFontWeight),
                          HeaderUserNameRow(
                              headerFontSize: headerFontSize,
                              headerFontWeight: headerFontWeight,
                              userName:
                                  '$getUserFirstName() $getUserLastName()',
                              userEmail: getUserEmail(),
                              subHeaderFontWeight: subHeaderFontWeight),
                          HeaderDateTimeRow(
                              headerFontSize: headerFontSize,
                              headerFontWeight: headerFontWeight,
                              formattedDate: TemporalDate.now().toString(),
                              subHeaderFontWeight: subHeaderFontWeight,
                              formattedTime: TemporalTime.now().toString()),
                          const FemaleCountOneTextField(),
                          const FemaleCountTwoTextField(),
                          const MaleCountTextField(),
                          const CommentsTextField(),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                            child: ElevatedButton(
                              onPressed: () {
                                String getComments() {
                                  return _formKey
                                          .currentState
                                          ?.fields[PopulationsStandardFormKeys
                                              .comments]
                                          ?.value
                                          .toString() ??
                                      "";
                                }

                                int getFemaleCountOne() {
                                  return int.parse(_formKey
                                      .currentState
                                      ?.fields[PopulationsStandardFormKeys
                                          .femaleCountOne]
                                      ?.value);
                                }

                                int getFemaleCountTwo() {
                                  return int.parse(_formKey
                                      .currentState
                                      ?.fields[PopulationsStandardFormKeys
                                          .femaleCountTwo]
                                      ?.value);
                                }

                                int getMaleCount() {
                                  return int.parse(_formKey
                                      .currentState
                                      ?.fields[
                                          PopulationsStandardFormKeys.maleCount]
                                      ?.value);
                                }

                                PopulationsStandardSeedCornInspectionFormDataObject
                                    formDataObject =
                                    PopulationsStandardSeedCornInspectionFormDataObject(
                                        femaleCountOne: getFemaleCountOne(),
                                        femaleCountTwo: getFemaleCountTwo(),
                                        maleCount: getMaleCount());
                                InspectionChildCreateObject object =
                                    InspectionChildCreateObject(
                                        widget.userLocation,
                                        widget.inspectionParent.seasonID,
                                        null,
                                        formDataObject,
                                        null,
                                        null,
                                        widget.inspectionParent.id,
                                        getComments());
                                if (_formKey.currentState!.validate()) {
                                  ref
                                      .read(inspectionChildRepository)
                                      .create(object);

                                  var snackbar = SnackBar(
                                      elevation: 12,
                                      behavior: SnackBarBehavior.floating,
                                      backgroundColor: Colors.transparent,
                                      content: AwesomeSnackbarContent(
                                          title: 'Success!',
                                          message:
                                              'You have completed an inspection.',
                                          contentType: ContentType.success));
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackbar);
                                  widget.callback.call();
                                  Navigator.of(context).pop();
                                }
                              },
                              child: const Text('Save Inspection'),
                            ),
                          )
                        ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}

class CommentsTextField extends StatelessWidget {
  const CommentsTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: FormBuilderTextField(
            name: PopulationsStandardFormKeys.comments,
            initialValue: "",
            decoration: const InputDecoration(labelText: 'Comments')));
  }
}

class FemaleCountOneTextField extends StatelessWidget {
  const FemaleCountOneTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: FormBuilderTextField(
          decoration:
              const InputDecoration(labelText: 'Female Count One (1 to 60)'),
          name: PopulationsStandardFormKeys.femaleCountOne,
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
            FormBuilderValidators.max(60),
            FormBuilderValidators.min(1),
            FormBuilderValidators.integer()
          ]),
          keyboardType: const TextInputType.numberWithOptions(decimal: false),
        ));
  }
}

class FemaleCountTwoTextField extends StatelessWidget {
  const FemaleCountTwoTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: FormBuilderTextField(
          decoration:
              const InputDecoration(labelText: 'Female Count One (1 to 60)'),
          name: PopulationsStandardFormKeys.femaleCountTwo,
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
            FormBuilderValidators.max(60),
            FormBuilderValidators.min(1),
            FormBuilderValidators.integer()
          ]),
          keyboardType: const TextInputType.numberWithOptions(decimal: false),
        ));
  }
}

class MaleCountTextField extends StatelessWidget {
  const MaleCountTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: FormBuilderTextField(
          decoration: const InputDecoration(labelText: 'Male Count (1 to 60)'),
          name: PopulationsStandardFormKeys.maleCount,
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
            FormBuilderValidators.max(60),
            FormBuilderValidators.min(1),
            FormBuilderValidators.integer()
          ]),
          keyboardType: const TextInputType.numberWithOptions(decimal: false),
        ));
  }
}

class HeaderDateTimeRow extends StatelessWidget {
  const HeaderDateTimeRow({
    Key? key,
    required this.headerFontSize,
    required this.headerFontWeight,
    required this.formattedDate,
    required this.subHeaderFontWeight,
    required this.formattedTime,
  }) : super(key: key);

  final double headerFontSize;
  final FontWeight headerFontWeight;
  final String formattedDate;
  final FontWeight subHeaderFontWeight;
  final String formattedTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
            child: Text('Date: ',
                style: TextStyle(
                    fontSize: headerFontSize, fontWeight: headerFontWeight)),
          ),
          Text(formattedDate,
              style: TextStyle(
                  fontSize: headerFontSize, fontWeight: subHeaderFontWeight)),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Text(formattedTime,
                style: TextStyle(
                    fontSize: headerFontSize, fontWeight: subHeaderFontWeight)),
          )
        ],
      ),
    );
  }
}

class HeaderUserNameRow extends StatelessWidget {
  const HeaderUserNameRow({
    Key? key,
    required this.headerFontSize,
    required this.headerFontWeight,
    required this.userName,
    required this.userEmail,
    required this.subHeaderFontWeight,
  }) : super(key: key);

  final double headerFontSize;
  final FontWeight headerFontWeight;
  final String? userName;
  final String? userEmail;
  final FontWeight subHeaderFontWeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
            child: Text('User: ',
                style: TextStyle(
                    fontSize: headerFontSize, fontWeight: headerFontWeight)),
          ),
          Text(userName ?? userEmail ?? "User Not Found",
              style: TextStyle(
                  fontSize: headerFontSize, fontWeight: subHeaderFontWeight))
        ],
      ),
    );
  }
}

class HeaderHybridNameRow extends StatelessWidget {
  const HeaderHybridNameRow({
    Key? key,
    required this.headerFontSize,
    required this.headerFontWeight,
    required this.widget,
    required this.subHeaderFontWeight,
  }) : super(key: key);

  final double headerFontSize;
  final FontWeight headerFontWeight;
  final PopulationsStandardForm widget;
  final FontWeight subHeaderFontWeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
            child: Text('Hybrid Name: ',
                style: TextStyle(
                    fontSize: headerFontSize, fontWeight: headerFontWeight)),
          ),
          Text(widget.hybridName,
              style: TextStyle(
                  fontSize: headerFontSize, fontWeight: subHeaderFontWeight))
        ],
      ),
    );
  }
}

class HeaderFieldNameRow extends StatelessWidget {
  const HeaderFieldNameRow(
      {Key? key,
      required this.headerFontSize,
      required this.headerFontWeight,
      required this.widget,
      required this.subHeaderFontWeight})
      : super(key: key);

  final double headerFontSize;
  final FontWeight headerFontWeight;
  final PopulationsStandardForm widget;
  final FontWeight subHeaderFontWeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
            child: Text('Field Name: ',
                style: TextStyle(
                    fontSize: headerFontSize, fontWeight: headerFontWeight)),
          ),
          Text(widget.fieldName.toLowerCase().titleCase(),
              style: TextStyle(
                  fontSize: headerFontSize, fontWeight: subHeaderFontWeight)),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Text(widget.fieldNumber,
                style: TextStyle(
                    fontSize: headerFontSize, fontWeight: subHeaderFontWeight)),
          )
        ],
      ),
    );
  }
}
