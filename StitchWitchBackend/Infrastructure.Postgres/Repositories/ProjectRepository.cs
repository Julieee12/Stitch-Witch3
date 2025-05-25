using Application.Infrastructure.Postgres.Interfaces;
using Application.Interfaces;
using Application.Models.DTOs;
using Application.Utility;
using Core.Domain.Entities;
using Infrastructure.Postgres.Scaffolding;
using Microsoft.EntityFrameworkCore;

namespace Infrastructure.Postgres.repositories;

public class ProjectRepository(StitchWitchDbContext context, IMediaHostingService mediaHostingService) : IProjectRepository
{
    public async Task<ProjectDto> CreateNewProjectAsync(CreateNewProjectDto createNewProjectDto)
    {
        var projectToCreate = ProjectEntityUtil.CreateNewProjectDtoToProject(createNewProjectDto);
        projectToCreate.Id = Guid.NewGuid().ToString();
        
        if (createNewProjectDto.Image != null)
        {
            projectToCreate.Picurl = await mediaHostingService.UploadMedia(createNewProjectDto.Image);
        }
        
        var result = await context.Projects.AddAsync(projectToCreate);
        await context.SaveChangesAsync();

        var createdProject = result.Entity;

        var projectDto = ProjectEntityUtil.ProjectToProjectDto(createdProject);
        
        return projectDto;
    }

    public async Task<List<ProjectDto>> GetAllProjectsAsync()
    {
        var allProjects = await context.Projects.ToListAsync();

        var projectDtos = ProjectEntityUtil.ProjectsToProjectDtos(allProjects);
        
        return projectDtos;
    }

    public async Task DeleteProjectAsync(string projectId)
    {
        var projectToDelete = await context.Projects
            .Where(project => project.Id == projectId)
            .SingleOrDefaultAsync();

        if (projectToDelete == null) throw new Exception("Project not found");
        
        // Delete the image if it has been set
        if (projectToDelete.Picurl != null) mediaHostingService.DeleteMedia(projectToDelete.Picurl); 
        
        context.Projects.Remove(projectToDelete);
        
        await context.SaveChangesAsync();
    }

    public async Task<ProjectDto> UpdateProjectAsync(UpdateProjectDto updateProjectDto)
    {
        var oldProject = context.Projects
            .AsNoTracking()
            .FirstOrDefault((project) => project.Id == updateProjectDto.Id);
        
        // The project doesn't exist.
        if (oldProject == null) throw new Exception("Project not found");
        
        var projectToUpdate = ProjectEntityUtil.UpdateProjectDtoToProject(updateProjectDto);

        await UpdateAndDeleteProjectImageAsync(oldProject, projectToUpdate);
        
        var updatedProject = context.Projects.Update(projectToUpdate).Entity;

        await context.SaveChangesAsync();
        
        var projectDto = ProjectEntityUtil.ProjectToProjectDto(updatedProject);
        
        return projectDto;
    }

    /*
     * This method takes in an old and new version of a project,
     * and determines if their images should be deleted/uploaded,
     * based on them being null and different.
     */
    private async Task UpdateAndDeleteProjectImageAsync(Project oldProject, Project newProject)
    {
        var oldImageIsNull = oldProject.Picurl == null;
        var newImageIsNull = newProject.Picurl == null;
        var oldAndNewImagesAreSame = oldProject.Picurl?.Equals(newProject.Picurl);

        if (oldAndNewImagesAreSame == true) return;
        
        if (!oldImageIsNull) mediaHostingService.DeleteMedia(oldProject.Picurl!);

        if (!newImageIsNull)
        {
            newProject.Picurl = await mediaHostingService.UploadMedia(newProject.Picurl!);
        }
    }
}