using Application.Infrastructure.Postgres;
using Application.Infrastructure.Postgres.Interfaces;
using Application.Models;
using Infrastructure.Postgres.repositories;
using Infrastructure.Postgres.Scaffolding;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;

namespace Infrastructure.Postgres.Extentions;

public static class ServiceCollectionExtentions
{
    // Connects to the chosen database from AppOptions DbConnectionString field
    public static IServiceCollection AddDataSource(this IServiceCollection services)
    {
        services.AddDbContext<StitchWitchDbContext>((service, options) =>
        {
            var provider = services.BuildServiceProvider();
            options.UseNpgsql(
                provider.GetRequiredService<IOptionsMonitor<AppOptions>>().CurrentValue.DbConnectionString);
            options.EnableSensitiveDataLogging();
        });

        return services;
    }

    // Adds repository services
    public static IServiceCollection AddRepositories(this IServiceCollection services)
    {
        //TODO add repositories here
        services.AddScoped<IItemRepository, ItemRepository>();
        services.AddScoped<IProjectRepository, ProjectRepository>();

        return services;
    }
}