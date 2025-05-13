using Application.Infrastructure.Postgres.Interfaces;
using Application.Models.DTOs;
using Application.Utility;
using Core.Domain.Entities;
using Infrastructure.Postgres.Scaffolding;
using Microsoft.EntityFrameworkCore;

namespace Infrastructure.Postgres.repositories;

public class ProjectRepository(StitchWitchDbContext context) : IProjectRepository
{
    public async Task<ProjectDto> CreateNewProjectAsync(CreateNewProjectDto createNewProjectDto)
    {
        // Convert the dto to a project
        // And add it to the database
        var projectToCreate = ProjectEntityUtil
            .CreateNewProjectDtoToProject(createNewProjectDto, Guid.NewGuid().ToString());
        
        var projectResult = await context.Projects.AddAsync(projectToCreate);
        
        await context.SaveChangesAsync();

        // Convert to ProjectDto and return it
        var createdProject = projectResult.Entity;

        var projectDto = ProjectEntityUtil.ProjectToProjectDto(createdProject);
        
        return projectDto;
    }

    public async Task<List<ProjectDto>> GetAllProjectsAsync()
    {
        var allProjects = await context.Projects
            .ToListAsync();

        var projectDtos = ProjectEntityUtil.ProjectsToProjectDtos(allProjects);
        
        return projectDtos;
    }

    public async Task DeleteProjectAsync(string projectId)
    {
        var projectToDelete = await context.Projects
            .Where(project => project.Id == projectId)
            .SingleOrDefaultAsync();

        if (projectToDelete == null) throw new Exception("Project not found");
        
        context.Projects.Remove(projectToDelete);
        
        await context.SaveChangesAsync();
    }

    public async Task<ProjectDto> UpdateProjectAsync(UpdateProjectDto updateProjectDto)
    {
        var projectToUpdate = ProjectEntityUtil.UpdateProjectDtoToProject(updateProjectDto);

        var updatedProject = context.Projects.Update(projectToUpdate).Entity;

        await context.SaveChangesAsync();
        
        var projectDto = ProjectEntityUtil.ProjectToProjectDto(updatedProject);
        
        return projectDto;
    }
}