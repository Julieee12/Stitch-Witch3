using Application.Exceptions;
using Application.Interfaces;
using Application.Models;
using CloudinaryDotNet;
using CloudinaryDotNet.Actions;
using Microsoft.Extensions.Options;

namespace Application.Services;

public class CloudinaryService(IOptions<AppOptions> options) : IMediaHostingService
{
    private readonly Cloudinary _cloudinary = new(options.Value.MediaHostingUrl)
    {
        Api =
        {
            Secure = true
        }
    };
    private readonly String _validImageFormats = "JPEG, PNG, GIF, BMP, TIFF";

    public async Task<string> UploadMedia(string base64Image)
    {
        var imageStream = DecodeBase64ImageToStream(base64Image);
        
        var uploadParams = InstantiateBasicImageUploadParams(imageStream);
        IsResourceTypeValidImageFormat(uploadParams.ResourceType);
        
        var uploadResult = await _cloudinary.UploadAsync(uploadParams);

        return uploadResult.Url.ToString();
    }

    public void DeleteMedia(string url)
    {
        var splitUrlBySlash = url.Split("/");
        var imagePartWithExtension = splitUrlBySlash[^1];
        var imagePartSplitByExtension = imagePartWithExtension.Split(".");
        var imagePublicIdOnly = imagePartSplitByExtension[0];
        
        _cloudinary.DeleteResources(imagePublicIdOnly);
    }

    private Stream DecodeBase64ImageToStream(string base64Image)
    {
        var convertedImage = Convert.FromBase64String(base64Image);
        var memoryStream = new MemoryStream(convertedImage);

        return memoryStream;
    }

    private void IsResourceTypeValidImageFormat(ResourceType typeOfResource)
    {
        // Check if file is a supported image format.
        if (typeOfResource != ResourceType.Image)
        {
            throw new InvalidImageFormatException($"Only ${_validImageFormats} are supported image formats");
        }
    }

    private ImageUploadParams InstantiateBasicImageUploadParams(Stream imageStream)
    {
        var uploadParams = new ImageUploadParams()
        {
            // Instantiate upload params with a unique GUID file name.
            File = new FileDescription(Guid.NewGuid().ToString(), imageStream),
            UseFilename = true,
            UniqueFilename = true,
            Overwrite = true
        };
        
        return uploadParams;
    }
}