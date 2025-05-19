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

    public virtual DbSet<ItemTag> ItemTags { get; set; }

    public virtual DbSet<Project> Projects { get; set; }

    public virtual DbSet<ProjectTag> ProjectTags { get; set; }

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
        });

        modelBuilder.Entity<ItemTag>(entity =>
        {
            entity.HasKey(e => e.Itemid).HasName("item tag_pk");

            entity.ToTable("item tag");

            entity.Property(e => e.Itemid).HasColumnName("itemid");
            entity.Property(e => e.Tagid).HasColumnName("tagid");

            entity.HasOne(d => d.Item).WithOne(p => p.ItemTag)
                .HasForeignKey<ItemTag>(d => d.Itemid)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("item tag_item_id_fk");

            entity.HasOne(d => d.Tag).WithMany(p => p.ItemTags)
                .HasForeignKey(d => d.Tagid)
                .HasConstraintName("item tag_tag type_id_fk");
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
        });

        modelBuilder.Entity<ProjectTag>(entity =>
        {
            entity.HasKey(e => e.Projectid).HasName("project tag_pk");

            entity.ToTable("project tag");

            entity.Property(e => e.Projectid).HasColumnName("projectid");
            entity.Property(e => e.Tagid).HasColumnName("tagid");

            entity.HasOne(d => d.Project).WithOne(p => p.ProjectTag)
                .HasForeignKey<ProjectTag>(d => d.Projectid)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("project tag_project_id_fk");

            entity.HasOne(d => d.Tag).WithMany(p => p.ProjectTags)
                .HasForeignKey(d => d.Tagid)
                .HasConstraintName("project tag_tag type_id_fk");
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
