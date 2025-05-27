using Application.Models.DTOs;
using Core.Domain.Entities;

namespace Application.Infrastructure.Postgres.Interfaces;

public interface IProjectRepository
{
    public Task<ProjectDto> CreateNewProjectAsync(CreateNewProjectDto createNewProjectDto);

    public Task<List<ProjectDto>> GetAllProjectsAsync();

    public Task DeleteProjectAsync(string projectId);

    public Task<ProjectDto> UpdateProjectAsync(UpdateProjectDto updateProjectDto);

    public Task<List<ProjectDtoWithTags>> GetAllProjectsWithTags();

}