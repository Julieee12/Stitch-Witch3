import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:stitch_witch_aid/projects/projects-model.dart';
import 'package:stitch_witch_aid/projects/projects-state.dart';
import 'package:uuid/uuid.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../events/events.dart';
import '../tag/all-tags.dart';


class ProjectBloc extends Bloc<BaseEvent, ProjectsState> {
  final WebSocketChannel _channel;
  late StreamSubscription _channelSubscription;

  ProjectBloc({required channel})
      : _channel = channel,
        super(ProjectsState.empty()) {
    ////////////////////// Handlers for client events //////////////////////
    on<ClientGetsAllProjectsEvent>(_onClientEvent);
    on<ClientCreatesNewProjectEvent>(_onClientEvent);
    on<ClientDeletesProjectEvent>(_onClientEvent);
    on<ClientUpdatesProjectEvent>(_onClientEvent);
    on<ClientGetsAllProjectsWithTagsEvent>(_onClientEvent);
    on<ClientGetsAllTagsEvent>(_onClientEvent);
    on<ClientAddsTagToProjectEvent>(_onClientEvent);
    on<ClientDeletesTagFromProjectEvent>(_onClientEvent);


    ////////////////////// Handlers for server events //////////////////////
    on<ServerSendsAllProjectsEvent>(_onServerSendsAllProjects);
    on<ServerSendsCreatedProjectEvent>(_onServerSendsCreatedProject);
    on<ServerDeletedProjectEvent>(_onServerDeletedProject);
    on<ServerSendsUpdatedProjectEvent>(_onServerUpdatedProject);
    on<ServerSendsAllProjectsWithTagsEvent>(_onServerSendsAllProjectsWithTags);
    on<ServerSendsAllTagsEvent>(_onServerSendsAllTags);
    on<ServerSendsErrorMessageEvent>(_onServerSendsErrorMessage);
    on<ServerDeletedTagFromProjectEvent>(_onServerDeletedProjectTag);
    on<ServerSendsCreatedProjectTagEvent>(_onServerSendsCreatedProjectTag);


    ///////////////////// Feed deserialized events from server into this bloc //////////////////////
    _channelSubscription = _channel.stream
        .map((event) => BaseEventMapper.fromJson(event))
        .listen(add, onError: addError);
  }

  @override
  Future<void> close() async {
    // Remember to cancel the subscription when no longer needed.
    _channelSubscription.cancel();
    // And close the socket
    _channel.sink.close();
    super.close();
  }

  ///////////////////// Sending client events to server /////////////////////
  FutureOr<void> _onClientEvent(BaseEvent event, Emitter<ProjectsState> emit) {
    _channel.sink.add(event.toJson());
  }

  void clientGetsAllProjects() {
    add(ClientGetsAllProjectsEvent(
        eventType: ClientGetsAllProjectsEvent.name,
        requestId: Uuid().v4()));
  }

  void clientGetsAllProjectsWithTags() {
    print("trying to get all projects with tags");
    add(ClientGetsAllProjectsWithTagsEvent(
        eventType: ClientGetsAllProjectsWithTagsEvent.name,
        requestId: Uuid().v4()));
  }

  void clientCreatesNewProject(CreateNewProjectDto dto) {
    add(ClientCreatesNewProjectEvent(
        createNewProjectDto: dto,
        eventType: ClientCreatesNewProjectEvent.name,
        requestId: Uuid().v4()));
  }

  void clientDeletesProject(String projectId) {
    add(ClientDeletesProjectEvent(
        projectId: projectId,
        eventType: ClientDeletesProjectEvent.name,
        requestId: Uuid().v4()));
  }

  void clientUpdatesProject(UpdateProjectDto dto) {
    add(ClientUpdatesProjectEvent(
        updateProjectDto: dto,
        eventType: ClientUpdatesProjectEvent.name,
        requestId: Uuid().v4()));
  }

  void clientGetsAllTags(){
    print("= = = = = = = =  G E T T I N G   A L L   T A G S  = = = = = = = = = = = =");
    add(ClientGetsAllTagsEvent(
      eventType: ClientGetsAllTagsEvent.name,
      requestId: Uuid().v4(),
    ));
  }

  void clientAddsTagToProject(String projId, String tagId,) {
    add(ClientAddsTagToProjectEvent(
        projectId: projId,
        typeId: tagId,
        eventType: ClientAddsTagToProjectEvent.name,
        requestId: Uuid().v4()));
  }
  void clientDeletesTagFromProject(String projId, String tagId,) {
    add(ClientDeletesTagFromProjectEvent(
        projectId: projId,
        typeId: tagId,
        eventType: ClientDeletesTagFromProjectEvent.name,
        requestId: Uuid().v4()));
  }


  ///////////////////// Receiving server events /////////////////////
  FutureOr<void> _onServerSendsAllProjects(
      ServerSendsAllProjectsEvent event,
      Emitter<ProjectsState> emit) {
    var stateCopy = ProjectsState.empty();

    stateCopy.projects.addAll(event.projects);
    stateCopy.filteredProjects.addAll(event.projects);

    emit(stateCopy);
  }

  FutureOr<void> _onServerSendsAllProjectsWithTags(
      ServerSendsAllProjectsWithTagsEvent event,
      Emitter<ProjectsState> emit) {
    print("RECIEVED PROJECTS WITH TAGS !!");
    state.projects.clear();
    state.projects.addAll(event.projectsWithTags);

    state.filteredProjects.clear();
    state.filteredProjects.addAll(event.projectsWithTags);

    emit(state);
  }

  FutureOr<void> _onServerSendsCreatedProject(
      ServerSendsCreatedProjectEvent event,
      Emitter<ProjectsState> emit) {
    var stateCopy = ProjectsState(projects: [...state.projects], filteredProjects: [...state.filteredProjects]);

    stateCopy.projects.add(event.projectDto);
    stateCopy.filteredProjects.add(event.projectDto);

    emit(stateCopy);
  }

  FutureOr<void> _onServerDeletedProject(
      ServerDeletedProjectEvent event,
      Emitter<ProjectsState> emit) {
    var stateCopy = ProjectsState(projects: [...state.projects], filteredProjects: [...state.filteredProjects]);

    stateCopy.projects.removeWhere((project) => project.id == event.projectId);
    stateCopy.filteredProjects.removeWhere((project) => project.id == event.projectId);

    emit(stateCopy);
  }

  FutureOr<void> _onServerUpdatedProject(
      ServerSendsUpdatedProjectEvent event,
      Emitter<ProjectsState> emit) {
    var stateCopy = ProjectsState(projects: [...state.projects], filteredProjects: [...state.filteredProjects]);

    var indexOfProjectToUpdate = stateCopy.projects.indexWhere((project) => project.id == event.projectDto.id);

    stateCopy.projects[indexOfProjectToUpdate] = event.projectDto;
    stateCopy.filteredProjects[indexOfProjectToUpdate] = event.projectDto;


    emit(stateCopy);
  }

  FutureOr<void> _onServerSendsAllTags(
      ServerSendsAllTagsEvent event,
      Emitter<ProjectsState> emit) {
    print("SERVER HAS SENT ALL TAGS !!!!!!!");

    TagVariables.allTags = event.allTags;

    TagVariables.allTags.forEach((tag) {
      print(tag.typename);
    });

  }

  FutureOr<void> _onServerSendsCreatedProjectTag(
      ServerSendsCreatedProjectTagEvent event,
      Emitter<ProjectsState> emit) {

    print("recieved created project tag");
    var stateCopy = ProjectsState(projects: [...state.projects], filteredProjects: [...state.filteredProjects]);

    int indexOfItemToUpdate = stateCopy.projects.indexWhere((item) => item.id == event.projectId);

    int indexOfFilteredProjToUpdate = stateCopy.filteredProjects.indexWhere((proj) => proj.id == event.projectId);


    stateCopy.projects[indexOfItemToUpdate].tags.add(event.tag);
    //stateCopy.filteredProjects[indexOfFilteredProjToUpdate].tags.add(event.tag);

    emit(stateCopy);

  }

  FutureOr<void> _onServerDeletedProjectTag(
      ServerDeletedTagFromProjectEvent event,
      Emitter<ProjectsState> emit) {

    var stateCopy = ProjectsState(projects: [...state.projects], filteredProjects: [...state.filteredProjects]);

    int indexOfItemToUpdate = stateCopy.projects.indexWhere((project) => project.id == event.projectId);

    int indexOfFilteredProjToUpdate = stateCopy.filteredProjects.indexWhere((proj) => proj.id == event.projectId);



    stateCopy.projects[indexOfItemToUpdate].tags.removeWhere((tag) => tag.tagTypeId == event.tagId);
    stateCopy.filteredProjects[indexOfFilteredProjToUpdate].tags.removeWhere((tag) => tag.tagTypeId == event.tagId);

    emit(stateCopy);

  }


  FutureOr<void> _onServerSendsErrorMessage(
      ServerSendsErrorMessageEvent event,
      Emitter<ProjectsState> emit) {
    // TODO let the user know something went wrong
  }
}