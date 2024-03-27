/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:portfolio_client/src/protocol/contacts.dart' as _i3;
import 'package:portfolio_client/src/protocol/projects.dart' as _i4;
import 'protocol.dart' as _i5;

/// {@category Endpoint}
class EndpointContactUs extends _i1.EndpointRef {
  EndpointContactUs(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'contactUs';

  _i2.Future<bool> sendContactdetails(_i3.Contacts contactData) =>
      caller.callServerEndpoint<bool>(
        'contactUs',
        'sendContactdetails',
        {'contactData': contactData},
      );
}

/// {@category Endpoint}
class EndpointProjects extends _i1.EndpointRef {
  EndpointProjects(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'projects';

  _i2.Future<List<_i4.Projects>> getProjects() =>
      caller.callServerEndpoint<List<_i4.Projects>>(
        'projects',
        'getProjects',
        {},
      );

  _i2.Future<bool> addProjects(_i4.Projects projects) =>
      caller.callServerEndpoint<bool>(
        'projects',
        'addProjects',
        {'projects': projects},
      );

  _i2.Future<bool> deleteProject(int projectId) =>
      caller.callServerEndpoint<bool>(
        'projects',
        'deleteProject',
        {'projectId': projectId},
      );

  _i2.Future<bool> deleteAllProjects() => caller.callServerEndpoint<bool>(
        'projects',
        'deleteAllProjects',
        {},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
  }) : super(
          host,
          _i5.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    contactUs = EndpointContactUs(this);
    projects = EndpointProjects(this);
  }

  late final EndpointContactUs contactUs;

  late final EndpointProjects projects;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'contactUs': contactUs,
        'projects': projects,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
