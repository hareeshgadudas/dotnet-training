using System.Linq;
using System.Collections.Generic;
using ef_core_practice.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.Data.SqlClient;

namespace ef_core_practice
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("EF Core Querying !!");
            var res =GetCountry_Projection("India");
        }

        #region Querying - Part1

        static List<City> GetCities()
        {
            using (var context = new TrainingContext())
            {
                var res = from c in context.Cities
                          select c;
                return res.ToList();
            }

        }

        static List<State> GetStatesByCountryName(string countryName)
        {
            using (var context = new TrainingContext())
            {

                var res = from c in context.Countries
                          join s in context.States
                          on c.Id equals s.CountryId
                          where c.Name == countryName
                          orderby s.Name
                          select new State
                          {
                              Id = s.Id,
                              Name = s.Name,
                              Country = c,
                              CountryId = s.CountryId
                          };
                return res.ToList();
            }

        }

        static List<State> GetStatesByCountryNameInnerJoin(string countryName)
        {
            using (var context = new TrainingContext())
            {

                var res = from c in context.Countries
                          from s in context.States.Where(s => s.CountryId == c.Id)
                          where c.Name == countryName
                          orderby s.Name
                          select new State
                          {
                              Id = s.Id,
                              Name = s.Name
                          };
                return res.ToList();
            }

        }

        static List<State> GetStatesByCountryNameLeftJoin(string countryName)
        {
            using (var context = new TrainingContext())
            {

                var res = from c in context.Countries
                          from s in context.States.Where(s => s.CountryId == c.Id).DefaultIfEmpty()
                          where c.Name == countryName
                          orderby s.Name
                          select new State
                          {
                              Id = s.Id,
                              Name = s.Name
                          };
                return res.ToList();
            }

        }

        static List<State> GetStatesByCountryNameLeftJoinWithGroupJoin(string countryName)
        {
            using (var context = new TrainingContext())
            {

                var res = from c in context.Countries
                          join s in context.States
                          on c.Id equals s.CountryId into grouping
                          from s in grouping.DefaultIfEmpty()
                          where c.Name == countryName
                          orderby s.Name
                          select new State
                          {
                              Id = s.Id,
                              Name = s.Name

                          };
                return res.ToList();
            }

        }

        static Country GetCountryWithStatesAndCitites(string countryName)
        {
            using (var context = new TrainingContext())
            {

                var res = from c in context.Countries.Include(c => c.States).ThenInclude(s => s.Cities)
                          where c.Name == countryName
                          select c;
                return res.First();
            }

        }

        static List<CitiesWithStateName> GetCitiesGroupByState()
        {
            using (var context = new TrainingContext())
            {

                var res = from c in context.Cities
                          group c by c.State.Name into g
                          select new CitiesWithStateName { StateName = g.Key, Cities = g.ToList() };
                return res.ToList();
            }

        }

        static List<State> GetStatesPaginated(int pageNo, int pagesize)
        {
            int skip = (pageNo - 1) * pagesize;
            using (var context = new TrainingContext())
            {

                var res = context.States
                           .OrderBy(s => s.Name)
                           .Skip(skip)
                           .Take(pagesize)
                           .ToList();

                return res;
            }

        }

        static List<State> GetStatesPaginated2(int pageNo, int pagesize)
        {
            int skip = (pageNo - 1) * pagesize;
            using (var context = new TrainingContext())
            {

                var res = from s in context.States
                           .OrderBy(s => s.Name)
                           .Skip(skip)
                           .Take(pagesize)
                          select s;

                return res.ToList();
            }

        }

        class CitiesWithStateName
        {
            public string StateName { get; set; }
            public List<City> Cities { get; set; }
        }
        #endregion

        #region Querying - Part2

        static List<State> GetStatesBySQLQuery()
        {
            using (var context = new TrainingContext())
            {

                var res = context.States
                          .FromSql($"Select * from State");
                return res.ToList();
            }

        }

        static List<State> GetStatesBySQLQuerySP()
        {
            using (var context = new TrainingContext())
            {

                var res = context.States
                          .FromSql($"EXECUTE GetStates");
                return res.ToList();
            }

        }

        static State GetStatesById(int Id)
        {
            using (var context = new TrainingContext())
            {
                var sqlParameter_id = new SqlParameter("Id", Id);
                var res = context.States
                          .FromSql($"EXECUTE GetStatesByID {sqlParameter_id}").ToList();
                return res.FirstOrDefault();
            }

        }

        static List<State> GetStatesByDynamicSQLQuery(int Id)
        {
            using (var context = new TrainingContext())
            {

                var res = context.States
                          .FromSql($"Select * from State where Id = {Id}");
                return res.ToList();
            }

        }

        static List<State> GetStatesBySQL_ComposingWithLinq(string startsWith)
        {
            using (var context = new TrainingContext())
            {

                var res = context.States
                          .FromSql($"Select * from State")
                          .Where(s => s.Name.StartsWith(startsWith))
                          .Include(s => s.Cities);

                return res.ToList();
            }

        }

        static List<string> GetCountryCodesBySQL_NonEntity()
        {
            using (var context = new TrainingContext())
            {

                return context.Database
                          .SqlQuery<string>($"Select CountryCode from Country").ToList();
            }

        }

        static void UpdateCity_NonQuery()
        {
            using (var context = new TrainingContext())
            {

                var rowsModified = context.Database
                          .ExecuteSql($"Update City Set City='Hyd' Where Id=9");
            }

        }

        static void UpdateCity()
        {
            using (var context = new TrainingContext())
            {
                var city = context.Cities.AsNoTracking().FirstOrDefault(c => c.Id == 9);
                city.City1 = "Hyd";
                context.SaveChanges();
            }
        }

        static List<CountryWithStates> GetCountry_Projection(string countryName)
        {
            using (var context = new TrainingContext())
            {

                var res = from c in context.Countries
                          where c.Name == countryName
                          select new CountryWithStates
                          {
                              Country = c,
                              States = c.States.ToList()
                          };
                return res.ToList();
            }

        }

        class CountryWithStates
        {
            public Country Country { get; set; }
            public List<State> States { get; set; }
        }

        #endregion






        //Scaffold-DbContext "Server=(localdb)\MSSQLLocalDB;Database=Training;Trusted_Connection=True;" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models
    }
}