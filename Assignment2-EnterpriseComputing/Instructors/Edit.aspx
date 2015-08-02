<%@ Page Title="InstructorEdit" Language="C#" MasterPageFile="~/Main.Master" CodeBehind="Edit.aspx.cs" Inherits="Assignment2_EnterpriseComputing.Instructors.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceholder1">
     <div class =" container4">
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="Assignment2_EnterpriseComputing.Models.Instructor" DefaultMode="Edit" DataKeyNames="InstructorID"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Instructor with InstructorID <%: Request.QueryString["InstructorID"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit Instructor</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="FirstName" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="LastName" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Username" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Password" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Salt" runat="server" />
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
</asp:Content>

