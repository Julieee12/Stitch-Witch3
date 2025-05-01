using System.ComponentModel.DataAnnotations;
using Application.Exceptions;
using Application.Models;

namespace Application.Extentions;

public static class AppOptionsExtentions
{
    /*
     * This IServiceCollection extension method sets up
     * the app options configurations
     */
    public static AppOptions AddAppOptions(this IServiceCollection services, IConfiguration configuration)
    {
        var appOptions = new AppOptions();
        configuration.GetSection("AppOptions").Bind(appOptions);

        //Configures our AppOptions
        services.Configure<AppOptions>(configuration.GetSection("AppOptions"));

        //Makes sure that all required fields in the AppOptions are set properly
        ICollection<ValidationResult> results = new List<ValidationResult>();
        var validated = Validator.TryValidateObject(appOptions, new ValidationContext(appOptions), results, true);
        if (!validated)
            throw new AppOptionsException(
                $"Failed to validate AppOptions. Do you have all environment variables/secrets set properly?" +
                $"{string.Join(", ", results.Select(r => r.ErrorMessage))}");

        return appOptions;
    }
}

