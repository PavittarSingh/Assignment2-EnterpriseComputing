using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using Assignment2_EnterpriseComputing.Models;

namespace Assignment2_EnterpriseComputing.Departments
{
    public partial class Delete : System.Web.UI.Page
    {
		protected Assignment2_EnterpriseComputing.Models.BannerDatabase01 _db = new Assignment2_EnterpriseComputing.Models.BannerDatabase01();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected Department item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int DepartmentID)
        {
            using (_db)
            {
                var item = _db.Departments.Find(DepartmentID);

                if (item != null)
                {
                    _db.Departments.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single Department item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public Assignment2_EnterpriseComputing.Models.Department GetItem([FriendlyUrlSegmentsAttribute(0)]int? DepartmentID)
        {
            if (DepartmentID == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Departments.Where(m => m.DepartmentID == DepartmentID).FirstOrDefault();
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

