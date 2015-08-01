﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Assignment2_EnterpriseComputing.Models;

namespace Assignment2_EnterpriseComputing.Departments
{
    public partial class Insert : System.Web.UI.Page
    {
		protected Assignment2_EnterpriseComputing.Models.BannerDatabase01 _db = new Assignment2_EnterpriseComputing.Models.BannerDatabase01();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // This is the Insert method to insert the entered Department item
        // USAGE: <asp:FormView InsertMethod="InsertItem">
        public void InsertItem()
        {
            using (_db)
            {
                var item = new Assignment2_EnterpriseComputing.Models.Department();

                TryUpdateModel(item);

                if (ModelState.IsValid)
                {
                    // Save changes
                    _db.Departments.Add(item);
                    _db.SaveChanges();

                    Response.Redirect("Default");
                }
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("Default");
            }
        }
    }
}