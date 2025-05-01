using Application.Infrastructure.Websocket;
using Infrastructure.Websocket.ConnectionManagers;

namespace Infrastructure.Websocket.Extentions;

public static class ServiceCollectionExtentions
{
    public static IServiceCollection AddWebsocketInfrastructure(this IServiceCollection services)
    {
        // Adds an implementation of IConnectionManager
        services.AddSingleton<IConnectionManager, WebSocketConnectionManager>();
        return services;
    }
}