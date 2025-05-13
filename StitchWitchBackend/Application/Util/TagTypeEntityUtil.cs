using Application.Models.DTOs;
using Core.Domain.Entities;

namespace Application.Utility;

public class TagTypeEntityUtil
{
    public static TagDto TagTypeToTagDto(TagType tagType)
    {
        return new TagDto
        {
            TagTypeid = tagType.Id,
            TypeName = tagType.Typename
        };
    }

    public static List<TagDto> TagTypesToTagDtos(List<TagType> tagTypes)
    {
        var tagDtos = new List<TagDto>();

        foreach (var tagType in tagTypes)
        {
            var tagDto = TagTypeToTagDto(tagType);
            
            tagDtos.Add(tagDto);
        }

        return tagDtos;
    }

    public static List<TagType> TagDtosToTagTypes(List<TagDto> tagDtos)
    {
        var tagTypes = new List<TagType>();

        foreach (var tagDto in tagDtos)
        {
            var tagType = TagDtoToTagType(tagDto);
            
            tagTypes.Add(tagType);
        }

        return tagTypes;
    }
    
    public static TagType TagDtoToTagType(TagDto tagDto)
    {
        return new TagType
        {
            Id = tagDto.TagTypeid,
            Typename = tagDto.TypeName
        };
    }
}