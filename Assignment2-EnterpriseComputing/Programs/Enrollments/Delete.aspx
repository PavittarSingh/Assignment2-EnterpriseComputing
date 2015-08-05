<%@ Page Title="EnrollmentDelete" Language="C#" MasterPageFile="~/Main.Master" CodeBehind="Delete.aspx.cs" Inherits="Assignment2_EnterpriseComputing.Programs.Enrollments.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceholder1">
        <div class="container4">
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this Enrollment?</h3>
        <asp:FormView runat="server"
            ItemType="Assignment2_EnterpriseComputing.Models.Enrollment" DataKeyNames="EnrollmentID"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Enrollment with EnrollmentID <%: Request.QueryString["EnrollmentID"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete Enrollment</legend>
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
									<%#: Item.Student != null ? Item.Student.First_Name : "" %>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Student_Types</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Student_Types" ID="Student_Types" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Student_Status</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Student_Status" ID="Student_Status" Mode="ReadOnly" />
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

