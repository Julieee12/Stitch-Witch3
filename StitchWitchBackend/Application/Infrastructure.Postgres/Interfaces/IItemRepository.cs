using Core.Domain.Entities;

namespace Application.Infrastructure.Postgres;

public interface IItemRepository
{
    public Task<List<Item>> GetAllItems();

    public Task<Item> GetItemById(string id);
    public Task AddItem(Item item);

    public Task<Item> UpdateItem(Item item);

    public Task DeleteItem(string id);
}