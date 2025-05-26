using Application.Infrastructure.Postgres;
using Application.Interfaces;
using Core.Domain.Entities;
using Infrastructure.Postgres.Scaffolding;
using Microsoft.EntityFrameworkCore;

namespace Infrastructure.Postgres.repositories;

public class ItemRepository(StitchWitchDbContext context, IMediaHostingService mediaHostingService) : IItemRepository
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
    
    public async Task AddItem(Item item)
    {
        if (item.Picurl != null)
        {
            item.Picurl = await mediaHostingService.UploadMedia(item.Picurl);
        }
        
        await context.Items.AddAsync(item);
        await context.SaveChangesAsync();
    }
    
    public async Task<Item> UpdateItem(Item item)
    {
        var oldItem = context.Items
            .AsNoTracking()
            .FirstOrDefault((oldItem) => oldItem.Id == item.Id);
        
        // The item doesn't exist.
        if (oldItem == null) throw new Exception("Item not found");

        item.Picurl = await mediaHostingService.UpdateDeleteNewAndOldImage(oldItem.Picurl, item.Picurl);
        
        context.Items.Update(item);
        await context.SaveChangesAsync();
        return item;
    }
    
    public async Task DeleteItem(string id)
    {
        Item item = context.Items.Where(i => i.Id == id).SingleOrDefault();

        if (item == null) throw new Exception("Item not found... lol");
        
        // Delete the image if it has been set
        if (item.Picurl != null) mediaHostingService.DeleteMedia(item.Picurl); 
        
        context.Items.Remove(item!);
        await context.SaveChangesAsync();
    }
    
    /////////////////// item TAGS /////////////////////
    
    public async Task<List<ItemTag>> GetAllItemTags()
    {
        return await context.ItemTags.ToListAsync();
    }
    
    public async Task<List<ItemTag>> GetTagsForItem(string itemId)
    {
        return await context.ItemTags.Where(t => t.Itemid == itemId).ToListAsync();
    }
    
    public async Task AddItemTag(ItemTag item)
    {
        await context.ItemTags.AddAsync(item);
        await context.SaveChangesAsync();
    }
    
    public async Task DeleteItemTag(string itemId, string tagId)
    {
        ItemTag itemTagToDelete = context.ItemTags.Where(t => t.Itemid == itemId && t.Tagid == tagId).SingleOrDefault();
        context.ItemTags.Remove(itemTagToDelete);
        await context.SaveChangesAsync();
    }
    
}