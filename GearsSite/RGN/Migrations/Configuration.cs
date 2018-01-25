namespace RGN.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;
    using RGN.Models;

    internal sealed class Configuration : DbMigrationsConfiguration<RGN.Models.ProductContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
            ContextKey = "RGN.Models.ProductContext";
        }

        protected override void Seed(RGN.Models.ProductContext context)
        {
            context.Categories.AddOrUpdate(
                new Category
                {
                    CategoryID = 1,
                    CategoryName = "Helmets",
                    Description = "Helmets; To save your head."
                },
                new Category
                {
                    CategoryID = 2,
                    CategoryName = "Gloves",
                    Description = "Gloves; To save your hand."

                },
                new Category
                {
                    CategoryID = 3,
                    CategoryName = "Apparels",
                    Description = "Apparels; They looks cool plus they save you."
                }
            );

            context.SaveChanges();
        }
    }
}
