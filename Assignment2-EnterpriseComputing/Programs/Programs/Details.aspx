﻿<%@ Page Title="Program Details" Language="C#" MasterPageFile="~/Main.Master" CodeBehind="Details.aspx.cs" Inherits="Assignment2_EnterpriseComputing.Programs.Programs.Details" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceholder1">
        <div class="container4">
		<p>&nbsp;</p>
      
        <asp:FormView runat="server"
            ItemType="Assignment2_EnterpriseComputing.Models.Program" DataKeyNames="ProgramID"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Program with ProgramID <%: Request.QueryString["ProgramID"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Program Details</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>ProgramID</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="ProgramID" ID="ProgramID" Mode="ReadOnly" />
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
									<strong>Expendature</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Expendature" ID="Expendature" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Types</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Types" ID="Types" Mode="ReadOnly" />
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
