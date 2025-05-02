using Application.Models.DTOs;
using Core.Domain.Entities;

namespace Application.Infrastructure.Postgres.Interfaces;

public interface IProjectRepository
{
    public Task<ProjectDto> CreateNewProjectAsync(CreateNewProjectDto createNewProjectDto);
}