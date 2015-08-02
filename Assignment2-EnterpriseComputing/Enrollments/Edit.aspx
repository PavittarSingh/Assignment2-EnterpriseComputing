<%@ Page Title="EnrollmentEdit" Language="C#" MasterPageFile="~/Main.Master" CodeBehind="Edit.aspx.cs" Inherits="Assignment2_EnterpriseComputing.Enrollments.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceholder1">
    <div class =" container4">
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="Assignment2_EnterpriseComputing.Models.Enrollment" DefaultMode="Edit" DataKeyNames="EnrollmentID"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Enrollment with EnrollmentID <%: Request.QueryString["EnrollmentID"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit Enrollment</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
							<asp:DynamicControl Mode="Edit" 
								DataField="CourseID" 
								DataTypeName="Assignment2_EnterpriseComputing.Models.Courses" 
								DataTextField="Title" 
								DataValueField="CourseID" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="StudentID" 
								DataTypeName="Assignment2_EnterpriseComputing.Models.Student" 
								DataTextField="LastName" 
								DataValueField="StudentID" 
								UIHint="ForeignKey" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Grade" runat="server" />
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

