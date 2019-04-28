﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContentAssignment.aspx.cs" Inherits="ContentAssignment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 64%;
            height: 76px;
            margin-left: 21px;
        }
        .auto-style2 {
            width: 64%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="auto-style1">
                Choose Course</td>
            <td class="auto-style1">
                <asp:DropDownList ID="ddlCourse" runat="server" DataSourceID="SqlDataSource2" 
                    DataTextField="COURSE_ID" DataValueField="COURSE_ID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" SelectCommand="SELECT DISTINCT([COURSE_ID]) FROM [ASSIGNMENTS]"></asp:SqlDataSource>
                <asp:Button ID="btnAdd" runat="server" CausesValidation="False" 
                     Text="Add" OnClick="btnAdd_Click" />
                <asp:TextBox ID="txtCourse" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1">
                </td>
        </tr>
        <tr>
            <td>
                Choose Assignment</td>
            <td>
                <asp:DropDownList ID="ddlAssignment" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="ASSIGNMENT_NO" DataValueField="ASSIGNMENT_NO">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" SelectCommand="SELECT [ASSIGNMENT_NO] FROM [ASSIGNMENTS]"></asp:SqlDataSource>
                <asp:Button ID="btnAdd2" runat="server" CausesValidation="False" 
                     Text="Add" OnClick="btnAdd2_Click" />
                <asp:TextBox ID="txtAssignment" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Content</td>
            <td>
                <asp:Label ID="lblContent" runat="server"></asp:Label>
            </td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Answer Here</td>
            <td>
                <asp:TextBox ID="txtAnswer" runat="server" Height="63px" TextMode="MultiLine" 
                    Width="231px"></asp:TextBox>
            </td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
 
        
        <tr>
            <td class="style2">
                <asp:Literal ID="ltrlMessage" runat="server"></asp:Literal>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" SelectCommand="SELECT * FROM [ANSWERS]"></asp:SqlDataSource>
            </td>
            <td class="style2">
                <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" />
            </td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        
    </table>
    </asp:Content>

