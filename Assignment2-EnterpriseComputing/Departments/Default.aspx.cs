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
    public partial class Default : System.Web.UI.Page
    {
		protected Assignment2_EnterpriseComputing.Models.Banner01 _db = new Assignment2_EnterpriseComputing.Models.Banner01();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of Department entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<Assignment2_EnterpriseComputing.Models.Department> GetData()
        {
            return _db.Departments;
        }
    }
}

