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

        projectToUpdate.Picurl = await mediaHostingService.UpdateDeleteNewAndOldImage(oldProject.Picurl, projectToUpdate.Picurl);
        
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
    
    public async Task RemoveTagFromProject(String projectId, String tagId)
    {
        var projectTagToDelete = await 
            context.ProjectTags.Where(projTag => projTag.Projectid == projectId && projTag.Tagid == tagId).FirstOrDefaultAsync();
        
        if (projectTagToDelete == null) throw new Exception("item tag not found.");
        
        context.ProjectTags.Remove(projectTagToDelete);
        await context.SaveChangesAsync();
    }
    
}