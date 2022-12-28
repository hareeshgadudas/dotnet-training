using System.Linq;
using System.Collections.Generic;
using ef_core_practice.Models;
using Microsoft.EntityFrameworkCore;

namespace ef_core_practice
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello, World!");
            //var cities = GetCities();
            var states1 = GetStatesPaginated2(1,10);
            var states2 = GetStatesPaginated2(2,10);
        }

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
                          from s in context.States.Where(s=>s.CountryId == c.Id)
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

                var res = from c in context.Countries                     
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
                          select new CitiesWithStateName { StateName= g.Key, Cities = g.ToList()};
                return res.ToList();
            }

        }

        static List<State> GetStatesPaginated(int pageNo, int pagesize)
        {
            int skip = (pageNo- 1)*pagesize;
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



        //Scaffold-DbContext "Server=(localdb)\MSSQLLocalDB;Database=Training;Trusted_Connection=True;" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models
    }
}