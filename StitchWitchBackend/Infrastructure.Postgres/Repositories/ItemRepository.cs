using Application.Infrastructure.Postgres;
using Application.Models.DTOs;
using Application.Utility;
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
                Tags = ItemEntityUtil.TagTypeListToTagDtoList(itemTag.Select(i => i.Tag).ToList()) ,
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
    
    ///////////////////TAG STUFF!!!!!!!!///////////////////////
    
    public async Task<List<TagType>> GetAllTags()
    {
        return await context.TagTypes.ToListAsync();
    }
    
    public async Task<TagType> GetTagWithId(String id)
    {
        return await context.TagTypes.Where(t => t.Id == id).FirstOrDefaultAsync();
    }
    
    public async Task<TagType> GetTagWithName(String name)
    {
        return await context.TagTypes.Where(t => t.Typename == name).FirstOrDefaultAsync();
    }
    
    public async Task AddTagToItem(String itemId, String typeId)
    {
        ItemTag newTag = new ItemTag()
        {
            Itemid = itemId,
            Tagid = typeId,
        };
        await context.ItemTags.AddAsync(newTag);
        await context.SaveChangesAsync();
    }
    
    public async Task RemoveTagFromItem(ItemTag tag)
    {
         context.ItemTags.Remove(tag);
         await context.SaveChangesAsync();
    }
    
    
}