﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main2.master" AutoEventWireup="true" CodeFile="bootMastertest.aspx.cs" Inherits="bootMastertest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <link href="BScss/bootstrap.min.css" rel="stylesheet" />
    <script src="BSJS/bootstrap.min.js"></script>
    <div class="container">
  <h2>Alerts</h2>
  <div class="alert alert-success">
    <strong>Success!</strong> This alert box could indicate a successful or positive action.
  </div>
  <div class="alert alert-info">
    <strong>Info!</strong> This alert box could indicate a neutral informative change or action.
  </div>
  <div class="alert alert-warning">
    <strong>Warning!</strong> This alert box could indicate a warning that might need attention.
  </div>
  <div class="alert alert-danger">
    <strong>Danger!</strong> This alert box could indicate a dangerous or potentially negative action.
  </div>
</div>
</asp:Content>

