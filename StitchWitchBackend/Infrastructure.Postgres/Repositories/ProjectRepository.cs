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
        var projectToCreate = ProjectEntityUtil.CreateNewProjectDtoToProject(createNewProjectDto);
        projectToCreate.Id = Guid.NewGuid().ToString();
        
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
    
    public async Task<List<ProjectDtoWithTags>> GetAllProjectsWithTags()
    {

        return await context.Projects.GroupJoin(
            context.ProjectTags,
            project => project.Id,
            projectTag => projectTag.Projectid,
            (proj, projTag ) => new ProjectDtoWithTags()
            {
                Id = proj.Id,
                Name = proj.Name,
                Description = proj.Description,
                Picurl = proj.Picurl,
                Stitch = proj.Stitch,
                Row = proj.Row,
                Yarn = proj.Yarn,
                Hook = proj.Hook,
                Time = proj.Time,
                Tags = ItemEntityUtil.TagTypeListToTagDtoList(projTag.Select(p => p.Tag).ToList()) ,
            }).Select(p => new ProjectDtoWithTags()
        {
            Id = p.Id,
            Name = p.Name,
            Description = p.Description,
            Picurl = p.Picurl,
            Stitch = p.Stitch,
            Row = p.Row,
            Yarn = p.Yarn,
            Hook = p.Hook,
            Time = p.Time,
            Tags = p.Tags,
        }).ToListAsync();
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
    
    
    public async Task AddTagToProject(String projId, String typeId)
    {
        ProjectTag newTag = new ProjectTag()
        {
            Projectid = projId,
            Tagid = typeId,
        };
        await context.ProjectTags.AddAsync(newTag);
        await context.SaveChangesAsync();
    }
    
    public async Task RemoveTagFromProject(ProjectTag tag)
    {
        context.ProjectTags.Remove(tag);
        await context.SaveChangesAsync();
    }
    
}