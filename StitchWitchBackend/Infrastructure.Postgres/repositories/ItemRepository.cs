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
        return await context.Items.Where(i => i.Id == id).SingleOrDefaultAsync();
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
        context.Items.Remove(item!);
        await context.SaveChangesAsync();
    }
    
}