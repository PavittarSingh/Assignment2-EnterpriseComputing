﻿<%@ Page Title="StudentDelete" Language="C#" MasterPageFile="~/Main.Master" CodeBehind="Delete.aspx.cs" Inherits="Assignment2_EnterpriseComputing.Programs.Students.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceholder1">
       <div class="container4">
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this Student?</h3>
        <asp:FormView runat="server"
            ItemType="Assignment2_EnterpriseComputing.Models.Student" DataKeyNames="StudentID"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Student with StudentID <%: Request.QueryString["StudentID"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete Student</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>StudentID</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="StudentID" ID="StudentID" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>First_Name</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="First_Name" ID="First_Name" Mode="ReadOnly" />
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
									<strong>EnrollmentDate</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="EnrollmentDate" ID="EnrollmentDate" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Address</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Address" ID="Address" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>City</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="City" ID="City" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>State</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="State" ID="State" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Country</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Country" ID="Country" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Phone</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Phone" ID="Phone" Mode="ReadOnly" />
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

