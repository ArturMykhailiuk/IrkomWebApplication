using System.Linq;
using Microsoft.AspNetCore.Mvc;
using IrkomWebApplication.Models;

namespace IrkomWebApplication.Controllers
{
    public class HomeController : Controller
    {
        MobileContext db;
        public HomeController(MobileContext context)
        {
            db = context;
        }
        public IActionResult Index()
        {
            return View(db.Phones.ToList());
        }
    }
}