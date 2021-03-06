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

namespace Assignment2_EnterpriseComputing.Programs.Students
{
    public partial class Delete : System.Web.UI.Page
    {
		protected Assignment2_EnterpriseComputing.Models.Banner01 _db = new Assignment2_EnterpriseComputing.Models.Banner01();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected Student item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int StudentID)
        {
            using (_db)
            {
                var item = _db.Students.Find(StudentID);

                if (item != null)
                {
                    _db.Students.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single Student item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public Assignment2_EnterpriseComputing.Models.Student GetItem([FriendlyUrlSegmentsAttribute(0)]int? StudentID)
        {
            if (StudentID == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Students.Where(m => m.StudentID == StudentID).FirstOrDefault();
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

