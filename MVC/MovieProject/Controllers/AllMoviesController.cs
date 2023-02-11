using MovieProject.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace MovieProject.Controllers
{
    public class AllMoviesController : Controller
    {
        // GET: AllMovies
        private MoviesContext mdb = new MoviesContext();
        public ActionResult Index()
        { 
            return View(mdb.Movies.ToList());
        }

        public ActionResult Create()
        {
            return View();
        }

        //for insert new movies details
        [HttpPost, ActionName("Create")]
        [ValidateAntiForgeryToken]
        public ActionResult InsertMovie([Bind(Include = "Mid, Moviename, DateofRelease")] Movie movie)
        {
            if (ModelState.IsValid)
            {
                mdb.Movies.Add(movie);
                mdb.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(movie);
        }

        //for edit
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Movie movie = mdb.Movies.Find(id);
            if(movie == null)
            {
                return HttpNotFound();
            }
            return View(movie);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Mid, Moviename, DateofRelease")] Movie movie)
        {
            if (ModelState.IsValid)
            {
                mdb.Entry(movie).State = EntityState.Modified;
                mdb.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(movie);
        }

        //for delete
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Movie movie = mdb.Movies.Find(id);
            if (movie == null)
            {
                return HttpNotFound();
            }
            return View(movie);
        }

        [HttpPost]
        [ValidateAntiForgeryToken,ActionName("Delete")]
        public ActionResult DeleteConfirm(int? id)
        {
            Movie movie = mdb.Movies.Find(id);
            mdb.Movies.Remove(movie);
            mdb.SaveChanges();
            return RedirectToAction("Index");
        }

        //find movies by release year
        [HttpGet]
        public ActionResult FindMoviesByYear(string txtyear)
        {
            if(txtyear == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            int n = Convert.ToInt32(txtyear);
            IEnumerable<Movie> movies = from m in mdb.Movies
                                        where m.DateofRelease.Year.Equals(n)
                                        select m;
            if(movies == null)
            {
                return HttpNotFound();
            }
            ViewBag.mydata = n;
            return View(movies);
        }
    }
}