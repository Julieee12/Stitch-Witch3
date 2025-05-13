using System;
using System.Collections.Generic;
using Core.Domain.Entities;
using Microsoft.EntityFrameworkCore;

namespace Infrastructure.Postgres.Scaffolding;

public partial class StitchWitchDbContext : DbContext
{
    public StitchWitchDbContext(DbContextOptions<StitchWitchDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Item> Items { get; set; }

    public virtual DbSet<Project> Projects { get; set; }

    public virtual DbSet<TagType> TagTypes { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Item>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("item_pk");

            entity.ToTable("item");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Description).HasColumnName("description");
            entity.Property(e => e.Name).HasColumnName("name");
            entity.Property(e => e.Picurl).HasColumnName("picurl");

            entity.HasMany(d => d.Tags).WithMany(p => p.Items)
                .UsingEntity<Dictionary<string, object>>(
                    "ItemTag",
                    r => r.HasOne<TagType>().WithMany()
                        .HasForeignKey("Tagid")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("item tag_tag type_id_fk"),
                    l => l.HasOne<Item>().WithMany()
                        .HasForeignKey("Itemid")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("item tag_item_id_fk"),
                    j =>
                    {
                        j.HasKey("Itemid", "Tagid").HasName("item tag_pk");
                        j.ToTable("item tag");
                        j.IndexerProperty<string>("Itemid").HasColumnName("itemid");
                        j.IndexerProperty<string>("Tagid").HasColumnName("tagid");
                    });
        });

        modelBuilder.Entity<Project>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("project_pk");

            entity.ToTable("project");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Description).HasColumnName("description");
            entity.Property(e => e.Hook).HasColumnName("hook");
            entity.Property(e => e.Name).HasColumnName("name");
            entity.Property(e => e.Picurl).HasColumnName("picurl");
            entity.Property(e => e.Row).HasColumnName("row");
            entity.Property(e => e.Stitch).HasColumnName("stitch");
            entity.Property(e => e.Time).HasColumnName("time");
            entity.Property(e => e.Yarn).HasColumnName("yarn");

            entity.HasMany(d => d.Tags).WithMany(p => p.Projects)
                .UsingEntity<Dictionary<string, object>>(
                    "ProjectTag",
                    r => r.HasOne<TagType>().WithMany()
                        .HasForeignKey("Tagid")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("project tag_tag type_id_fk"),
                    l => l.HasOne<Project>().WithMany()
                        .HasForeignKey("Projectid")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("project tag_project_id_fk"),
                    j =>
                    {
                        j.HasKey("Projectid", "Tagid").HasName("project tag_pk");
                        j.ToTable("project tag");
                        j.IndexerProperty<string>("Projectid").HasColumnName("projectid");
                        j.IndexerProperty<string>("Tagid").HasColumnName("tagid");
                    });
        });

        modelBuilder.Entity<TagType>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("tag type_pk");

            entity.ToTable("tag type");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Typename).HasColumnName("typename");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
