using Application.Models.DTOs;
using Core.Domain.Entities;

namespace Application.Utility;

public class ItemEntityUtil
{
    public static Item UpdateItemDtoToItem(UpdateItemDto updateItemDto)
    {
        Item item = new Item()
        {
            Id = updateItemDto.Id,
            Name = updateItemDto.Name,
            Description = updateItemDto.Description,
            Picurl = updateItemDto.Image
        };

        return item;
    }
    
    public static Item CreateNewItemDtoToItem(CreateNewItemDto addItemDto)
    {
        Item item = new Item()
        {
            Id = Guid.NewGuid().ToString(),
            Name = addItemDto.Name,
            Description = addItemDto.Description,
            Picurl = addItemDto.Image
        };

        return item;
    }
    
    public static ItemDto ItemToItemDto(Item item)
    {
        ItemDto itemDto = new ItemDto()
        {
            Id = item.Id,
            Name = item.Name,
            Description = item.Description,
            Picurl = item.Picurl
        };

        return itemDto;
    }
    
    public static List<ItemDto> ItemListToItemDtoList(List<Item> items)
    {
        List<ItemDto> returnList = new List<ItemDto>();
        foreach (var item in items)
        {
            ItemDto itemDto = new ItemDto()
            {
                Id = item.Id,
                Name = item.Name,
                Description = item.Description,
                Picurl = item.Picurl
            };
            returnList.Add(itemDto);
        }
        

        return returnList;
    }
    
    
    //ITEM TAGS
    public static TagDto TagTypeToTagDto(TagType tag)
    {
        TagDto dto = new TagDto()
        {
            TagTypeId = tag.Id,
            Typename = tag.Typename,
        };

        return dto;
    }
    
    public static List<TagDto> TagTypeListToTagDtoList(List<TagType> tags)
    {
        List<TagDto> returnList = new List<TagDto>();
        foreach (var tagType in tags)
        {
            TagDto dto = new TagDto()
            {
                TagTypeId = tagType.Id,
                Typename = tagType.Typename,
            };
            returnList.Add(dto);
        }
        
        return returnList;
    }
    
    
    
}