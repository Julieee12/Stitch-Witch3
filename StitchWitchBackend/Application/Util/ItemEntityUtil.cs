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
            Tag = updateItemDto.Tag,
            Picurl = updateItemDto.Picurl
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
            Tag = addItemDto.Tag,
            Picurl = addItemDto.Picurl
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
            Tag = item.Tag,
            Picurl = item.Picurl
        };

        return itemDto;
    }
}