

import 'auth_repo.dart';
import 'tags_repo.dart';

class Repository{
  Repository({required this.tagsRepo,required this.authRepo});

  final TagsRepo tagsRepo;
  final AuthRepo authRepo;
}