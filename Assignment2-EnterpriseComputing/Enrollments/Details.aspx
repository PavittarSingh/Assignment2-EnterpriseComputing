<%@ Page Title="Enrollment Details" Language="C#" MasterPageFile="~/Main.Master" CodeBehind="Details.aspx.cs" Inherits="Assignment2_EnterpriseComputing.Enrollments.Details" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceholder1">
    <div class =" container4">
		<p>&nbsp;</p>
      
        <asp:FormView runat="server"
            ItemType="Assignment2_EnterpriseComputing.Models.Enrollment" DataKeyNames="EnrollmentID"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Enrollment with EnrollmentID <%: Request.QueryString["EnrollmentID"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Enrollment Details</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>EnrollmentID</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="EnrollmentID" ID="EnrollmentID" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>CourseID</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.Courses != null ? Item.Courses.Title : "" %>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>StudentID</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.Student != null ? Item.Student.LastName : "" %>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Grade</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Grade" ID="Grade" Mode="ReadOnly" />
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

