using Application.Infrastructure.Postgres;
using Core.Domain.Entities;
using Infrastructure.Postgres.Scaffolding;
using Microsoft.EntityFrameworkCore;

namespace Infrastructure.Postgres.repositories;

public class ItemRepository(StitchWitchDbContext context) : IItemRepository
{
    public async Task<List<Item>> GetAllItems()
    {
        return await context.Items.ToListAsync();
    }
    
    public async Task<Item> GetItemById(string id)
    {
        Item item = await context.Items.Where(i => i.Id == id).SingleOrDefaultAsync();

        if (item == null) throw new Exception("item not found");

        return item;
    }
    
    public async Task<Item> AddItem(Item item)
    {
        await context.Items.AddAsync(item);
        await context.SaveChangesAsync();
        return item;
    }
    
    public async Task<Item> UpdateItem(Item item)
    {
        context.Items.Update(item);
        await context.SaveChangesAsync();
        return item;
    }
    
    public async void DeleteItem(string id)
    {
        Item item = context.Items.Where(i => i.Id == id).SingleOrDefault();

        if (item == null) throw new Exception("Item not found... lol");
        
        context.Items.Remove(item!);
        await context.SaveChangesAsync();
    }
    
}