using Microsoft.EntityFrameworkCore;

namespace ef_core
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //UpdateStudent(1);
            //var student = GetStudent(1);
            //Console.WriteLine($"Id : {student.StudentId} and Name : {student.Name}");
            RemoveStudent(1);
        }

        static void AddStudent()
        {
            using (var context = new SchoolContext())
            {
                var std = new Student()
                {
                    Name = "S1"
                };

                context.Students.Add(std);
                context.SaveChanges();
            }
        }

        static Student GetStudent(int Id)
        {
            using (var context = new SchoolContext())
            {
                return context.Students.FirstOrDefault(x => x.StudentId == Id);
            }
        }

        static void UpdateStudent(int Id)
        {
            var student = GetStudent(Id);
            student.Name = "S2";
            using (var context = new SchoolContext())
            {

                context.Update<Student>(student);

                // or the followings are also valid
                 //context.Students.Update(student);
                //context.Attach<Student>(student).State = EntityState.Modified;
                //context.Entry<Student>(stud).State = EntityState.Modified;

                context.SaveChanges();
            }
        }

        static void RemoveStudent(int Id)
        {
            var student = GetStudent(Id);
            using (var context = new SchoolContext())
            {
                context.Remove<Student>(student);
                // or the followings are also valid
                //context.RemoveRange(student);
                //context.Students.Remove(student);
                //context.Students.RemoveRange(student);
                //context.Attach<Student>(student).State = EntityState.Deleted;
                //context.Entry<Student>(student).State = EntityState.Deleted;

                context.SaveChanges();
            }
        }

        public class Student
        {
            public int StudentId { get; set; }
            public string Name { get; set; }
        }

        public class Course
        {
            public int CourseId { get; set; }
            public string Name { get; set; }
        }

        public class Subject
        {
            public int SubjectId { get; set; }
            public string Name { get; set; }
        }

        public class SchoolContext : DbContext
        {
            public DbSet<Student> Students { get; set; }
            public DbSet<Course> Courses { get; set; }
            public DbSet<Subject> Subjects { get; set; }

            protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
            {
                optionsBuilder.UseSqlServer(@"Server=(localdb)\MSSQLLocalDB;Database=SchoolDB;Trusted_Connection=True;");
            }
        }

        //add-migration CreateSchoolDB

        //update-database –verbose
    }
}