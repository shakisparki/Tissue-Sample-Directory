<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="ShakirudeenDeveloperAssesment._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Welcome to the Tissue Sample Directory</h1>
        <p class="lead">This is an administrative interface to keep track of the number of samples with certain characteristics contained within a larger collection of samples.</p>
        <p><a href="About.aspx" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting Started</h2>
            <p>
                To get started, display a list of collections and view the details of their currently associated samples. If you are feeeling happy, why not add a new group of samples with matching characteristics to a collection?</p>
            <p>
                <a class="btn btn-default" href="Display.aspx">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Display Collections</h2>
            <p>
                Display a list of collections and drill into a collection’s record to view the details of their currently associated samples.</p> <br />
            <p>
                <a class="btn btn-default" href="Display.aspx">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Add New Samples</h2>
            <p>
                You can easily add a new group of samples with matching characteristics to a collection</p> <br /> <br />
            <p>
                <a class="btn btn-default" href="Populate.aspx">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
