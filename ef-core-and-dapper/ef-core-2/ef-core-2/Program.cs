using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ef_core_2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            using (var context = new MyContext())
            {
                var user = new User()
                {
                    FirstName = "Hareesh",
                    LastName = "Gadudas"
                };

                context.Add<User>(user);
                context.SaveChanges();
            }
        }
    }

    internal class MyContext : DbContext
    {
        public DbSet<Blog> Blogs { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {

            modelBuilder.Entity<AuditEntry>().ToTable("Audit");//.HasComment("Audit Table");
            
            modelBuilder.Entity<Rating>(r=> {
                r.Property(p => p.Comment).HasColumnType("varchar(200)");
            });
            
            modelBuilder.Entity<User>(u => {
                u.HasData(new User() { UserId=1, FirstName = "Hareesh", LastName = "Gadudas" });
                u.Property(p => p.DisplayName)
                    .HasComputedColumnSql("[LastName] + ' ' + [FirstName]");
            });
        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Server=(localdb)\MSSQLLocalDB;Database=BlogDB;Trusted_Connection=True;");
        }
    }


    [Table("blgs")]
    [Comment("Blogs Table")]
    public class Blog
    {
        [Column("blog_id")]
        public int BlogId { get; set; }
        [Key]
        public int Id { get; set; }

        [Column(TypeName = "varchar(200)")]
        [MaxLength(500)]
        public string Url { get; set; }

        public List<Post> Posts { get; set; }
    }

    public class Post
    {
        public int PostId { get; set; }
        
        public string Title { get; set; }

        public string Content { get; set; }

        public Blog Blog { get; set; }
    }

    public class Rating
    {
        public int RatingId { get; set; }
        public string Comment { get; set; }
    }

    public class AuditEntry
    {
        public int AuditEntryId { get; set; }
        public string Username { get; set; }
        public string Action { get; set; }
    }

    public class User
    {
        public int UserId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string DisplayName { get; set; }
    }

    //add-migration CreateSchoolDB

    //update-database –verbose
}