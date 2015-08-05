<%@ Page Title="ProgramEdit" Language="C#" MasterPageFile="~/Main.Master" CodeBehind="Edit.aspx.cs" Inherits="Assignment2_EnterpriseComputing.Programs.Programs.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceholder1">
       <div class="container4">
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="Assignment2_EnterpriseComputing.Models.Program" DefaultMode="Edit" DataKeyNames="ProgramID"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Program with ProgramID <%: Request.QueryString["ProgramID"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit Program</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="Name" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Duration" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Expendature" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Types" runat="server" />
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

