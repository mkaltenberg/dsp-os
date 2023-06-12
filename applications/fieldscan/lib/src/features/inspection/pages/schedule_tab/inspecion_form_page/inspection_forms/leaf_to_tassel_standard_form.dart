import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:fieldscan/models/ModelProvider.dart';
import 'package:fieldscan/src/constants/providers/current_user.dart';
import 'package:fieldscan/src/repositories/inspection_child_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_extra_fields/form_builder_extra_fields.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:stringr/stringr.dart';
import 'package:uuid/uuid.dart';

class LeafToTasselStandardForm extends ConsumerStatefulWidget {
  final InspectionParent inspectionParent;
  final String fieldName;
  final String fieldNumber;
  final GeoPointObject userLocation;
  final String hybridName;
  final Function callback;
  const LeafToTasselStandardForm(
      {Key? key,
      required this.inspectionParent,
      required this.fieldName,
      required this.fieldNumber,
      required this.userLocation,
      required this.hybridName,
      required this.callback})
      : super(key: key);

  @override
  LeafToTasselStandardFormState createState() =>
      LeafToTasselStandardFormState();
}

class LeafToTasselStandardFormKeys {
  static String comments = 'COMMENTS';
  static String earLengthInches = 'EAR_LENGTH_INCHES';
  static String inchesToSilkEmergence = 'INCHES_TO_SILK_EMERGENCE';
  static String areRoguesPresent = "ARE_ROGUES_PRESENT";
  static String earShootLengthInches = 'EAR_SHOOT_LENGTH_INCHES';
  static String tasselLengthInches = 'TASSEL_LENGTH_INCHES';
  static String numberOfLeaves = 'NUMBER_OF_LEAVES';
  static String silkStage = 'SILK_STAGE';
}

class LeafToTasselStandardFormState
    extends ConsumerState<LeafToTasselStandardForm> {
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
                  autovalidateMode: AutovalidateMode.onUserInteraction,
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
                          const NumberOfLeavesStepperField(),
                          const TasselLengthStepperField(),
                          const EarShootLengthStepperField(),
                          const EarLengthStepperField(),
                          const InchesToSilkEmergenceStepperField(),
                          const SilkStageStepperField(),
                          const RoguesPresentRadioGroup(),
                          const CommentsTextField(),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                            child: ElevatedButton(
                              onPressed: () {
                                String getComments() {
                                  return _formKey
                                          .currentState
                                          ?.fields[LeafToTasselStandardFormKeys
                                              .comments]
                                          ?.value
                                          .toString() ??
                                      "";
                                }

                                bool getAreRoguesPresent() {
                                  return _formKey
                                              .currentState
                                              ?.fields[
                                                  LeafToTasselStandardFormKeys
                                                      .areRoguesPresent]
                                              ?.value
                                              .toString() ==
                                          'Yes'
                                      ? true
                                      : false;
                                }

                                double getEarLengthInches() {
                                  return _formKey
                                      .currentState
                                      ?.fields[LeafToTasselStandardFormKeys
                                          .earLengthInches]
                                      ?.value;
                                }

                                double getInchesToSilkEmergence() {
                                  return _formKey
                                      .currentState
                                      ?.fields[LeafToTasselStandardFormKeys
                                          .inchesToSilkEmergence]
                                      ?.value;
                                }

                                double getEarShootLengthInches() {
                                  return _formKey
                                      .currentState
                                      ?.fields[LeafToTasselStandardFormKeys
                                          .earShootLengthInches]
                                      ?.value;
                                }

                                double getTasselLengthInches() {
                                  return _formKey
                                      .currentState
                                      ?.fields[LeafToTasselStandardFormKeys
                                          .tasselLengthInches]
                                      ?.value;
                                }

                                double getNumberOfLeaves() {
                                  return _formKey
                                      .currentState
                                      ?.fields[LeafToTasselStandardFormKeys
                                          .numberOfLeaves]
                                      ?.value;
                                }

                                int getSilkStage() {
                                  return _formKey
                                      .currentState
                                      ?.fields[LeafToTasselStandardFormKeys
                                          .silkStage]
                                      ?.value;
                                }

                                LeafToTasselSeedCornStandardInspectionFormDataObject
                                    formDataObject =
                                    LeafToTasselSeedCornStandardInspectionFormDataObject(
                                        areRoguesPresent: getAreRoguesPresent(),
                                        earShootLengthInches:
                                            getEarShootLengthInches(),
                                        inchesToSilkEmergence:
                                            getInchesToSilkEmergence(),
                                        numberOfLeaves: getNumberOfLeaves(),
                                        silkStage: getSilkStage(),
                                        tasselLengthInches:
                                            getTasselLengthInches(),
                                        earLengthInches: getEarLengthInches());

                                InspectionChildCreateObject object =
                                    InspectionChildCreateObject(
                                        widget.userLocation,
                                        widget.inspectionParent.seasonID,
                                        null,
                                        null,
                                        null,
                                        formDataObject,
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

class RoguesPresentRadioGroup extends StatelessWidget {
  const RoguesPresentRadioGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderRadioGroup(
      name: LeafToTasselStandardFormKeys.areRoguesPresent,
      decoration:
          const InputDecoration(labelText: 'Are rogues present in field?'),
      validator:
          FormBuilderValidators.required(errorText: 'Must select Yes or No'),
      options: ['Yes', 'No']
          .map((e) => FormBuilderFieldOption(value: e))
          .toList(growable: false),
    );
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
            name: LeafToTasselStandardFormKeys.comments,
            initialValue: "",
            decoration: const InputDecoration(labelText: 'Comments')));
  }
}

class SilkStageStepperField extends StatelessWidget {
  const SilkStageStepperField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: FormBuilderTouchSpin(
          decoration: const InputDecoration(labelText: 'Silk Stage'),
          name: LeafToTasselStandardFormKeys.silkStage,
          min: 1,
          max: 5,
          initialValue: 1,
          step: 1,
        ));
  }
}

class EarLengthStepperField extends StatelessWidget {
  const EarLengthStepperField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: FormBuilderTouchSpin(
          decoration: const InputDecoration(labelText: 'Ear Length (Inches)'),
          name: LeafToTasselStandardFormKeys.earLengthInches,
          min: 0,
          max: 25,
          initialValue: 2,
          step: .5,
        ));
  }
}

class InchesToSilkEmergenceStepperField extends StatelessWidget {
  const InchesToSilkEmergenceStepperField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: FormBuilderTouchSpin(
          decoration:
              const InputDecoration(labelText: 'Inches To Silk Emergence'),
          name: LeafToTasselStandardFormKeys.inchesToSilkEmergence,
          min: 0,
          max: 20,
          initialValue: 2,
          step: .5,
        ));
  }
}

class EarShootLengthStepperField extends StatelessWidget {
  const EarShootLengthStepperField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: FormBuilderTouchSpin(
          decoration:
              const InputDecoration(labelText: 'Ear Shoot Length (Inches)'),
          name: LeafToTasselStandardFormKeys.earShootLengthInches,
          min: 0,
          max: 15,
          initialValue: 7,
          step: .5,
        ));
  }
}

class TasselLengthStepperField extends StatelessWidget {
  const TasselLengthStepperField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: FormBuilderTouchSpin(
          decoration:
              const InputDecoration(labelText: 'Tassel Length (Inches)'),
          name: LeafToTasselStandardFormKeys.tasselLengthInches,
          min: 0,
          max: 20,
          initialValue: 10,
          step: .5,
        ));
  }
}

class NumberOfLeavesStepperField extends StatelessWidget {
  const NumberOfLeavesStepperField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 8),
        child: FormBuilderTouchSpin(
          decoration: const InputDecoration(labelText: '# of Leaves'),
          name: LeafToTasselStandardFormKeys.numberOfLeaves,
          min: 0,
          max: 10,
          initialValue: 0,
          step: .5,
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
  final LeafToTasselStandardForm widget;
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
  final LeafToTasselStandardForm widget;
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
