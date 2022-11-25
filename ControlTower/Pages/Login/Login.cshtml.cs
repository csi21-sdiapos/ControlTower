using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Npgsql;

namespace ControlTower.Pages.Login
{
    public class Login : PageModel
    {
        /*
        public IActionResult Index()
        {
            return Page();
        }
        */
     
        public IActionResult MiLogin()
        {
            string name = "User1";
            string password = "Clave1";
            //Recogemos la información de la vista
            //Hacemos la conexion
            using var connection = new NpgsqlConnection("Host=localhost;Port=5432;Pooling=true;Database=CSPharma;UserId=postgres;Password=12345;");
            Console.WriteLine("ABRIENDO CONEXION");
            connection.Open();

            NpgsqlCommand consulta = new NpgsqlCommand($"SELECT * FROM \"dlk_informacional\".\"dlk_cat_acc_empleados\" WHERE cod_empleado='{name}' AND clave_empleado='{password}'", connection);
            NpgsqlDataReader resultadoConsulta = consulta.ExecuteReader();


            if (resultadoConsulta.HasRows)
            {
                Console.WriteLine("Ha iniciado sesion con exito");
            }
            else
            {
                Console.WriteLine("Recuerde sus credenciales");
            }

            Console.WriteLine("Cerrando conexion");
            connection.Close();

            return Page();
        }

    }
}
