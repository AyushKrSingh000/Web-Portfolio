/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/contact_us_endpoint.dart' as _i2;
import '../endpoints/projects_endpoint.dart' as _i3;
import 'package:portfolio_server/src/generated/contacts.dart' as _i4;
import 'package:portfolio_server/src/generated/projects.dart' as _i5;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'contactUs': _i2.ContactUsEndpoint()
        ..initialize(
          server,
          'contactUs',
          null,
        ),
      'projects': _i3.ProjectsEndpoint()
        ..initialize(
          server,
          'projects',
          null,
        ),
    };
    connectors['contactUs'] = _i1.EndpointConnector(
      name: 'contactUs',
      endpoint: endpoints['contactUs']!,
      methodConnectors: {
        'sendContactdetails': _i1.MethodConnector(
          name: 'sendContactdetails',
          params: {
            'contactData': _i1.ParameterDescription(
              name: 'contactData',
              type: _i1.getType<_i4.Contacts>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['contactUs'] as _i2.ContactUsEndpoint)
                  .sendContactdetails(
            session,
            params['contactData'],
          ),
        )
      },
    );
    connectors['projects'] = _i1.EndpointConnector(
      name: 'projects',
      endpoint: endpoints['projects']!,
      methodConnectors: {
        'getProjects': _i1.MethodConnector(
          name: 'getProjects',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['projects'] as _i3.ProjectsEndpoint)
                  .getProjects(session),
        ),
        'addProjects': _i1.MethodConnector(
          name: 'addProjects',
          params: {
            'projects': _i1.ParameterDescription(
              name: 'projects',
              type: _i1.getType<_i5.Projects>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['projects'] as _i3.ProjectsEndpoint).addProjects(
            session,
            params['projects'],
          ),
        ),
        'deleteProject': _i1.MethodConnector(
          name: 'deleteProject',
          params: {
            'projectId': _i1.ParameterDescription(
              name: 'projectId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['projects'] as _i3.ProjectsEndpoint).deleteProject(
            session,
            params['projectId'],
          ),
        ),
        'deleteAllProjects': _i1.MethodConnector(
          name: 'deleteAllProjects',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['projects'] as _i3.ProjectsEndpoint)
                  .deleteAllProjects(session),
        ),
      },
    );
  }
}
