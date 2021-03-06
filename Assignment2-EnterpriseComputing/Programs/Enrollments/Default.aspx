﻿<%@ Page Title="EnrollmentList" Language="C#" MasterPageFile="~/Main.Master" CodeBehind="Default.aspx.cs" Inherits="Assignment2_EnterpriseComputing.Programs.Enrollments.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceholder1">
       <div class="container4">
    <h2>Enrollments List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="EnrollmentID" 
			ItemType="Assignment2_EnterpriseComputing.Models.Enrollment"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for Enrollments
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="EnrollmentID" CommandName="Sort" CommandArgument="EnrollmentID" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="CourseID" CommandName="Sort" CommandArgument="CourseID" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="StudentID" CommandName="Sort" CommandArgument="StudentID" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Student_Types" CommandName="Sort" CommandArgument="Student_Types" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Student_Status" CommandName="Sort" CommandArgument="Student_Status" runat="Server" />
							</th>
                            <th>&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr runat="server" id="itemPlaceholder" />
                    </tbody>
                </table>
				<asp:DataPager PageSize="5"  runat="server">
					<Fields>
                        <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                        <asp:NumericPagerField ButtonType="Button"  NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                        <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                    </Fields>
				</asp:DataPager>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
							<td>
								<asp:DynamicControl runat="server" DataField="EnrollmentID" ID="EnrollmentID" Mode="ReadOnly" />
							</td>
							<td>
								<%#: Item.Courses != null ? Item.Courses.Title : "" %>
							</td>
							<td>
								<%#: Item.Student != null ? Item.Student.First_Name : "" %>
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Student_Types" ID="Student_Types" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Student_Status" ID="Student_Status" Mode="ReadOnly" />
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Programs/Enrollments/Details", Item.EnrollmentID) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Programs/Enrollments/Edit", Item.EnrollmentID) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Programs/Enrollments/Delete", Item.EnrollmentID) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
        </div>
</asp:Content>

