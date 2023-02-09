using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using NWAssignmentPrj.Models;
namespace NWAssignmentPrj.Controllers
{
    public class AssignmentController : Controller
    {
        // GET: Assignment
        NorthwindEntities db = new NorthwindEntities();
        public ActionResult Index()
        {
            return View();
        }

        [ActionName("GermanyCutomer")]
        public ActionResult GetGermanyCustomer()
        {
            return View("GetGermanyCustomer", db.GetGermanyCust().ToList());
        }

        public ActionResult GetByOrderId()
        {
            return View("GetByOrderId", db.Orders.Where(x => x.orderid == 10248).ToList());
        } 
    }
}