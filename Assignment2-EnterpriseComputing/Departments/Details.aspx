<%@ Page Title="Department Details" Language="C#" MasterPageFile="~/Main.Master" CodeBehind="Details.aspx.cs" Inherits="Assignment2_EnterpriseComputing.Departments.Details" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
     <div class="container3">
    <div>
		<p>&nbsp;</p>
      
        <asp:FormView runat="server"
            ItemType="Assignment2_EnterpriseComputing.Models.Department" DataKeyNames="DepartmentID"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Department with DepartmentID <%: Request.QueryString["DepartmentID"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Department Details</legend>
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
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Back" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
         </div>
</asp:Content>

