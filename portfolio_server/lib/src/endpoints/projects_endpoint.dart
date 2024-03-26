import 'package:portfolio_server/src/generated/articles.dart';
import 'package:serverpod/serverpod.dart';

class ProjectsEndpoint extends Endpoint {
  Future<List<Projects>> getProjects(Session session) async {
    return await Projects.find(session, where: (t) => t.isPublic.equals(true));
  }

  Future<bool> addProjects(Session session, Projects projects) async {
    await Projects.insert(session, projects);
    return true;
  }
}
