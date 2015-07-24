<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Assignment2_EnterpriseComputing.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <header>
        <div class="carousel slide" id="gallery-carousel" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#gallery-carousel" data-slide-to="0" class="active"></li>
                <li data-target="#gallery-carousel" data-slide-to="1"></li>
                <li data-target="#gallery-carousel" data-slide-to="2"></li>
                <li data-target="#gallery-carousel" data-slide-to="3"></li>
                <li data-target="#gallery-carousel" data-slide-to="4"></li>
                <li data-target="#gallery-carousel" data-slide-to="5"></li>
                <li data-target="#gallery-carousel" data-slide-to="6"></li>
                <li data-target="#gallery-carousel" data-slide-to="7"></li>
                <li data-target="#gallery-carousel" data-slide-to="8"></li>
                <li data-target="#gallery-carousel" data-slide-to="9"></li>
                <li data-target="#gallery-carousel" data-slide-to="10"></li>

            </ol>
          
            <div class="carousel-inner">
                <div class="item active">
                    <img src="Img/Slider/1.jpg" alt="Slider image">

                    <div class="carousel-caption intro-text">
                        
                    </div>

                </div>
               <div class="item">
                    <img src="Img/Slider/2.jpg"  alt="Slider image">
                    <div class="carousel-caption intro-text"></div>
                </div>

                <%--<div class="item">
                    <img src="Img/Slider/3.jpg" alt="Slider image">
                    <div class="carousel-caption intro-text"></div>

                </div>--%>
                
               
                <!-- end carousel-inner -->

                <a href="#gallery-carousel" class="left carousel-control" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a href="#gallery-carousel" class="right carousel-control" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>

            </div>
            <!-- end carousel -->
        </div>


    </header>
</asp:Content>
