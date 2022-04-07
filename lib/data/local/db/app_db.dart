import 'dart:io';
<<<<<<< HEAD

=======
>>>>>>> 303a94c9fb583168e6734456009c60236cc86781
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:employee_book/data/local/entity/employee_entity.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

part 'app_db.g.dart';

<<<<<<< HEAD
LazyDatabase _opeConnection() {
=======
LazyDatabase _openConnection() {
>>>>>>> 303a94c9fb583168e6734456009c60236cc86781
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'employee.sqlite'));

    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [Employee])
<<<<<<< HEAD
class AppDb extends _$AppDb {
  AppDb() : super(_opeConnection());
=======
class AppDb extends $_AppDb {
  AppDb() : super(_openConnection());
>>>>>>> 303a94c9fb583168e6734456009c60236cc86781

  @override
  int get schemaVersion => 1;
}
