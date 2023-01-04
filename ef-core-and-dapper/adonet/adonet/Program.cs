using System.Data;
using System.Data.SqlClient;

namespace adonet
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello, World!");
            CRUD_UsingDA();
        }

        #region DataReader
        static List<State> GetStates()
        {
            string ConString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Training;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(ConString)) 
            {               
                string querystring = "Select * from State";
                SqlCommand cmd = new SqlCommand(querystring, con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
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

        static List<State> GetStates_SP()
        {
            string ConString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Training;Integrated Security=True";
            SqlConnection con = new SqlConnection(ConString);
            string querystring = "GetStates";
            con.Open();
            SqlCommand cmd = new SqlCommand(querystring, con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader rdr = cmd.ExecuteReader();
            List<State> states = new List<State>();
            while (rdr.Read())
            {
                State state = new State();
                state.Id = Convert.ToInt32(rdr["Id"]);
                state.CountryId = Convert.ToInt32(rdr["CountryId"]);
                state.Name = rdr["Name"].ToString();
                states.Add(state);
            }
            con.Close();
            return states;
        }

        static State GetStateByID_SP()
        {
            string ConString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Training;Integrated Security=True";
            SqlConnection con = new SqlConnection(ConString);
            string querystring = "GetStatesByID";
            
            SqlCommand cmd = new SqlCommand(querystring, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", 1);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            State state = new State();
            while (rdr.Read())
            {
                state.Id = Convert.ToInt32(rdr["Id"]);
                state.CountryId = Convert.ToInt32(rdr["CountryId"]);
                state.Name = rdr["Name"].ToString();
            }
            con.Close();
            return state;
        }

        static void GetSchemaInfo()
        {
            string ConString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Training;Integrated Security=True";
            SqlConnection connection = new SqlConnection(ConString);
            using (connection)
            {
                SqlCommand command = new SqlCommand(
                  "SELECT * FROM State;",
                  connection);
                connection.Open();

                SqlDataReader reader = command.ExecuteReader();
                DataTable schemaTable = reader.GetSchemaTable();

                foreach (DataRow row in schemaTable.Rows)
                {
                    foreach (DataColumn column in schemaTable.Columns)
                    {
                        Console.WriteLine(String.Format("{0} = {1}",
                           column.ColumnName, row[column]));
                    }
                }
            }
        }

        static int AddState()
        {
            string ConString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Training;Integrated Security=True";
            SqlConnection con = new SqlConnection(ConString);
            string querystring = "Insert into State (Id, Name , CountryId) Values (@Id, @Name, @CountryId)";
            SqlCommand cmd = new SqlCommand(querystring, con);
            cmd.Parameters.AddWithValue("@Id", 36);
            cmd.Parameters.AddWithValue("@Name", "Test");
            cmd.Parameters.AddWithValue("@CountryId", 105);
            con.Open();
            var recordsEffected = cmd.ExecuteNonQuery();
            con.Close();
            return recordsEffected;
        }

        static int UpdateState()
        {
            string ConString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Training;Integrated Security=True";
            SqlConnection con = new SqlConnection(ConString);
            string querystring = "Update State Set Name = @Name Where Id = @Id";
            SqlCommand cmd = new SqlCommand(querystring, con);
            cmd.Parameters.AddWithValue("@Id", 36);
            cmd.Parameters.AddWithValue("@Name", "Test2");
            con.Open();
            var recordsEffected = cmd.ExecuteNonQuery();
            con.Close();
            return recordsEffected;
        }

        static int DeleteState()
        {
            string ConString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Training;Integrated Security=True";
            SqlConnection con = new SqlConnection(ConString);
            string querystring = "Delete from State Where Id=@Id";
            SqlCommand cmd = new SqlCommand(querystring, con);
            cmd.Parameters.AddWithValue("@Id", 36);
            con.Open();
            var recordsEffected = cmd.ExecuteNonQuery();
            con.Close();
            return recordsEffected;
        }
        #endregion

        #region DataAdapter
        static List<State> GetStates_DA()
        {
            string ConString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Training;Integrated Security=True";
            SqlConnection con = new SqlConnection(ConString);
            string querystring = "Select * from State";
            SqlDataAdapter adapter = new SqlDataAdapter(querystring, con);
            DataSet statesDS = new DataSet();
            adapter.Fill(statesDS, "State");
            List<State> states = new List<State>();
            for (int i = 0; i < statesDS.Tables["State"].Rows.Count; i++)
            {
                State state = new State();
                state.Id = Convert.ToInt32(statesDS.Tables["State"].Rows[i]["Id"]);
                state.CountryId = Convert.ToInt32(statesDS.Tables["State"].Rows[i]["CountryId"]);
                state.Name = statesDS.Tables["State"].Rows[i]["Name"].ToString();
                states.Add(state);

            }
            return states;
        }

        static void CRUD_UsingDA()
        {
            //string ConString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Training;Integrated Security=True";
            //SqlConnection con = new SqlConnection(ConString);
            //string querystring = "Select * from State";
            SqlDataAdapter adapter = CRUD_UsingDACommands();
            DataSet statesDS = new DataSet();
            adapter.Fill(statesDS, "State");
            List<State> states = new List<State>();
            for (int i = 0; i < statesDS.Tables["State"].Rows.Count; i++)
            {
                State state = new State();
                state.Id = Convert.ToInt32(statesDS.Tables["State"].Rows[i]["Id"]);
                state.CountryId = Convert.ToInt32(statesDS.Tables["State"].Rows[i]["CountryId"]);
                state.Name = statesDS.Tables["State"].Rows[i]["Name"].ToString();
                states.Add(state);

            }

            DataRow dataRow = statesDS.Tables["State"].NewRow();
            dataRow["Id"] = 36;
            dataRow["Name"] = "Test";
            dataRow["CountryId"] = 105;
            statesDS.Tables["State"].Rows.Add(dataRow);
            adapter.Update(statesDS, "State");

            dataRow["Name"] = "Test2";
            adapter.Update(statesDS, "State");

            dataRow.Delete();
            adapter.Update(statesDS, "State");



        }

        static SqlDataAdapter CRUD_UsingDACommands()
        {
            string ConString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Training;Integrated Security=True";
            SqlConnection connection = new SqlConnection(ConString);

            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.MissingSchemaAction = MissingSchemaAction.AddWithKey;

            // Create the commands.
            adapter.SelectCommand = new SqlCommand(
                "Select * from State", connection);
            adapter.InsertCommand = new SqlCommand(
                "Insert into State (Id, Name , CountryId) Values (@Id, @Name, @CountryId)", connection);
            adapter.UpdateCommand = new SqlCommand(
                "Update State Set Name = @Name Where Id = @Id", connection);
            adapter.DeleteCommand = new SqlCommand(
                "Delete from State Where Id=@Id", connection);

            // Create the parameters.
            adapter.InsertCommand.Parameters.AddWithValue("@Id", 36);
            adapter.InsertCommand.Parameters.AddWithValue("@Name", "Test");
            adapter.InsertCommand.Parameters.AddWithValue("@CountryId", 105);

            adapter.UpdateCommand.Parameters.AddWithValue("@Id", 36);
            adapter.UpdateCommand.Parameters.AddWithValue("@Name", "Test2");

            adapter.DeleteCommand.Parameters.AddWithValue("@Id", 36);

            //connection.Open();
            //SqlDataReader rdr = adapter.SelectCommand.ExecuteReader();
            //List<State> states = new List<State>();
            //while (rdr.Read())
            //{
            //    State state = new State();
            //    state.Id = Convert.ToInt32(rdr["Id"]);
            //    state.CountryId = Convert.ToInt32(rdr["CountryId"]);
            //    state.Name = rdr["Name"].ToString();
            //    states.Add(state);
            //}
            //rdr.Close();

            //adapter.InsertCommand.ExecuteNonQuery();
            //adapter.UpdateCommand.ExecuteNonQuery();
            //adapter.DeleteCommand.ExecuteNonQuery();
            //connection.Close();
            return adapter;
        }
        #endregion

    }

    public class State
    {
        public int Id { get; set; }

        public string Name { get; set; } = null!;

        public int CountryId { get; set; }
    }
}