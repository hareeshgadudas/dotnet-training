using System.Data.SqlClient;
using Dapper;

namespace dapper_practice
{
    internal class Program
    {
        static async Task Main(string[] args)
        {
            Console.WriteLine("Dapper!");

            var res = await Task.WhenAll(GetStates(), GetStates_SP());
        }

        static async Task<List<State>> GetStates()
        {
            string ConString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Training;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(ConString))
            {
                string querystring = "Select * from State";
                var states = await con.QueryAsync<State>(querystring);
                //foreach (var item in states)
                //{
                //    Console.WriteLine(item.Id +" "+ item.Name); 
                //}
                return states.ToList();
            }

        }

        static List<State> GetStates_Reader()
        {
            string ConString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Training;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(ConString))
            {
                string querystring = "Select * from State";
                var rdr = con.ExecuteReader(querystring);
                List<State> states = new List<State>();
                while (rdr.Read())
                {
                    State state = new State();
                    state.Id = Convert.ToInt32(rdr["Id"]);
                    state.CountryId = Convert.ToInt32(rdr["CountryId"]);
                    state.Name = rdr["Name"].ToString();
                    states.Add(state);
                }
                return states;
            }
        }

        static async Task<List<State>> GetStates_SP()
        {
            string ConString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Training;Integrated Security=True";
            SqlConnection con = new SqlConnection(ConString);
            string querystring = "GetStates";
            var states = await con.QueryAsync<State>(querystring, commandType: System.Data.CommandType.StoredProcedure);
            return states.ToList();
        }

        static State GetStateByID_SP()
        {
            string ConString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Training;Integrated Security=True";
            SqlConnection con = new SqlConnection(ConString);
            string querystring = "GetStatesByID";
            //DynamicParameters parameters = new DynamicParameters();
            //parameters.Add("Id", 1);
            //var state = con.QuerySingle<State>(querystring, new {Id = 1}, commandType: System.Data.CommandType.StoredProcedure);
            var state = con.QueryFirstOrDefault<State>(querystring, new { Id = 1}, commandType: System.Data.CommandType.StoredProcedure);
            return state;
        }

        static int GetStatesCount()
        {
            string ConString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Training;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(ConString))
            {
                string querystring = "Select Count(*) from State";
                var count = con.ExecuteScalar<int>(querystring);  // returnd only one value
                return count;
            }
        }

        static CountryAndStates GetStatesAndCountries()
        {
            string ConString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Training;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(ConString))
            {
                string querystring = @"Select * from State;
                                       Select * from Country";
                var gridReader = con.QueryMultiple(querystring);  // multiple result sets
                return new CountryAndStates()
                {
                    States = gridReader.Read<State>().ToList(),
                    Countries = gridReader.Read<Country>().ToList()
                };
            }
        }

        static int AddState()
        {
            string ConString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Training;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(ConString))
            {
                string querystring = "Insert into State (Id, Name , CountryId) Values (@Id, @Name, @CountryId)";
                var recordsEffected = con.Execute(querystring, new {Id = 36, Name="Test", CountryId=105 });  
                return recordsEffected;

            }
            
        }

        static int UpdateState()
        {
            string ConString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Training;Integrated Security=True";
            string querystring = "Update State Set Name = @Name Where Id = @Id";
            using (SqlConnection con = new SqlConnection(ConString))
            {
                var recordsEffected = con.Execute(querystring, new { Id = 36, Name = "Test2" });  
                return recordsEffected;
            }
        }

        static int DeleteState()
        {
            string ConString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Training;Integrated Security=True";
            string querystring = "Delete from State Where Id=@Id";
            using (SqlConnection con = new SqlConnection(ConString))
            {
                var recordsEffected = con.Execute(querystring, new { Id = 36 });  
                return recordsEffected;
            }
        }


    }

    public class State
    {
        public int Id { get; set; }

        public string Name { get; set; } = null!;

        public int CountryId { get; set; }
    }

    public class Country
    {
        public int Id { get; set; }

        public string CountryCode { get; set; } = null!;

        public string Name { get; set; } = null!;
    }

    class CountryAndStates
    {
        public List<Country> Countries { get; set; }
        public List<State> States { get; set; }
    }
}