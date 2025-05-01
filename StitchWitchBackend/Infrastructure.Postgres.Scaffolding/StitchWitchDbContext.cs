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

    public virtual DbSet<Tag> Tags { get; set; }

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
            entity.Property(e => e.Tag).HasColumnName("tag");

            entity.HasOne(d => d.TagNavigation).WithMany(p => p.Items)
                .HasForeignKey(d => d.Tag)
                .HasConstraintName("item_tags_id_fk");
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
            entity.Property(e => e.Tag).HasColumnName("tag");
            entity.Property(e => e.Time).HasColumnName("time");
            entity.Property(e => e.Yarn).HasColumnName("yarn");

            entity.HasOne(d => d.TagNavigation).WithMany(p => p.Projects)
                .HasForeignKey(d => d.Tag)
                .HasConstraintName("project_tags_id_fk");
        });

        modelBuilder.Entity<Tag>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("tags_pk");

            entity.ToTable("tags");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Name).HasColumnName("name");
            entity.Property(e => e.Typeid).HasColumnName("typeid");

            entity.HasOne(d => d.Type).WithMany(p => p.Tags)
                .HasForeignKey(d => d.Typeid)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("tags_tag type_id_fk");
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
