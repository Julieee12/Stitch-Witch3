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
            Tag = null, //TODO this needs to be changed once tags are properly implemented
            Stitch = 0,
            Row = 0,
            Picurl = createNewProjectDto.Picurl,
            Description = createNewProjectDto.Description,
            Yarn = createNewProjectDto.Yarn,
            Hook = createNewProjectDto.Hook,
            Time = (decimal?)0.0
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

    public static List<ProjectDto> ProjectsToProjectDtos(List<Project> projects)
    {
        return projects.Select(project => ProjectToProjectDto(project)).ToList();
    }

    public static Project UpdateProjectDtoToProject(UpdateProjectDto updateProjectDto)
    {
        var project = new Project
        {
            Id = updateProjectDto.Id,
            Name = updateProjectDto.Name,
            Tag = updateProjectDto.Tag,
            Stitch = updateProjectDto.Stitch,
            Row = updateProjectDto.Row,
            Picurl = updateProjectDto.Picurl,
            Description = updateProjectDto.Description,
            Yarn = updateProjectDto.Yarn,
            Hook = updateProjectDto.Hook,
            Time = updateProjectDto.Time
        };

        return project;
    }
}