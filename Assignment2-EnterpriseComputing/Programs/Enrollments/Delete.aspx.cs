﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using Assignment2_EnterpriseComputing.Models;

namespace Assignment2_EnterpriseComputing.Programs.Enrollments
{
    public partial class Delete : System.Web.UI.Page
    {
		protected Assignment2_EnterpriseComputing.Models.Banner01 _db = new Assignment2_EnterpriseComputing.Models.Banner01();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected Enrollment item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int EnrollmentID)
        {
            using (_db)
            {
                var item = _db.Enrollments.Find(EnrollmentID);

                if (item != null)
                {
                    _db.Enrollments.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single Enrollment item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public Assignment2_EnterpriseComputing.Models.Enrollment GetItem([FriendlyUrlSegmentsAttribute(0)]int? EnrollmentID)
        {
            if (EnrollmentID == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Enrollments.Where(m => m.EnrollmentID == EnrollmentID).Include(m => m.Courses).Include(m => m.Student).FirstOrDefault();
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("../Default");
            }
        }
    }
}

