﻿<%@ Page Title="InstructorInsert" Language="C#" MasterPageFile="~/Main.Master" CodeBehind="Insert.aspx.cs" Inherits="Assignment2_EnterpriseComputing.Programs.Instructors.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceholder1">
        <div class="container4">
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="Assignment2_EnterpriseComputing.Models.Instructor" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert Instructor</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
						    <asp:DynamicControl Mode="Insert" DataField="FirstName" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="LastName" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Service_Status" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Specialization" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="ProgramID" 
								DataTypeName="Assignment2_EnterpriseComputing.Models.Program" 
								DataTextField="Name" 
								DataValueField="ProgramID" 
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
</asp:Content>
