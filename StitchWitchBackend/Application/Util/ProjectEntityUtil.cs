using Application.Models.DTOs;
using Core.Domain.Entities;

namespace Application.Utility;

public class ProjectEntityUtil
{
    public static Project CreateNewProjectDtoToProject(CreateNewProjectDto createNewProjectDto)
    {
        var project = new Project
        {
            Name = createNewProjectDto.Name,
            Tag = createNewProjectDto.Tag,
            Stitch = createNewProjectDto.Stitch,
            Row = createNewProjectDto.Row,
            Picurl = createNewProjectDto.Picurl,
            Description = createNewProjectDto.Description,
            Yarn = createNewProjectDto.Yarn,
            Hook = createNewProjectDto.Hook,
            Time = createNewProjectDto.Time
        };

        return project;
    }

    public static ProjectDto ProjectToProjectDto(Project project)
    {
        var projectDto = new ProjectDto
        {
            Id = project.Id,
            Name = project.Name,
            Tag = project.Tag,
            Stitch = project.Stitch,
            Row = project.Row,
            Picurl = project.Picurl,
            Description = project.Description,
            Yarn = project.Yarn,
            Hook = project.Hook,
            Time = project.Time
        };

        return projectDto;
    }
}