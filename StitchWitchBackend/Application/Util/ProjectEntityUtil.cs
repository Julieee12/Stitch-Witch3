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
            Stitch = 0,
            Row = 0,
            Picurl = createNewProjectDto.Image,
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
            Stitch = updateProjectDto.Stitch,
            Row = updateProjectDto.Row,
            Picurl = updateProjectDto.Image,
            Description = updateProjectDto.Description,
            Yarn = updateProjectDto.Yarn,
            Hook = updateProjectDto.Hook,
            Time = updateProjectDto.Time
        };

        return project;
    }
}