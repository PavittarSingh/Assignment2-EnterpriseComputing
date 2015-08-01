<%@ Control Language="C#" CodeBehind="ForeignKey.ascx.cs" Inherits="Assignment2_EnterpriseComputing.ForeignKeyField" %>

<asp:HyperLink ID="HyperLink1" runat="server"
    Text="<%# GetDisplayString() %>"
    NavigateUrl="<%# GetNavigateUrl() %>"  />

