using Application.Infrastructure.Postgres;
using Application.Models.DTOs;
using Core.Domain.Entities;
using Infrastructure.Postgres.Scaffolding;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Internal;

namespace Infrastructure.Postgres.repositories;

public class ItemRepository(StitchWitchDbContext context) : IItemRepository
{
    public async Task<List<Item>> GetAllItems()
    {
        return await context.Items.ToListAsync();
    }
    
    public async Task<List<ItemDtoWithTags>> GetAllItemsWithTags()
    {
        
        /*var query = await (from item in context.Items
                join tag in context.ItemTags on item.Id equals tag.Itemid into gj
                from subgroup in gj.DefaultIfEmpty()
                select new ItemDtoWithTags()
                {
                    Id = item.Id,
                    Name = item.Name,
                    Description = item.Description,
                    Picurl = item.Picurl,
                    TagId = subgroup.Tagid ?? " "
                }).ToListAsync();

        return query;*/

        return await context.Items.GroupJoin(
            context.ItemTags,
            item => item.Id,
            itemTag => itemTag.Itemid,
            (item, itemTag ) => new ItemDtoWithTags()
            {
                Id = item.Id,
                Name = item.Name,
                Description = item.Description,
                Picurl = item.Picurl,
                Tags = itemTag.Select(i => i.Tag).ToList(),
            }).Select(i => new ItemDtoWithTags()
        {
            Id = i.Id,
            Name = i.Name,
            Description = i.Description,
            Picurl = i.Picurl,
            Tags = i.Tags,
        }).ToListAsync();
    }
    
    public async Task<Item> GetItemById(string id)
    {
        Item item = await context.Items.Where(i => i.Id == id).SingleOrDefaultAsync();

        if (item == null) throw new Exception("item not found");

        return item;
    }
    
    public async Task AddItem(Item item)
    {
        await context.Items.AddAsync(item);
        await context.SaveChangesAsync();
    }
    
    public async Task<Item> UpdateItem(Item item)
    {
        context.Items.Update(item);
        await context.SaveChangesAsync();
        return item;
    }
    
    public async Task DeleteItem(string id)
    {
        Item item = context.Items.Where(i => i.Id == id).SingleOrDefault();

        if (item == null) throw new Exception("Item not found... lol");
        
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