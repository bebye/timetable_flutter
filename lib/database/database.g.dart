// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String name;

  final List<Migration> _migrations = [];

  Callback _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String> listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  LectureDao _lectureDaoInstance;

  ProfessorDao _professorDaoInstance;

  StudentDao _studentDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Lecture` (`id` INTEGER, `name` TEXT NOT NULL, `professor_id` INTEGER NOT NULL, `timetable` TEXT NOT NULL, `location` TEXT, FOREIGN KEY (`professor_id`) REFERENCES `Professor` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Student` (`id` INTEGER, `name` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Professor` (`id` INTEGER, `name` TEXT NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  LectureDao get lectureDao {
    return _lectureDaoInstance ??= _$LectureDao(database, changeListener);
  }

  @override
  ProfessorDao get professorDao {
    return _professorDaoInstance ??= _$ProfessorDao(database, changeListener);
  }

  @override
  StudentDao get studentDao {
    return _studentDaoInstance ??= _$StudentDao(database, changeListener);
  }
}

class _$LectureDao extends LectureDao {
  _$LectureDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  @override
  Stream<List<Lecture>> getAllLecture() {
    return _queryAdapter.queryListStream('SELECT * FROM Professor',
        queryableName: 'Lecture',
        isView: false,
        mapper: (Map<String, dynamic> row) => Lecture());
  }

  @override
  Stream<Lecture> getLecture(int id) {
    return _queryAdapter.queryStream('SELECT * FROM Professor WHERE id = ?',
        arguments: <dynamic>[id],
        queryableName: 'Lecture',
        isView: false,
        mapper: (Map<String, dynamic> row) => Lecture());
  }
}

class _$ProfessorDao extends ProfessorDao {
  _$ProfessorDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  @override
  Stream<List<Professor>> getAllProfessor() {
    return _queryAdapter.queryListStream('SELECT * FROM Professor',
        queryableName: 'Professor',
        isView: false,
        mapper: (Map<String, dynamic> row) => Professor());
  }

  @override
  Stream<Professor> getProfessor(int id) {
    return _queryAdapter.queryStream('SELECT * FROM Professor WHERE id = ?',
        arguments: <dynamic>[id],
        queryableName: 'Professor',
        isView: false,
        mapper: (Map<String, dynamic> row) => Professor());
  }
}

class _$StudentDao extends StudentDao {
  _$StudentDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  @override
  Stream<List<Student>> getAllStudent() {
    return _queryAdapter.queryListStream('SELECT * FROM Professor',
        queryableName: 'Student',
        isView: false,
        mapper: (Map<String, dynamic> row) => Student());
  }

  @override
  Stream<Student> getStudent(int id) {
    return _queryAdapter.queryStream('SELECT * FROM Professor WHERE id = ?',
        arguments: <dynamic>[id],
        queryableName: 'Student',
        isView: false,
        mapper: (Map<String, dynamic> row) => Student());
  }
}
