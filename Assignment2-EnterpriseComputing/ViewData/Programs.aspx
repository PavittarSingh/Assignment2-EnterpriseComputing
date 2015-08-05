<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Programs.aspx.cs" Inherits="Assignment2_EnterpriseComputing.ViewData.Programs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container5">
         <h3> Blue River College offering these availble Programs</h3>
    <hr>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProgramID" DataSourceID="Banner01" ForeColor="#333333" GridLines="None" Height="354px" Width="933px" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="ProgramID" HeaderText="ProgramID" InsertVisible="False" ReadOnly="True" SortExpression="ProgramID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                <asp:BoundField DataField="Expendature" HeaderText="Expendature" SortExpression="Expendature" />
                <asp:BoundField DataField="Types" HeaderText="Types" SortExpression="Types" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="Banner01" runat="server" ConnectionString="<%$ ConnectionStrings:BannerDatabase01CS %>" SelectCommand="SELECT ProgramID, Name, Duration, Expendature, Types FROM Programs"></asp:SqlDataSource>
    </div>
</asp:Content>
