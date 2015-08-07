<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Assignment2_EnterpriseComputing.Account.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container3">
      
         <h4 style="font-size: medium"> <i class="fa fa-circle-o-notch fa-spin"></i> Log In</h4>
      
         <asp:PlaceHolder runat="server" ID="LoginStatus" Visible="false">
            <p>
               <asp:Literal runat="server" ID="StatusText" />
            </p>
         </asp:PlaceHolder>
         <asp:PlaceHolder runat="server" ID="LoginForm" Visible="false">
            <div style="margin-bottom: 10px">

               <asp:Label runat="server" AssociatedControlID="UserName"><i class="fa fa-envelope-o fa-fw"></i>User name</asp:Label>
                
               <div>
                  <asp:TextBox runat="server" ID="UserName" />
               </div>
            </div>
            <div style="margin-bottom: 10px">
               <asp:Label runat="server" AssociatedControlID="Password"> <i class="fa fa-key fa-fw"></i>Password</asp:Label>
               <div>
                  <asp:TextBox runat="server" ID="Password" TextMode="Password" />
               </div>
            </div>
            <div style="margin-bottom: 10px">
               <div>
                   <i class="fa fa-home fa-lg"></i>
                  <asp:Button runat="server" OnClick="SignIn" Text="Log in" />
               </div>
            </div>
             <div class="form-group">
                                      <!---Extra Sign up option-->
                                        
                                            Don't have Login! 
                 <br>
                                        <a href="Register.aspx" onClick="$('#loginbox').hide(); $('#signupbox').show()">
                                            Sign Up Here
                                        </a>
                                        </div>
                                 
                                   

         </asp:PlaceHolder>
      </div>
    <hr>

      

</asp:Content>