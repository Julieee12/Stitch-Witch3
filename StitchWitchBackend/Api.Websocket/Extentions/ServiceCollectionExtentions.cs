using WebSocketBoilerplate;

namespace Api.Websocket.Extentions;

public static class ServiceCollectionExtentions
{
    public static IServiceCollection AddWebsocketApiServices(this IServiceCollection services)
    {
        services.AddEndpointsApiExplorer();
        var assembly = typeof(ServiceCollectionExtentions).Assembly;
        
        // Adds websocket event handlers
        services.InjectEventHandlers(assembly);
        
        return services;
    }
}