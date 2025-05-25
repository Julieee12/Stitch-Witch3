namespace Application.Interfaces;

public interface IMediaHostingService
{
    // This interface should return the uploaded image URL in the form of a string.
    public Task<string> UploadMedia(string base64Image);
}