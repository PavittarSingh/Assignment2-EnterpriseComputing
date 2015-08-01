<%@ Page Title="DepartmentEdit" Language="C#" MasterPageFile="~/Main.Master" CodeBehind="Edit.aspx.cs" Inherits="Assignment2_EnterpriseComputing.Departments.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
     <div class="container3">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="Assignment2_EnterpriseComputing.Models.Department" DefaultMode="Edit" DataKeyNames="DepartmentID"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Department with DepartmentID <%: Request.QueryString["DepartmentID"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit Department</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="Name" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Budget" runat="server" />
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

