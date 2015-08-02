<%@ Page Title="CoursesEdit" Language="C#" MasterPageFile="~/Main.Master" CodeBehind="Edit.aspx.cs" Inherits="Assignment2_EnterpriseComputing.Courses.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceholder1">
     <div class =" container4">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="Assignment2_EnterpriseComputing.Models.Courses" DefaultMode="Edit" DataKeyNames="CourseID"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Courses with CourseID <%: Request.QueryString["CourseID"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit Courses</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="Title" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Credits" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="DepartmentID" 
								DataTypeName="Assignment2_EnterpriseComputing.Models.Department" 
								DataTextField="Name" 
								DataValueField="DepartmentID" 
								UIHint="ForeignKey" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
							<asp:Button runat="server" ID="UpdateButton" CommandName="Update" Text="Update" CssClass="btn btn-primary" />
							<asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </EditItemTemplate>
        </asp:FormView>
    </div>
         </div>
</asp:Content>

