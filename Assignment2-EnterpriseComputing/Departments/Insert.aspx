<%@ Page Title="DepartmentInsert" Language="C#" MasterPageFile="~/Main.Master" CodeBehind="Insert.aspx.cs" Inherits="Assignment2_EnterpriseComputing.Departments.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
     <div class="container3">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="Assignment2_EnterpriseComputing.Models.Department" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert Department</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
						    <asp:DynamicControl Mode="Insert" DataField="Name" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Budget" runat="server" />
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
