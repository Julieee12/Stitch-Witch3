/*namespace Infrastructure.Postgres.repositories;

public class ItemRepository(DbContext context)
{
    public async Task<List<Item>> GetAllItems()
    {
        return await context.Items.ToListAsync();
    }
    
    public async Task<Item> GetItemById(string id)
    {
        return await context.Items.Where(i => i.id == id).ToListAsync();
    }
    
    public async Task<Item> AddItem(Item item)
    {
        await context.Items.AddAsync(item);
        await context.saveChangesAsync();
        return item;
    }
    
    public async Task<Item> UpdateItem(Item item)
    {
        await context.Items.UpdateAsync(item);
        await context.saveChangesAsync();
        return item;
    }
    
    public async void DeleteItem(string id)
    {
        await context.Items.RemoveAsync(item);
        await context.saveChangesAsync();
    }
    
}*/