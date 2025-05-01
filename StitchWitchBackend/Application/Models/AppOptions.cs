using System.ComponentModel.DataAnnotations;

namespace Application.Models;

//These are a list of environment variables/secrets which must be set on startup
public class AppOptions
{
    [Required] public string DbConnectionString { get; set; } = string.Empty!;
    public int PORT { get; set; } = 8080;
    public int WS_PORT { get; set; } = 8181;
    public int REST_PORT { get; set; } = 5000;
}

