using Application.Models.DTOs;
using Core.Domain.Entities;

namespace Application.Infrastructure.Postgres;

public interface IItemRepository
{
    public Task<List<Item>> GetAllItems();
    public Task<List<ItemDtoWithTags>> GetAllItemsWithTags();

    public Task<Item> GetItemById(string id);
    public Task AddItem(Item item);

    public Task<Item> UpdateItem(Item item);

    public Task DeleteItem(string id);
    
    public Task<List<TagType>> GetAllTags();

    public Task<TagType> GetTagWithId(String id);

    public Task AddTagToItem(String itemId, String typeId);

    public Task RemoveTagFromItem(String itemId, String tagId);


}