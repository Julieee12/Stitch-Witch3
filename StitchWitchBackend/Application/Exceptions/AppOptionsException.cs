namespace Application.Exceptions;

/*
 * This exception is used to easily identify when something
 * goes wrong in setting up the app options
 */
public class AppOptionsException : Exception
{
    public AppOptionsException()
    {
    }

    public AppOptionsException(string? message) : base(message)
    {
    }

    public AppOptionsException(string? message, Exception? innerException) : base(message, innerException)
    {
    }
}