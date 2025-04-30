Imports System.Data
Imports System.Data.SqlClient
Partial Class Default2
    Inherits System.Web.UI.Page

    'Variables base de datos SSP_RT
    Public Time_ini As Date
    'Public Time_exec As Integer
    'Public Time_stamp(255) As Date
    Public Prod(255) As Decimal
    Public Rech(255) As Decimal
    Public Scrap(255) As String
    Public Max_Scrap(255) As Decimal
    Public Prod_aut_2(2) As Decimal
    Public Rech_aut_2(2) As Decimal
    Public Estado(255) As Decimal
    Dim T_Paros(255, 16) As Integer
    Dim T_Paro(255) As Integer
    Dim Aux_paro_VPM(2) As Integer
    Public Id_maq As Decimal
    Public St_maquina As Integer
    Public St_maquina_text As String
    Public St_back_color As System.Drawing.Color
    Public St_fore_color As System.Drawing.Color

    Protected Sub Timer1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Timer1.Load
    End Sub

    Protected Sub Timer1_Tick(ByVal sender As Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        Dim Alarma(255) As Integer
        Dim Time_registro(255) As DateTime
        Dim Time_span(255) As TimeSpan
        Dim Error_com(255) As Integer
        '
        'Tiempo de ejecución inicial
        Time_ini = Now()
        Label4.Text = Time_ini
        '
        Timer1.Interval = 5100 'Posteriores consultas
        'Lee tabla T_RT_2 de SSP_RT
        Try
            Dim Conexion As SqlConnection
            Conexion = New SqlConnection("server=" & Application("Server_T_RT_2") & ";uid=user_ssp_r;pwd=user_ssp_r_1411;database=SSP_RT")
            Conexion.Open()
            Dim Datos_adapter As New SqlDataAdapter("SELECT Id_reg,Time_Stamp,Alarm,Prod,Rech,Estado," &
                                                    "T_Paro_1,T_Paro_2,T_Paro_3,T_Paro_4,T_Paro_5,T_Paro_6,T_Paro_7,T_Paro_8," &
                                                    "T_Paro_9,T_Paro_10,T_Paro_11,T_Paro_12,T_Paro_13,T_Paro_14,T_Paro_15,T_Paro_16" &
                                                    " FROM T_RT_2  WITH (NOLOCK) ", Conexion)
            Dim Datos_data_set As New DataSet
            Datos_adapter.Fill(Datos_data_set)
            Conexion.Close()
            For a = 0 To Datos_data_set.Tables(0).Rows.Count - 1
                Prod(Datos_data_set.Tables(0).Rows(a)(0)) = Datos_data_set.Tables(0).Rows(a)(3)
                Rech(Datos_data_set.Tables(0).Rows(a)(0)) = Datos_data_set.Tables(0).Rows(a)(4)
                Alarma(Datos_data_set.Tables(0).Rows(a)(0)) = Datos_data_set.Tables(0).Rows(a)(2)
                If Alarma(Datos_data_set.Tables(0).Rows(a)(0)) > 0 Then
                    Alarma(Datos_data_set.Tables(0).Rows(a)(0)) = 1
                End If
                Estado(Datos_data_set.Tables(0).Rows(a)(0)) = Datos_data_set.Tables(0).Rows(a)(5)
                Time_registro(Datos_data_set.Tables(0).Rows(a)(0)) = Datos_data_set.Tables(0).Rows(a)(1)
                Time_span(Datos_data_set.Tables(0).Rows(a)(0)) = Now() - Time_registro(Datos_data_set.Tables(0).Rows(a)(0))
                If Time_span(Datos_data_set.Tables(0).Rows(a)(0)).TotalSeconds > 60 Then
                    Error_com(Datos_data_set.Tables(0).Rows(a)(0)) = 1
                End If
                '
                T_Paros(Datos_data_set.Tables(0).Rows(a)(0), 1) = Datos_data_set.Tables(0).Rows(a)(6)
                T_Paros(Datos_data_set.Tables(0).Rows(a)(0), 2) = Datos_data_set.Tables(0).Rows(a)(7)
                T_Paros(Datos_data_set.Tables(0).Rows(a)(0), 3) = Datos_data_set.Tables(0).Rows(a)(8)
                T_Paros(Datos_data_set.Tables(0).Rows(a)(0), 4) = Datos_data_set.Tables(0).Rows(a)(9)
                T_Paros(Datos_data_set.Tables(0).Rows(a)(0), 5) = Datos_data_set.Tables(0).Rows(a)(10)
                T_Paros(Datos_data_set.Tables(0).Rows(a)(0), 6) = Datos_data_set.Tables(0).Rows(a)(11)
                T_Paros(Datos_data_set.Tables(0).Rows(a)(0), 7) = Datos_data_set.Tables(0).Rows(a)(12)
                T_Paros(Datos_data_set.Tables(0).Rows(a)(0), 8) = Datos_data_set.Tables(0).Rows(a)(13)
                T_Paros(Datos_data_set.Tables(0).Rows(a)(0), 9) = Datos_data_set.Tables(0).Rows(a)(14)
                T_Paros(Datos_data_set.Tables(0).Rows(a)(0), 10) = Datos_data_set.Tables(0).Rows(a)(15)
                T_Paros(Datos_data_set.Tables(0).Rows(a)(0), 11) = Datos_data_set.Tables(0).Rows(a)(16)
                T_Paros(Datos_data_set.Tables(0).Rows(a)(0), 12) = Datos_data_set.Tables(0).Rows(a)(17)
                T_Paros(Datos_data_set.Tables(0).Rows(a)(0), 13) = Datos_data_set.Tables(0).Rows(a)(18)
                T_Paros(Datos_data_set.Tables(0).Rows(a)(0), 14) = Datos_data_set.Tables(0).Rows(a)(19)
                T_Paros(Datos_data_set.Tables(0).Rows(a)(0), 15) = Datos_data_set.Tables(0).Rows(a)(20)
                T_Paros(Datos_data_set.Tables(0).Rows(a)(0), 16) = Datos_data_set.Tables(0).Rows(a)(21)
                '
            Next a
            '
            For a = 0 To Datos_data_set.Tables(0).Rows.Count - 1
                For b = 1 To 16
                    T_Paro(Datos_data_set.Tables(0).Rows(a)(0)) = T_Paro(Datos_data_set.Tables(0).Rows(a)(0)) + T_Paros(Datos_data_set.Tables(0).Rows(a)(0), b)
                Next b
            Next a
            '
            Aux_paro_VPM(1) = Datos_data_set.Tables(0).Rows(35)(6)
            Aux_paro_VPM(2) = Datos_data_set.Tables(0).Rows(36)(6)
            '
            Prod_aut_2(1) = Datos_data_set.Tables(0).Rows(35)(3) 'VPM32
            Prod_aut_2(2) = Datos_data_set.Tables(0).Rows(36)(3) 'VPM33
            Rech_aut_2(1) = Datos_data_set.Tables(0).Rows(35)(4) 'PBM32
            Rech_aut_2(2) = Datos_data_set.Tables(0).Rows(36)(4) 'PBM33
            '
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        '
        Consulta_max_scrap()
        '
        '*** Presenta datos ***
        '
        Label46.Text = Application("OnlineNow")
        '
        'MBF45 
        Id_maq = 115
        Label141.Text = CStr(Prod(Id_maq))
        Label156.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label171.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label171.BackColor = Drawing.Color.Black
                Label171.ForeColor = Drawing.Color.Red
            Else
                Label171.BackColor = Drawing.Color.Black
                Label171.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label171.Text = "00.0"
            Label171.BackColor = Drawing.Color.Black
            Label171.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton8.BackColor = St_back_color
        ' 
        'DETB11 
        Id_maq = 96
        Label153.Text = CStr(Prod(Id_maq))
        Label168.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label183.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label183.BackColor = Drawing.Color.Black
                Label183.ForeColor = Drawing.Color.Red
            Else
                Label183.BackColor = Drawing.Color.Black
                Label183.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label183.Text = "00.0"
            Label183.BackColor = Drawing.Color.Black
            Label183.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton10.BackColor = St_back_color
        '  
        'MDM43 
        Id_maq = 114
        Label142.Text = CStr(Prod(Id_maq))
        Label157.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label172.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label172.BackColor = Drawing.Color.Black
                Label172.ForeColor = Drawing.Color.Red
            Else
                Label172.BackColor = Drawing.Color.Black
                Label172.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label172.Text = "00.0"
            Label172.BackColor = Drawing.Color.Black
            Label172.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton9.BackColor = St_back_color
        '       
        'MBF44
        Id_maq = 98
        Label81.Text = CStr(Prod(Id_maq))
        Label92.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label103.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label103.BackColor = Drawing.Color.Black
                Label103.ForeColor = Drawing.Color.Red
            Else
                Label103.BackColor = Drawing.Color.Black
                Label103.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label103.Text = "00.0"
            Label103.BackColor = Drawing.Color.Black
            Label103.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton1.BackColor = St_back_color
        '      
        'MBM42
        Id_maq = 99
        Label85.Text = CStr(Prod(Id_maq))
        Label96.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label107.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label107.BackColor = Drawing.Color.Black
                Label107.ForeColor = Drawing.Color.Red
            Else
                Label107.BackColor = Drawing.Color.Black
                Label107.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label107.Text = "00.0"
            Label107.BackColor = Drawing.Color.Black
            Label107.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton3.BackColor = St_back_color
        '    
        'MBM43
        Id_maq = 113
        Label196.Text = CStr(Prod(Id_maq))
        Label197.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label198.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label198.BackColor = Drawing.Color.Black
                Label198.ForeColor = Drawing.Color.Red
            Else
                Label198.BackColor = Drawing.Color.Black
                Label198.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label198.Text = "00.0"
            Label198.BackColor = Drawing.Color.Black
            Label198.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton36.BackColor = St_back_color
        '    
        'VBM42
        Id_maq = 100
        Label87.Text = CStr(Prod(Id_maq))
        Label98.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label109.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label109.BackColor = Drawing.Color.Black
                Label109.ForeColor = Drawing.Color.Red
            Else
                Label109.BackColor = Drawing.Color.Black
                Label109.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label109.Text = "00.0"
            Label109.BackColor = Drawing.Color.Black
            Label109.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton4.BackColor = St_back_color
        '    
        'VBM43
        Id_maq = 112
        Label199.Text = CStr(Prod(Id_maq))
        Label200.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label201.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label201.BackColor = Drawing.Color.Black
                Label201.ForeColor = Drawing.Color.Red
            Else
                Label201.BackColor = Drawing.Color.Black
                Label201.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label201.Text = "00.0"
            Label201.BackColor = Drawing.Color.Black
            Label201.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton37.BackColor = St_back_color
        '       
        'MDM42
        Id_maq = 101
        Label83.Text = CStr(Prod(Id_maq))
        Label94.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label105.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label105.BackColor = Drawing.Color.Black
                Label105.ForeColor = Drawing.Color.Red
            Else
                Label105.BackColor = Drawing.Color.Black
                Label105.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label105.Text = "00.0"
            Label105.BackColor = Drawing.Color.Black
            Label105.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton2.BackColor = St_back_color
        '   
        'MKM603
        Id_maq = 104
        Label63.Text = CStr(Prod(Id_maq))
        Label64.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label65.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label65.BackColor = Drawing.Color.Black
                Label65.ForeColor = Drawing.Color.Red
            Else
                Label65.BackColor = Drawing.Color.Black
                Label65.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label65.Text = "00.0"
            Label65.BackColor = Drawing.Color.Black
            Label65.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton7.BackColor = St_back_color
        '       
        'MBF42
        Id_maq = 90
        Label16.Text = CStr(Prod(Id_maq))
        Label6.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label42.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label42.BackColor = Drawing.Color.Black
                Label42.ForeColor = Drawing.Color.Red
            Else
                Label42.BackColor = Drawing.Color.Black
                Label42.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label42.Text = "00.0"
            Label42.BackColor = Drawing.Color.Black
            Label42.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton11.BackColor = St_back_color
        '   
        'MBF43
        Id_maq = 92
        Label5.Text = CStr(Prod(Id_maq))
        Label7.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label43.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label43.BackColor = Drawing.Color.Black
                Label43.ForeColor = Drawing.Color.Red
            Else
                Label43.BackColor = Drawing.Color.Black
                Label43.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label43.Text = "00.0"
            Label43.BackColor = Drawing.Color.Black
            Label43.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton12.BackColor = St_back_color
        '      
        'MDM41
        Id_maq = 88
        Label82.Text = CStr(Prod(Id_maq))
        Label93.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label104.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label104.BackColor = Drawing.Color.Black
                Label104.ForeColor = Drawing.Color.Red
            Else
                Label104.BackColor = Drawing.Color.Black
                Label104.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label104.Text = "00.0"
            Label104.BackColor = Drawing.Color.Black
            Label104.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton13.BackColor = St_back_color
        '       
        'MBM41
        Id_maq = 89
        Label84.Text = CStr(Prod(Id_maq))
        Label95.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label106.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label106.BackColor = Drawing.Color.Black
                Label106.ForeColor = Drawing.Color.Red
            Else
                Label106.BackColor = Drawing.Color.Black
                Label106.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label106.Text = "00.0"
            Label106.BackColor = Drawing.Color.Black
            Label106.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton14.BackColor = St_back_color
        '     
        'VBM41
        Id_maq = 91
        Label86.Text = CStr(Prod(Id_maq))
        Label97.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label108.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label108.BackColor = Drawing.Color.Black
                Label108.ForeColor = Drawing.Color.Red
            Else
                Label108.BackColor = Drawing.Color.Black
                Label108.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label108.Text = "00.0"
            Label108.BackColor = Drawing.Color.Black
            Label108.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton15.BackColor = St_back_color
        '     
        '       
        'LINEA 4 - MT113
        Id_maq = 94
        Label90.Text = CStr(Prod(Id_maq))
        't. uParo mayor
        If T_Paro(94) >= T_Paro(37) And T_Paro(94) >= T_Paro(103) Then
            Label101.Text = Format(TimeSerial(0, 0, T_Paro(94)), "HH:mm:ss")
        End If
        If T_Paro(37) >= T_Paro(94) And T_Paro(37) >= T_Paro(103) Then
            Label101.Text = Format(TimeSerial(0, 0, T_Paro(37)), "HH:mm:ss")
        End If
        If T_Paro(103) >= T_Paro(94) And T_Paro(103) >= T_Paro(37) Then
            Label101.Text = Format(TimeSerial(0, 0, T_Paro(103)), "HH:mm:ss")
        End If
        'Scrap 37, 94 y 103
        Dim Prod_aux, Rech_aux As Integer
        Prod_aux = Prod(37) + Prod(94) + Prod(103)
        Rech_aux = Rech(37) + Rech(94) + Rech(103)
        If Prod_aux <> 0 Then
            Scrap(37) = Microsoft.VisualBasic.Left(CStr(Rech_aux / (Prod_aux + Rech_aux) * 100), 4)
            Label112.Text = Scrap(37)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label112.BackColor = Drawing.Color.Black
                Label112.ForeColor = Drawing.Color.Red
            Else
                Label112.BackColor = Drawing.Color.Black
                Label112.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label112.Text = "00.0"
            Label112.BackColor = Drawing.Color.Black
            Label112.ForeColor = Drawing.Color.Orange
        End If
        'Animacion MT113
        Id_maq = 94
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton18.BackColor = St_back_color
        '       
        'BPB31
        Id_maq = 64
        Label144.Text = CStr(Prod(Id_maq))
        Label159.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label174.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label174.BackColor = Drawing.Color.Black
                Label174.ForeColor = Drawing.Color.Red
            Else
                Label174.BackColor = Drawing.Color.Black
                Label174.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label174.Text = "00.0"
            Label174.BackColor = Drawing.Color.Black
            Label174.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton19.BackColor = St_back_color
        '    
        'BPT31
        Id_maq = 55
        Label148.Text = CStr(Prod(Id_maq))
        Label163.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label178.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label178.BackColor = Drawing.Color.Black
                Label178.ForeColor = Drawing.Color.Red
            Else
                Label178.BackColor = Drawing.Color.Black
                Label178.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label178.Text = "00.0"
            Label178.BackColor = Drawing.Color.Black
            Label178.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton20.BackColor = St_back_color
        '       
        'MSC11
        Id_maq = 108
        Label190.Text = CStr(Prod(Id_maq))
        Label191.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label192.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label192.BackColor = Drawing.Color.Black
                Label192.ForeColor = Drawing.Color.Red
            Else
                Label192.BackColor = Drawing.Color.Black
                Label192.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label192.Text = "00.0"
            Label192.BackColor = Drawing.Color.Black
            Label192.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton23.BackColor = St_back_color
        '     
        'DFB12
        Id_maq = 41
        Label150.Text = CStr(Prod(Id_maq))
        Label165.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label180.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label180.BackColor = Drawing.Color.Black
                Label180.ForeColor = Drawing.Color.Red
            Else
                Label180.BackColor = Drawing.Color.Black
                Label180.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label180.Text = "00.0"
            Label180.BackColor = Drawing.Color.Black
            Label180.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton32.BackColor = St_back_color
        '
        'CBM32
        Id_maq = 51
        Label193.Text = CStr(Prod(Id_maq))
        Label194.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label195.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label195.BackColor = Drawing.Color.Black
                Label195.ForeColor = Drawing.Color.Red
            Else
                Label195.BackColor = Drawing.Color.Black
                Label195.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label195.Text = "00.0"
            Label195.BackColor = Drawing.Color.Black
            Label195.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton34.BackColor = St_back_color
        '     
        'VPM32
        Id_maq = 3
        Label184.Text = CStr(Prod_aut_2(1))
        Label186.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If (Prod_aut_2(1) + Rech(Id_maq) + Rech_aut_2(1)) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr((Rech(Id_maq) + Rech_aut_2(1)) / (Prod_aut_2(1) + Rech(Id_maq) + Rech_aut_2(1)) * 100), 4)
            Label188.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label188.BackColor = Drawing.Color.Black
                Label188.ForeColor = Drawing.Color.Red
            Else
                Label188.BackColor = Drawing.Color.Black
                Label188.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label188.Text = "00.0"
            Label188.BackColor = Drawing.Color.Black
            Label188.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton21.BackColor = St_back_color
        '   
        'VPM33
        Id_maq = 82
        Label185.Text = CStr(Prod_aut_2(2))
        '
        T_Paro(Id_maq) = T_Paro(Id_maq) - Aux_paro_VPM(2)
        '
        Label187.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If (Prod_aut_2(2) + Rech(Id_maq) + Rech_aut_2(2)) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr((Rech(Id_maq) + Rech_aut_2(2)) / (Prod_aut_2(2) + Rech(Id_maq) + Rech_aut_2(2)) * 100), 4)
            Label189.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label189.BackColor = Drawing.Color.Black
                Label189.ForeColor = Drawing.Color.Red
            Else
                Label189.BackColor = Drawing.Color.Black
                Label189.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label189.Text = "00.0"
            Label189.BackColor = Drawing.Color.Black
            Label189.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton22.BackColor = St_back_color
        '       
        'MSC12
        Id_maq = 117
        Label2.Text = CStr(Prod(Id_maq))
        Label10.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label12.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label12.BackColor = Drawing.Color.Black
                Label12.ForeColor = Drawing.Color.Red
            Else
                Label12.BackColor = Drawing.Color.Black
                Label12.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label12.Text = "00.0"
            Label12.BackColor = Drawing.Color.Black
            Label12.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton31.BackColor = St_back_color
        '
        'MBF46
        Id_maq = 118
        Label14.Text = CStr(Prod(Id_maq))
        Label15.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label17.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label17.BackColor = Drawing.Color.Black
                Label17.ForeColor = Drawing.Color.Red
            Else
                Label17.BackColor = Drawing.Color.Black
                Label17.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label17.Text = "00.0"
            Label17.BackColor = Drawing.Color.Black
            Label17.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton27.BackColor = St_back_color
        '
        'BPT24
        Id_maq = 119
        Label9.Text = CStr(Prod(Id_maq))
        Label11.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label13.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label13.BackColor = Drawing.Color.Black
                Label13.ForeColor = Drawing.Color.Red
            Else
                Label13.BackColor = Drawing.Color.Black
                Label13.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label13.Text = "00.0"
            Label13.BackColor = Drawing.Color.Black
            Label13.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton5.BackColor = St_back_color
        '
        'MSC14
        Id_maq = 120
        Label18.Text = CStr(Prod(Id_maq))
        Label19.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label20.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label20.BackColor = Drawing.Color.Black
                Label20.ForeColor = Drawing.Color.Red
            Else
                Label20.BackColor = Drawing.Color.Black
                Label20.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label20.Text = "00.0"
            Label20.BackColor = Drawing.Color.Black
            Label20.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton25.BackColor = St_back_color
        '
        'LSD11
        Id_maq = 126
        Label36.Text = CStr(Prod(Id_maq))
        Label37.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label38.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label38.BackColor = Drawing.Color.Black
                Label38.ForeColor = Drawing.Color.Red
            Else
                Label38.BackColor = Drawing.Color.Black
                Label38.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label38.Text = "00.0"
            Label38.BackColor = Drawing.Color.Black
            Label38.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton6.BackColor = St_back_color
        '
        'MSC15
        Id_maq = 128
        Label47.Text = CStr(Prod(Id_maq))
        Label48.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label49.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label49.BackColor = Drawing.Color.Black
                Label49.ForeColor = Drawing.Color.Red
            Else
                Label49.BackColor = Drawing.Color.Black
                Label49.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label49.Text = "00.0"
            Label49.BackColor = Drawing.Color.Black
            Label49.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton28.BackColor = St_back_color
        '
        'MBF48
        Id_maq = 129
        Label39.Text = CStr(Prod(Id_maq))
        Label44.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label45.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label45.BackColor = Drawing.Color.Black
                Label45.ForeColor = Drawing.Color.Red
            Else
                Label45.BackColor = Drawing.Color.Black
                Label45.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label45.Text = "00.0"
            Label45.BackColor = Drawing.Color.Black
            Label45.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton26.BackColor = St_back_color
        '
        'MBF49
        Id_maq = 131
        Label51.Text = CStr(Prod(Id_maq))
        Label52.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label53.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label53.BackColor = Drawing.Color.Black
                Label53.ForeColor = Drawing.Color.Red
            Else
                Label53.BackColor = Drawing.Color.Black
                Label53.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label53.Text = "00.0"
            Label53.BackColor = Drawing.Color.Black
            Label53.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton29.BackColor = St_back_color
        '
        'MDM44
        Id_maq = 130
        Label54.Text = CStr(Prod(Id_maq))
        Label55.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label56.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label56.BackColor = Drawing.Color.Black
                Label56.ForeColor = Drawing.Color.Red
            Else
                Label56.BackColor = Drawing.Color.Black
                Label56.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label56.Text = "00.0"
            Label56.BackColor = Drawing.Color.Black
            Label56.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton30.BackColor = St_back_color
        '
        'MBM44
        Id_maq = 132
        Label57.Text = CStr(Prod(Id_maq))
        Label58.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label59.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label59.BackColor = Drawing.Color.Black
                Label59.ForeColor = Drawing.Color.Red
            Else
                Label59.BackColor = Drawing.Color.Black
                Label59.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label59.Text = "00.0"
            Label59.BackColor = Drawing.Color.Black
            Label59.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton33.BackColor = St_back_color
        '
        'VBM44
        Id_maq = 133
        Label60.Text = CStr(Prod(Id_maq))
        Label61.Text = Format(TimeSerial(0, 0, T_Paro(Id_maq)), "HH:mm:ss")
        If Prod(Id_maq) <> 0 Then
            Scrap(Id_maq) = Microsoft.VisualBasic.Left(CStr(Rech(Id_maq) / (Prod(Id_maq) + Rech(Id_maq)) * 100), 4)
            Label62.Text = Scrap(Id_maq)
            'Control Scrap
            If CDec(Scrap(Id_maq)) > Max_Scrap(Id_maq) Then
                Label62.BackColor = Drawing.Color.Black
                Label62.ForeColor = Drawing.Color.Red
            Else
                Label62.BackColor = Drawing.Color.Black
                Label62.ForeColor = Drawing.Color.Orange
            End If
        Else
            Label62.Text = "00.0"
            Label62.BackColor = Drawing.Color.Black
            Label62.ForeColor = Drawing.Color.Orange
        End If
        If Error_com(Id_maq) = 0 Then
            St_maquina = Alarma(Id_maq)
        Else
            St_maquina = 2
        End If
        Sub_st_maquina()
        LinkButton35.BackColor = St_back_color
        '
    End Sub
    Sub Sub_st_maquina()
        '
        If Estado(Id_maq) <> 9 Then
            Select Case Estado(Id_maq)
                Case 0 ' No planificada
                    St_maquina_text = "NO PLANIFICADA"
                    St_back_color = Drawing.Color.LightGray
                Case 1 ' Mantenimiento preventivo
                    St_maquina_text = "MANT. PREVENTIVO"
                    St_back_color = Drawing.Color.Plum
                Case 3 ' Falta material
                    St_maquina_text = "FALTA MATERIAL"
                    St_back_color = Drawing.Color.SkyBlue
                Case 4 ' Material defectuoso
                    St_maquina_text = "MAT. DEFECTUOSO"
                    St_back_color = Drawing.Color.SkyBlue
                Case 5 ' Cambio producción
                    St_maquina_text = "CAMBIO PRODUCCIÓN"
                    St_back_color = Drawing.Color.MediumOrchid
                Case 9 ' Activa
                    St_maquina_text = "ACTIVA"
                    St_back_color = Drawing.Color.White
                Case 13 ' Pruebas
                    St_maquina_text = "PRUEBAS IPI"
                    St_back_color = Drawing.Color.Sienna
                Case 14 ' Mejoras
                    St_maquina_text = "MEJORAS"
                    St_back_color = Drawing.Color.DarkGoldenrod
                Case 15 ' TPM
                    St_maquina_text = "TPM"
                    St_back_color = Drawing.Color.LightGreen
                Case 16 ' Espera producción
                    St_maquina_text = "ESPERA PRODUCCIÓN"
                    St_back_color = Drawing.Color.DarkOrange
                Case 17 ' Intervención producción
                    St_maquina_text = "INTERV. PRODUCCIÓN"
                    St_back_color = Drawing.Color.SandyBrown
                Case 18 ' Espera mantenimiento
                    St_maquina_text = "ESPERA MANTENIM."
                    St_back_color = Drawing.Color.SteelBlue
                Case 19 ' Intervención mantenimiento
                    St_maquina_text = "INTERV. MANTENIM."
                    St_back_color = Drawing.Color.LightBlue
                '****************
                '*** Eliminar ***
                Case 2 ' Falta personal
                    St_maquina_text = "FALTA PERSONAL"
                    St_back_color = Drawing.Color.SkyBlue
                Case 6 ' Intervención
                    St_maquina_text = "INTERVENCIÓN"
                    St_back_color = Drawing.Color.SkyBlue
                Case 7 ' Esperando intervención
                    St_maquina_text = "ESPERA INTERV."
                    St_back_color = Drawing.Color.SkyBlue
                Case 8 ' Pausa
                    St_maquina_text = "PAUSA"
                    St_back_color = Drawing.Color.SkyBlue
            End Select
        End If
        '
        If Estado(Id_maq) = 9 Then
            Select Case St_maquina
                Case 0
                    St_maquina_text = "EN MARCHA"
                    St_back_color = Drawing.Color.GreenYellow
                    St_fore_color = Drawing.Color.Black
                Case 1
                    St_maquina_text = "PARADA"
                    St_back_color = Drawing.Color.Red
                    St_fore_color = Drawing.Color.Black
                Case 2
                    St_maquina_text = "NO COMUNICA"
                    St_back_color = Drawing.Color.Yellow
                    St_fore_color = Drawing.Color.Black
            End Select
        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Abre base de datos
        Timer1.Interval = 100 'Primera consulta
        If Not IsPostBack Then
            Label22.BackColor = Drawing.Color.GreenYellow
            Label23.BackColor = Drawing.Color.Red
            Label24.BackColor = Drawing.Color.LightBlue
            Label25.BackColor = Drawing.Color.SteelBlue
            Label26.BackColor = Drawing.Color.SandyBrown
            Label27.BackColor = Drawing.Color.DarkOrange
            Label28.BackColor = Drawing.Color.MediumOrchid
            Label29.BackColor = Drawing.Color.Plum
            Label30.BackColor = Drawing.Color.LightGreen
            Label31.BackColor = Drawing.Color.Sienna
            Label32.BackColor = Drawing.Color.DarkGoldenrod
            Label33.BackColor = Drawing.Color.SkyBlue
            Label50.BackColor = Drawing.Color.SkyBlue
            Label34.BackColor = Drawing.Color.LightGray
            Label35.BackColor = Drawing.Color.Yellow
        End If
    End Sub

    Sub Consulta_max_scrap()
        '
        Dim Num_maquinas As Integer
        Try
            Dim Conexion As SqlConnection
            Conexion = New SqlConnection("server=CAL-BAR2-CTDP1;uid=user_ssp;database=CALMAR")
            Conexion.Open()
            Dim Datos_adapter As New SqlDataAdapter("SELECT MaqID,Max_Scrap FROM T_Conf_Maquina " &
                           "WHERE CS_Max_Scrap=1", Conexion)
            Dim Datos_data_set As New DataSet
            Datos_adapter.Fill(Datos_data_set)
            Conexion.Close()
            Num_maquinas = Datos_data_set.Tables(0).Rows.Count - 1
            For a = 0 To Num_maquinas
                Max_Scrap((Datos_data_set.Tables(0).Rows(a)(0))) = CDec(Datos_data_set.Tables(0).Rows(a)(1))
            Next a
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        '    
    End Sub
    Protected Sub LinkButton18_Click(sender As Object, e As EventArgs) Handles LinkButton18.Click
        Response.Redirect("~/maquina-grupos.aspx?grupo=MAESTRO&id1=37&n1=MBM32&id2=103&n2=VBM34&id3=94&n3=MT113")
    End Sub
End Class
