using Application.Extentions;
using Application.Models;
using Microsoft.Extensions.Options;

namespace Startup;

public class Program
{
    public static async Task Main(string[] args)
    {
        var builder = WebApplication.CreateBuilder(args);
        
        ConfigureServices(builder.Services, builder.Configuration);
        
        var app = builder.Build();

        await ConfigureMiddleware(app);

        await app.RunAsync();
    }
    
    private static void ConfigureServices(IServiceCollection services, IConfiguration configuration)
    {
        var appOptions = services.AddAppOptions(configuration);

        // services.RegisterApplicationServices();

        // services.AddDataSourceAndRepositories();
        // services.AddWebsocketInfrastructure();

        // services.RegisterWebsocketApiServices();
        // services.RegisterRestApiServices();
        /*services.AddOpenApiDocument(conf =>
        {
            conf.DocumentProcessors.Add(new AddAllDerivedTypesProcessor());
            conf.DocumentProcessors.Add(new AddStringConstantsProcessor());
        });*/
        //services.AddSingleton<IProxyConfig, ProxyConfig>();
    }
    
    public static async Task ConfigureMiddleware(WebApplication app)
    {
        var appOptions = app.Services.GetRequiredService<IOptionsMonitor<AppOptions>>().CurrentValue;

        /*using (var scope = app.Services.CreateScope())
        {
            if (appOptions.Seed)
                await scope.ServiceProvider.GetRequiredService<Seeder>().Seed();
        }*/


        app.Urls.Clear();
        //Sets the address and port for a REST API
        app.Urls.Add($"http://0.0.0.0:{appOptions.REST_PORT}");
        /*app.Services.GetRequiredService<IProxyConfig>()
            .StartProxyServer(appOptions.PORT, appOptions.REST_PORT, appOptions.WS_PORT);*/

        //app.ConfigureRestApi();
        //await app.ConfigureWebsocketApi(appOptions.WS_PORT);


        //app.MapGet("Acceptance", () => "Accepted");

        //app.UseOpenApi(conf => { conf.Path = "openapi/v1.json"; });

        //var document = await app.Services.GetRequiredService<IOpenApiDocumentGenerator>().GenerateAsync("v1");
        //var json = document.ToJson();
        //await File.WriteAllTextAsync("openapi.json", json);

        //app.GenerateTypeScriptClient("/../../client/src/generated-client.ts").GetAwaiter().GetResult();
    }
}