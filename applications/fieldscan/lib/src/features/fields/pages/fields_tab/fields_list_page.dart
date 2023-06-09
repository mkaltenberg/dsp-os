import 'dart:async';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:fieldscan/models/ModelProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FieldsListPage extends ConsumerStatefulWidget {
  const FieldsListPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FieldsListPageState();
}

class _FieldsListPageState extends ConsumerState<FieldsListPage> {
  Stream<List<FieldParent>> fieldParentStream() {
    Stream<List<FieldParent>> stream = Amplify.DataStore.query(
            FieldParent.classType,
            where: FieldParent.FIELDNUMBERBASE.lt('7000'))
        .asStream();
    return stream;
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<FieldParent>>(
      stream: fieldParentStream(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Text('No data');
        }
        if (snapshot.hasError ||
            snapshot.connectionState == ConnectionState.waiting) {
          return const Text('Loading...');
        }

        return Column(
          children: [
            AppBar(
              title: const Text('Fields'),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(0),
                children: snapshot.data!
                    .map((document) {
                      FieldParent data = document;
                      return ListTile(
                        onTap: () {
                          //Navigator.pushNamed(context, '/detail');
                        },
                        title: Text(data.fieldName),
                        subtitle: Text(data.fieldNumberBase),
                      );
                    })
                    .toList()
                    .cast(),
              ),
            ),
          ],
        );
      },
    );
  }
}
