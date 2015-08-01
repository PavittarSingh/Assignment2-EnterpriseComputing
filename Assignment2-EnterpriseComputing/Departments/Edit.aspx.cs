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
    public partial class Edit : System.Web.UI.Page
    {
		protected Assignment2_EnterpriseComputing.Models.BannerDatabase01 _db = new Assignment2_EnterpriseComputing.Models.BannerDatabase01();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected Department item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int  DepartmentID)
        {
            using (_db)
            {
                var item = _db.Departments.Find(DepartmentID);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", DepartmentID));
                    return;
                }

                TryUpdateModel(item);

                if (ModelState.IsValid)
                {
                    // Save changes here
                    _db.SaveChanges();
                    Response.Redirect("../Default");
                }
            }
        }

        // This is the Select method to selects a single Department item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public Assignment2_EnterpriseComputing.Models.Department GetItem([FriendlyUrlSegmentsAttribute(0)]int? DepartmentID)
        {
            if (DepartmentID == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.Departments.Find(DepartmentID);
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
