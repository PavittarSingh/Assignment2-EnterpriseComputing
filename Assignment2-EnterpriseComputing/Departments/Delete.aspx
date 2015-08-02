<%@ Page Title="DepartmentDelete" Language="C#" MasterPageFile="~/Main.Master" CodeBehind="Delete.aspx.cs" Inherits="Assignment2_EnterpriseComputing.Departments.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceholder1">
     <div class =" container4">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this Department?</h3>
        <asp:FormView runat="server"
            ItemType="Assignment2_EnterpriseComputing.Models.Department" DataKeyNames="DepartmentID"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Department with DepartmentID <%: Request.QueryString["DepartmentID"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete Department</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>DepartmentID</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="DepartmentID" ID="DepartmentID" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Name</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Name" ID="Name" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Duration</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Duration" ID="Duration" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Budget</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Budget" ID="Budget" Mode="ReadOnly" />
								</div>
							</div>
                 	<div class="row">
					  &nbsp;
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" />
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
         </div>
</asp:Content>

