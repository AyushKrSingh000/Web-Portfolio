import 'package:portfolio_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class ProjectsEndpoint extends Endpoint {
  Future<List<Projects>> getProjects(Session session) async {
    // var data = await session.caches.local.get('projects') as ProjectList?;
    // if (data == null) {
    final projects =
        await Projects.db.find(session, where: (t) => t.isPublic.equals(true));
    // await session.caches.local
    //     .put('projects', ProjectList(projects: projects));
    return projects;
    // }
    // return data.projects;
  }

  Future<bool> addProjects(Session session, Projects projects) async {
    await Projects.db.insertRow(session, projects);
    session.log('New Project Added');
    return true;
  }

  Future<bool> deleteProject(Session session, int projectId) async {
    try {
      await Projects.db
          .deleteWhere(session, where: (t) => t.id.equals(projectId));
      session.log('projects deleted! $projectId');
    } catch (e) {
      return false;
    }
    return true;
  }

  Future<bool> deleteAllProjects(Session session) async {
    try {
      await Projects.db.deleteWhere(session, where: (t) => Constant.bool(true));
      session.log('All projects deleted!');
    } catch (e) {
      return false;
    }
    return true;
  }
}
