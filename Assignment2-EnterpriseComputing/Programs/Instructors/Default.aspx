<%@ Page Title="InstructorList" Language="C#" MasterPageFile="~/Main.Master" CodeBehind="Default.aspx.cs" Inherits="Assignment2_EnterpriseComputing.Programs.Instructors.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceholder1">
       <div class="container4">
    <h2>Instructors List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="InstructorID" 
			ItemType="Assignment2_EnterpriseComputing.Models.Instructor"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for Instructors
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="InstructorID" CommandName="Sort" CommandArgument="InstructorID" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="FirstName" CommandName="Sort" CommandArgument="FirstName" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="LastName" CommandName="Sort" CommandArgument="LastName" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Service_Status" CommandName="Sort" CommandArgument="Service_Status" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Specialization" CommandName="Sort" CommandArgument="Specialization" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="ProgramID" CommandName="Sort" CommandArgument="ProgramID" runat="Server" />
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
								<asp:DynamicControl runat="server" DataField="InstructorID" ID="InstructorID" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="FirstName" ID="FirstName" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="LastName" ID="LastName" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Service_Status" ID="Service_Status" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Specialization" ID="Specialization" Mode="ReadOnly" />
							</td>
							<td>
								<%#: Item.Program != null ? Item.Program.Name : "" %>
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Programs/Instructors/Details", Item.InstructorID) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Programs/Instructors/Edit", Item.InstructorID) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Programs/Instructors/Delete", Item.InstructorID) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
        </div>
</asp:Content>

