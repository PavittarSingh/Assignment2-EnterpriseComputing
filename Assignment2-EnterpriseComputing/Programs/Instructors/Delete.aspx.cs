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

namespace Assignment2_EnterpriseComputing.Programs.Instructors
{
    public partial class Delete : System.Web.UI.Page
    {
		protected Assignment2_EnterpriseComputing.Models.Banner01 _db = new Assignment2_EnterpriseComputing.Models.Banner01();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected Instructor item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int InstructorID)
        {
            using (_db)
            {
                var item = _db.Instructors.Find(InstructorID);

                if (item != null)
                {
                    _db.Instructors.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single Instructor item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public Assignment2_EnterpriseComputing.Models.Instructor GetItem([FriendlyUrlSegmentsAttribute(0)]int? InstructorID)
        {
            if (InstructorID == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Instructors.Where(m => m.InstructorID == InstructorID).Include(m => m.Program).FirstOrDefault();
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

