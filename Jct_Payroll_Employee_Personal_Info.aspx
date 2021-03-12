<%@ Page Title="" Language="VB"  AutoEventWireup="false" CodeFile="Jct_Payroll_Employee_Personal_Info.aspx.vb" Inherits="Payroll_Jct_Payroll_Employee_Personal_Info" %>

<%--<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">--%>
    <style type="text/css" media="print">
body {
  text-align: center;
  background: lightblue;
}

.btn {
  display: inline-block;
  margin: 1em;
  text-transform: uppercase;
  padding: 1em 1.5em;
  background: none;
  color:darkblue;  
  font-weight: bold;
  position: relative;
  transition:color 0.25s ease;
  border:3px solid white;
}

.btn:hover {
  color:red;
}

.btn::after {
  position: absolute;
  content: '';
  top:0;
  left: 0;
  width: 0;
  height: 100%;
  background-color: white;
  transform-origin:left;
  transition:width 0.25s ease;
  z-index:-1;
}

.btn:hover::after {
  width: 100%;
}
  </style>
    <html>
        <body>
    <div class="container">
    <table style="width: 100%; " cellpadding="2" cellspacing="2" >
        <tr>
            <td colspan="2">
                    <asp:Label ID="Label16" runat="server" Text="Employee Personel Info" CssClass="content-sub-heading"></asp:Label>
            </td>
        </tr>
        <tr>
            <td  colspan="2" class="table-responsive">
                <asp:DataList ID="dlstEmp" runat="server" RepeatColumns="1" RepeatDirection="Horizontal" Width="90%" CellPadding="0" CellSpacing="0">
                    <ItemTemplate>
                        <table  class="tblSub">
                            <tr >
                                <td style= "vertical-align:top;" class="CellWidth30">
                                    <b><asp:Label ID="Label3" Text='<%#Eval("Particulars") %>' runat="server"></asp:Label></b>
                                </td>
                                <td  style= "vertical-align:top;" class="CellWidth60">
                                    <asp:Label ID="Label2" Text='<%#Eval("Values") %>' runat="server"></asp:Label>
                                </td>
                                
                            </tr>
                           
                        </table>
                       
                    </ItemTemplate>
                </asp:DataList>

            </td>

        </tr>
        
    </table>
        </div>




<button class="btn">button</button>
        </body>

    </html>









<%--</asp:Content>--%>

