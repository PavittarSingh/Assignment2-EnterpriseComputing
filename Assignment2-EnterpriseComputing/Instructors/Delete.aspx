<%@ Page Title="InstructorDelete" Language="C#" MasterPageFile="~/Main.Master" CodeBehind="Delete.aspx.cs" Inherits="Assignment2_EnterpriseComputing.Instructors.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceholder1">
     <div class =" container4">
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this Instructor?</h3>
        <asp:FormView runat="server"
            ItemType="Assignment2_EnterpriseComputing.Models.Instructor" DataKeyNames="InstructorID"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Instructor with InstructorID <%: Request.QueryString["InstructorID"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete Instructor</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>InstructorID</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="InstructorID" ID="InstructorID" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>FirstName</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="FirstName" ID="FirstName" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>LastName</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="LastName" ID="LastName" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Username</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Username" ID="Username" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Password</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Password" ID="Password" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Salt</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Salt" ID="Salt" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>DepartmentID</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.Department != null ? Item.Department.Name : "" %>
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
</asp:Content>

