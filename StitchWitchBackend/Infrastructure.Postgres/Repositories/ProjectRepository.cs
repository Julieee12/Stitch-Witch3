using Application.Infrastructure.Postgres.Interfaces;
using Application.Models.DTOs;
using Application.Utility;
using Core.Domain.Entities;
using Infrastructure.Postgres.Scaffolding;

namespace Infrastructure.Postgres.repositories;

public class ProjectRepository(StitchWitchDbContext context) : IProjectRepository
{
    public Task<ProjectDto> CreateNewProjectAsync(CreateNewProjectDto createNewProjectDto)
    {
        var projectToCreate = ProjectEntityUtil.CreateNewProjectDtoToProject(createNewProjectDto);
        projectToCreate.Id = Guid.NewGuid().ToString();
        
        var createdProject = context.Projects.Add(projectToCreate).Entity;

        var projectDto = ProjectEntityUtil.ProjectToProjectDto(createdProject);
        
        return Task.FromResult(projectDto);
    }
}