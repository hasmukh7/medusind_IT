using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace MovieProject.Models
{
    public class MoviesContext : DbContext
    {
        public MoviesContext():base("name=MoviesDatabase")
        {

        }

        //add the this dbsets for the corresponding model classes
        public DbSet<Movie> Movies { get; set; }
    }
}