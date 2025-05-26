namespace Application.Interfaces;

public interface IMediaHostingService
{
    // This interface should return the uploaded image URL in the form of a string.
    public Task<string> UploadMedia(string base64Image);

    public void DeleteMedia(string url);
    
    /*
     * This is used to automatically handle logic when
     * updating an image url of an object.
     *
     * Example:
     * An object already has an image specified, but the client wants
     * to change it to a new one.
     * In this case the old image needs to be deleted from hosting,
     * and the new one needs to be updated.
     */
    Task<string?> UpdateDeleteNewAndOldImage(string? oldImageUrl, string? newImageUrl);
}