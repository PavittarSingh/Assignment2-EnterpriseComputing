﻿<%@ Page Title="CoursesInsert" Language="C#" MasterPageFile="~/Main.Master" CodeBehind="Insert.aspx.cs" Inherits="Assignment2_EnterpriseComputing.Courses.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceholder1">
     <div class =" container4">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="Assignment2_EnterpriseComputing.Models.Courses" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert Courses</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
						    <asp:DynamicControl Mode="Insert" DataField="Title" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Credits" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="DepartmentID" 
								DataTypeName="Assignment2_EnterpriseComputing.Models.Department" 
								DataTextField="Name" 
								DataValueField="DepartmentID" 
								UIHint="ForeignKey" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button runat="server" ID="InsertButton" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" />
                            <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                        </div>
					</div>
                </fieldset>
            </InsertItemTemplate>
        </asp:FormView>
    </div>
         </div>
</asp:Content>
