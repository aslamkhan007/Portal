Imports System.Data
Imports System.Data.SqlClient
Partial Class Payroll_Jct_Payroll_Employee_Personal_Info
    Inherits System.Web.UI.Page
    Dim Obj As Connection = New Connection
    Dim SqlPass As String
    Dim empcode As String
    'DataTable Menus = New DataTable()
    Dim Dt_EmpData As DataTable



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Response.Cache.SetExpires(Now.AddSeconds(-1))
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")

        'If (Session("empcode").ToString <> "") Then
        '    empcode = Session("empcode")
        'Else
        '    Response.Redirect("~/login.aspx")
        'End If

        If Not (Page.IsPostBack) Then
            BindMenu()
        End If
    End Sub


    Private Sub BindMenu()
        'Dt_EmpData = GetData("Jct_Payroll_Birthday_Portal_Report  '" & Session("EmpCode") & "'")
        Dt_EmpData = GetData("Jct_Payroll_Employee_Personal_Info_A   '" & Session("EmpCode") & "'")
        Dim view As DataView = New DataView(Dt_EmpData)

        Me.dlstEmp.DataSource = view
        Me.dlstEmp.DataBind()

    End Sub

    Private Function GetData(ByVal query As String) As DataTable

        Dim con As SqlConnection = New SqlConnection(Obj.Connection.ConnectionString)
        Dim dt As DataTable = New DataTable
        Dim cmd As SqlCommand = New SqlCommand(query)
        Dim sda As SqlDataAdapter = New SqlDataAdapter
        cmd.CommandType = CommandType.Text
        cmd.Connection = con
        sda.SelectCommand = cmd
        sda.Fill(dt)
        Return dt
    End Function

    Private Sub Payroll_Jct_Payroll_Employee_Personal_Info_Unload(sender As Object, e As EventArgs) Handles Me.Unload

        Obj.Connection.Dispose()
        '        GC.Collect();
        'GC.WaitForPendingFinalizers();
        GC.Collect()
        GC.WaitForPendingFinalizers()

    End Sub
End Class
