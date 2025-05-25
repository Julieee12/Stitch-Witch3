namespace Application.Exceptions;

public class InvalidImageFormatException : Exception
{
    public InvalidImageFormatException()
    {
    }

    public InvalidImageFormatException(string? message) : base(message)
    {
    }
}