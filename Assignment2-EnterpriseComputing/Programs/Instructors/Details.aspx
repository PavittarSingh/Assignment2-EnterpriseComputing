﻿<%@ Page Title="Instructor Details" Language="C#" MasterPageFile="~/Main.Master" CodeBehind="Details.aspx.cs" Inherits="Assignment2_EnterpriseComputing.Programs.Instructors.Details" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceholder1">
     <div class="container4">
    		<p>&nbsp;</p>
      
        <asp:FormView runat="server"
            ItemType="Assignment2_EnterpriseComputing.Models.Instructor" DataKeyNames="InstructorID"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Instructor with InstructorID <%: Request.QueryString["InstructorID"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Instructor Details</legend>
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
									<strong>Service_Status</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Service_Status" ID="Service_Status" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Specialization</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Specialization" ID="Specialization" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>ProgramID</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.Program != null ? Item.Program.Name : "" %>
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
</asp:Content>

