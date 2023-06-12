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

class DetasselingStandardForm extends ConsumerStatefulWidget {
  final InspectionParent inspectionParent;
  final String fieldName;
  final String fieldNumber;
  final GeoPointObject userLocation;
  final String hybridName;
  final Function callback;
  const DetasselingStandardForm(
      {Key? key,
      required this.inspectionParent,
      required this.fieldName,
      required this.fieldNumber,
      required this.userLocation,
      required this.hybridName,
      required this.callback})
      : super(key: key);

  @override
  DetasselingStandardFormState createState() => DetasselingStandardFormState();
}

class DetasselingStandardFormKeys {
  static String comments = 'COMMENTS';
  static String femaleReceptiveSilk = 'FEMALE_RECEPTIVE_SILK';
  static String femaleTasselsRemaining = 'FEMALE_TASSELS_REMAINING';
  static String areRoguesPresent = "ARE_ROGUES_PRESENT";
  static String femaleTasselsExposed = 'FEMALE_TASSELS_EXPOSED';
  static String femaleTasselsShedding = 'FEMALE_TASSELS_SHEDDING';
  static String maleTasselsShedding = '.MALE_TASSELS_SHEDDING';
}

class DetasselingStandardFormState
    extends ConsumerState<DetasselingStandardForm> {
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
                          const FemaleSilkStepperField(),
                          const FemaleTasselsRemainingStepperField(),
                          const FemaleTasselsExposedStepperField(),
                          const FemaleTasselsSheddingStepperField(),
                          const MaleTasselsSheddingStepperField(),
                          const RoguesPresentRadioGroup(),
                          const CommentsTextField(),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                            child: ElevatedButton(
                              onPressed: () {
                                String getComments() {
                                  return _formKey
                                          .currentState
                                          ?.fields[DetasselingStandardFormKeys
                                              .comments]
                                          ?.value
                                          .toString() ??
                                      "";
                                }

                                bool getAreRoguesPresent() {
                                  return _formKey
                                              .currentState
                                              ?.fields[
                                                  DetasselingStandardFormKeys
                                                      .areRoguesPresent]
                                              ?.value
                                              .toString() ==
                                          'Yes'
                                      ? true
                                      : false;
                                }

                                int getFemaleReceptiveSilk() {
                                  return int.parse(_formKey
                                      .currentState
                                      ?.fields[DetasselingStandardFormKeys
                                          .femaleReceptiveSilk]
                                      ?.value);
                                }

                                int getFemaleTasselsRemaining() {
                                  return int.parse(_formKey
                                      .currentState
                                      ?.fields[DetasselingStandardFormKeys
                                          .femaleTasselsRemaining]
                                      ?.value);
                                }

                                int getFemaleTasselsExposed() {
                                  return int.parse(_formKey
                                      .currentState
                                      ?.fields[DetasselingStandardFormKeys
                                          .femaleTasselsExposed]
                                      ?.value);
                                }

                                int getFemaleTasselsShedding() {
                                  return int.parse(_formKey
                                      .currentState
                                      ?.fields[DetasselingStandardFormKeys
                                          .femaleTasselsShedding]
                                      ?.value);
                                }

                                int getMaleTasselsShedding() {
                                  return int.parse(_formKey
                                      .currentState
                                      ?.fields[DetasselingStandardFormKeys
                                          .maleTasselsShedding]
                                      ?.value);
                                }

                                DetasselingSeedCornStandardInspectionFormDataObject
                                    formDataObject =
                                    DetasselingSeedCornStandardInspectionFormDataObject(
                                        areRoguesPresent: getAreRoguesPresent(),
                                        femaleReceptiveSilk:
                                            getFemaleReceptiveSilk(),
                                        femaleTasselsExposed:
                                            getFemaleTasselsExposed(),
                                        femaleTasselsRemaining:
                                            getFemaleTasselsRemaining(),
                                        femaleTasselsShedding:
                                            getFemaleTasselsShedding(),
                                        maleTasselsShedding:
                                            getMaleTasselsShedding());

                                InspectionChildCreateObject object =
                                    InspectionChildCreateObject(
                                        widget.userLocation,
                                        widget.inspectionParent.seasonID,
                                        formDataObject,
                                        null,
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

class RoguesPresentRadioGroup extends StatelessWidget {
  const RoguesPresentRadioGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderRadioGroup(
      name: DetasselingStandardFormKeys.areRoguesPresent,
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
            name: DetasselingStandardFormKeys.comments,
            initialValue: "",
            decoration: const InputDecoration(labelText: 'Comments')));
  }
}

class FemaleTasselsExposedStepperField extends StatelessWidget {
  const FemaleTasselsExposedStepperField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: FormBuilderTextField(
          decoration: const InputDecoration(
              labelText: 'Female Tassels Exposed (out of 100)'),
          name: DetasselingStandardFormKeys.femaleTasselsExposed,
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
            FormBuilderValidators.max(100),
            FormBuilderValidators.min(0),
            FormBuilderValidators.integer()
          ]),
          keyboardType: const TextInputType.numberWithOptions(decimal: false),
        ));
  }
}

class MaleTasselsSheddingStepperField extends StatelessWidget {
  const MaleTasselsSheddingStepperField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: FormBuilderTextField(
          decoration: const InputDecoration(
              labelText: 'Male Tassels Shedding (out of 100)'),
          name: DetasselingStandardFormKeys.maleTasselsShedding,
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
            FormBuilderValidators.max(100),
            FormBuilderValidators.min(0),
            FormBuilderValidators.integer()
          ]),
          keyboardType: const TextInputType.numberWithOptions(decimal: false),
        ));
  }
}

class FemaleTasselsSheddingStepperField extends StatelessWidget {
  const FemaleTasselsSheddingStepperField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: FormBuilderTextField(
          decoration: const InputDecoration(
              labelText: 'Female Tassels Shedding (out of 100)'),
          name: DetasselingStandardFormKeys.femaleTasselsShedding,
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
            FormBuilderValidators.max(100),
            FormBuilderValidators.min(0),
            FormBuilderValidators.integer()
          ]),
          keyboardType: const TextInputType.numberWithOptions(decimal: false),
        ));
  }
}

class FemaleTasselsRemainingStepperField extends StatelessWidget {
  const FemaleTasselsRemainingStepperField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: FormBuilderTextField(
          decoration: const InputDecoration(
              labelText: 'Female Tassels Remaining (out of 100)'),
          name: DetasselingStandardFormKeys.femaleTasselsRemaining,
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
            FormBuilderValidators.max(100),
            FormBuilderValidators.min(0),
            FormBuilderValidators.integer()
          ]),
          keyboardType: const TextInputType.numberWithOptions(decimal: false),
        ));
  }
}

class FemaleSilkStepperField extends StatelessWidget {
  const FemaleSilkStepperField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 8),
        child: FormBuilderTextField(
          decoration: const InputDecoration(
              labelText: 'Female Receptive Silks (out of 100)'),
          name: DetasselingStandardFormKeys.femaleReceptiveSilk,
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
            FormBuilderValidators.max(100),
            FormBuilderValidators.min(0),
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
  final DetasselingStandardForm widget;
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
  final DetasselingStandardForm widget;
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
