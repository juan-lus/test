<%@ Page Title="" Language="VB" MasterPageFile="~/masterpage.master" AutoEventWireup="false" CodeFile="resumen.aspx.vb" Inherits="Default2" Culture="auto" UICulture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        #Button4
        {
            width: 85px;
            z-index: 1;
            left: 739px;
            top: 715px;
            position: absolute;
        }
    </style>

    <script language="javascript" type="text/javascript">
// <!CDATA[

        function Button4_onclick() {
            window.history.back()   
        }
              
// ]]>
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
   
     <asp:Label ID="Label203" runat="server" 
                style="z-index: 1; left: 1069px; top: 135px; position: absolute; font-size: medium; font-family: Arial; font-weight: 700; color: #FFFFFF; " 
                Text="t. uParo"></asp:Label>
    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        
          <asp:Timer ID="Timer1" runat="server">
            </asp:Timer>
              
            <asp:Label ID="Label90" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 125px; top: 640px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text=" ??????"></asp:Label>

            <asp:Label ID="Label14" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 125px; top: 670px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text=" ??????"></asp:Label>

            <asp:Label ID="Label199" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 125px; top: 550px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text="??????"></asp:Label>
            <asp:Label ID="Label60" runat="server" BorderStyle="Solid" 
    style="z-index: 1; left: 125px; top: 580px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
    Text="??????"></asp:Label>
            <asp:Label ID="Label87" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 125px; top: 520px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text="??????"></asp:Label>
            <asp:Label ID="Label86" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 125px; top: 490px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text=" ??????"></asp:Label>
            <asp:Label ID="Label196" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 125px; top: 430px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text="??????"></asp:Label>
            <asp:Label ID="Label57" runat="server" BorderStyle="Solid" 
    style="z-index: 1; left: 125px; top: 460px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
    Text="??????"></asp:Label>
            <asp:Label ID="Label85" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 125px; top: 400px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text="??????"></asp:Label>
            <asp:Label ID="Label84" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 125px; top: 370px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text=" ??????"></asp:Label>
            <asp:Label ID="Label83" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 545px; top: 190px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text="??????"></asp:Label>
            <asp:Label ID="Label82" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 545px; top: 160px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text=" ??????"></asp:Label>
            <asp:Label ID="Label81" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 125px; top: 220px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text="??????"></asp:Label>
            <asp:Label ID="Label5" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 125px; top: 190px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text=" ??????"></asp:Label>
            
            <asp:LinkButton ID="LinkButton22" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                PostBackUrl="~/maquina.aspx?Id=82&amp;Name=VPM33&amp;Ori=1" 
               style="z-index: 1; left: 440px; top: 370px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">PYVPM33</asp:LinkButton>
                
            <asp:LinkButton ID="LinkButton34" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                PostBackUrl="~/maquina.aspx?Id=51&amp;Name=CBM32&amp;Ori=1" 
                 style="z-index: 1; left: 440px; top: 310px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">CBM32</asp:LinkButton>
            <asp:LinkButton ID="LinkButton21" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                PostBackUrl="~/maquina.aspx?Id=3&amp;Name=VPM32&amp;Ori=1" 
                style="z-index: 1; left: 440px; top: 340px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">PYVPM32</asp:LinkButton>
            
            <asp:LinkButton ID="LinkButton10" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                PostBackUrl="~/maquina.aspx?Id=96&amp;Name=DETB11&amp;Ori=1" 
                style="z-index: 1; left: 440px; top: 490px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">DETB11</asp:LinkButton>
                
            <asp:LinkButton ID="LinkButton9" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                PostBackUrl="~/maquina.aspx?Id=114&amp;Name=MDM43&amp;Ori=1" 
                style="z-index: 1; left: 440px; top: 220px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">MDM43</asp:LinkButton>
           
              <asp:LinkButton ID="LinkButton30" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                PostBackUrl="~/maquina.aspx?Id=130&amp;Name=MDM44&amp;Ori=1" 
                style="z-index: 1; left: 440px; top: 250px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">MDM44</asp:LinkButton>

            <asp:LinkButton ID="LinkButton8" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                PostBackUrl="~/maquina.aspx?Id=115&amp;Name=MBF45&amp;Ori=1" 
                style="z-index: 1; left: 20px; top: 250px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">MBF45</asp:LinkButton>

                <asp:LinkButton ID="LinkButton26" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                PostBackUrl="~/maquina.aspx?Id=129&amp;Name=MBF48&amp;Ori=1" 
                style="z-index: 1; left: 20px; top: 280px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">MBF48</asp:LinkButton>

              <asp:LinkButton ID="LinkButton29" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                PostBackUrl="~/maquina.aspx?Id=131&amp;Name=MBF49&amp;Ori=1" 
                style="z-index: 1; left: 20px; top: 310px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">MBF49</asp:LinkButton>
                            
            <asp:LinkButton ID="LinkButton23" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                PostBackUrl="~/maquina.aspx?Id=108&amp;Name=MSC11&amp;Ori=1" 
                 style="z-index: 1; left: 440px; top: 520px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">MSC11</asp:LinkButton>

            <asp:LinkButton ID="LinkButton31" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                PostBackUrl="~/maquina.aspx?Id=117&amp;Name=MSC12&amp;Ori=1" 
                 style="z-index: 1; left: 440px; top: 550px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">MSC12</asp:LinkButton>

             <asp:LinkButton ID="LinkButton25" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                PostBackUrl="~/maquina.aspx?Id=120&amp;Name=MSC14&amp;Ori=1" 
                 style="z-index: 1; left: 440px; top: 580px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">MSC14</asp:LinkButton>

               <asp:LinkButton ID="LinkButton28" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                PostBackUrl="~/maquina.aspx?Id=128&amp;Name=MSC15&amp;Ori=1" 
                 style="z-index: 1; left: 440px; top: 610px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">MSC15</asp:LinkButton>
                        
            <asp:LinkButton ID="LinkButton7" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                PostBackUrl="~/maquina.aspx?Id=104&amp;Name=MKM603&amp;Ori=1" 
                style="z-index: 1; left: 845px; top: 430px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">MKM603</asp:LinkButton>
                
            <asp:LinkButton ID="LinkButton6" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                PostBackUrl="~/maquina.aspx?Id=126&amp;Name=LSD11&amp;Ori=1" 
                style="z-index: 1; left: 440px; top: 430px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">LSD11</asp:LinkButton>

            <asp:LinkButton ID="LinkButton32" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                PostBackUrl="~/maquina.aspx?Id=41&amp;Name=DFB12&amp;Ori=1" 
                style="z-index: 1; left: 440px; top: 460px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">DFB12</asp:LinkButton>
                
            <asp:LinkButton ID="LinkButton5" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                PostBackUrl="~/maquina.aspx?Id=119&amp;Name=BPT24&amp;Ori=1"                 
                style="z-index: 1; left: 845px; top: 220px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">BPT24</asp:LinkButton>

            <asp:LinkButton ID="LinkButton16" runat="server" BackColor="#CCCCCC" 
    BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
    PostBackUrl="~/maquina.aspx?Id=134&amp;Name=REMO01&amp;Ori=1"                 
    style="z-index: 1; left: 845px; top: 310px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">REMO01</asp:LinkButton>

                    <asp:LinkButton ID="LinkButton17" runat="server" BackColor="#CCCCCC" 
BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
PostBackUrl="~/maquina.aspx?Id=135&amp;Name=REFI01&amp;Ori=1"                 
style="z-index: 1; left: 845px; top: 340px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">REFI01</asp:LinkButton>

            <asp:LinkButton ID="LinkButton20" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                PostBackUrl="~/maquina.aspx?Id=55&amp;Name=BPT31&amp;Ori=1"                 
                style="z-index: 1; left: 845px; top: 190px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">BPT31</asp:LinkButton>
                
            <asp:LinkButton ID="LinkButton19" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                PostBackUrl="~/maquina.aspx?Id=64&amp;Name=BPB31&amp;Ori=1" 
                style="z-index: 1; left: 845px; top: 160px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">BPB31</asp:LinkButton>
                       
            <asp:LinkButton ID="LinkButton18" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                style="z-index: 1; left: 20px; top: 640px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">LINEA 4</asp:LinkButton>

               <asp:LinkButton ID="LinkButton27" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                PostBackUrl="~/maquina.aspx?Id=118&amp;Name=MBF46&amp;Ori=1" 
                style="z-index: 1; left: 20px; top: 670px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">MBF46</asp:LinkButton>
                
            <asp:LinkButton ID="LinkButton37" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                PostBackUrl="~/maquina.aspx?Id=112&amp;Name=VBM43&amp;Ori=1" 
                style="z-index: 1; left: 20px; top: 550px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">VBM43</asp:LinkButton>
    
            <asp:LinkButton ID="LinkButton35" runat="server" BackColor="#CCCCCC" 
    BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
    PostBackUrl="~/maquina.aspx?Id=133&amp;Name=VBM44&amp;Ori=1" 
    style="z-index: 1; left: 20px; top: 580px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">VBM44</asp:LinkButton>

            <asp:LinkButton ID="LinkButton4" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                PostBackUrl="~/maquina.aspx?Id=100&amp;Name=VBM42&amp;Ori=1" 
                style="z-index: 1; left: 20px; top: 520px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">VBM42</asp:LinkButton>

            <asp:LinkButton ID="LinkButton15" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                 style="z-index: 1; left: 20px; top: 490px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;" 
                PostBackUrl="~/maquina.aspx?Id=91&amp;Name=VBM41&amp;Ori=1">VBM41</asp:LinkButton>
            
            <asp:LinkButton ID="LinkButton36" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                PostBackUrl="~/maquina.aspx?Id=113&amp;Name=MBM43&amp;Ori=1" 
                 style="z-index: 1; left: 20px; top: 430px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">MBM43</asp:LinkButton>
            
            <asp:LinkButton ID="LinkButton33" runat="server" BackColor="#CCCCCC" 
    BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
    PostBackUrl="~/maquina.aspx?Id=132&amp;Name=MBM44&amp;Ori=1" 
     style="z-index: 1; left: 20px; top: 460px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">MBM44</asp:LinkButton>
          
            <asp:LinkButton ID="LinkButton3" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                PostBackUrl="~/maquina.aspx?Id=99&amp;Name=MBM42&amp;Ori=1" 
                style="z-index: 1; left: 20px; top: 400px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">MBM42</asp:LinkButton>
            
            <asp:Label ID="Label193" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 545px; top:310px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text=" ??????"></asp:Label>
            <asp:Label ID="Label184" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 545px; top:340px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text=" ??????"></asp:Label>
                        
            <asp:Label ID="Label112" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 335px; top: 640px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px; right: 955px;" 
                Text=" ??.?"></asp:Label>

              <asp:Label ID="Label17" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 335px; top: 670px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px; right: 955px;" 
                Text=" ??.?"></asp:Label>

            <asp:Label ID="Label201" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 335px; top: 550px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px; right: 955px;" 
                Text="??.?"></asp:Label>

             <asp:Label ID="Label62" runat="server" BorderStyle="Solid" 
     style="z-index: 1; left: 335px; top: 580px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px; right: 955px;" 
     Text="??.?"></asp:Label>

            <asp:Label ID="Label109" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 335px; top: 520px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px; right: 955px;" 
                Text="??.?"></asp:Label>
            <asp:Label ID="Label108" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 335px; top: 490px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px; right: 955px;" 
                Text=" ??.?"></asp:Label>
            <asp:Label ID="Label198" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 335px; top: 430px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px; right: 955px;" 
                Text="??.?"></asp:Label>
            <asp:Label ID="Label59" runat="server" BorderStyle="Solid" 
    style="z-index: 1; left: 335px; top: 460px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px; right: 955px;" 
    Text="??.?"></asp:Label>
            <asp:Label ID="Label107" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 335px; top: 400px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px; right: 955px;" 
                Text="??.?"></asp:Label>
            <asp:Label ID="Label106" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 335px; top: 370px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px; right: 955px;" 
                Text=" ??.?"></asp:Label>
            <asp:Label ID="Label105" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 755px; top: 190px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px; right: 955px;" 
                Text="??.?"></asp:Label>
            <asp:Label ID="Label104" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 755px; top: 160px; position: absolute; font-size: large; font-family: Arial; width: 57px; height: 22px; right: 955px;" 
                Text=" ??.?"></asp:Label>
            <asp:Label ID="Label103" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 335px; top: 220px; position: absolute; font-size: large; font-family: Arial; width: 57px; height: 22px; right: 955px;" 
                Text="??.?"></asp:Label>
            <asp:Label ID="Label43" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 335px; top: 190px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px; right: 955px;" 
                Text="??.?"></asp:Label>
             
            <asp:Label ID="Label189" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 755px; top: 370px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px; right: 539px;" 
                Text=" ??.?"></asp:Label>
             
            <asp:Label ID="Label192" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 755px; top: 520px; position: absolute; font-size: large; font-family: Arial; width: 57px; height: 22px; right: 539px;" 
                Text="??.?"></asp:Label>

            <asp:Label ID="Label12" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 755px; top: 550px; position: absolute; font-size: large; font-family: Arial; width: 57px; height: 22px; right: 539px;" 
                Text="??.?"></asp:Label>

             <asp:Label ID="Label20" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 755px; top: 580px; position: absolute; font-size: large; font-family: Arial; width: 57px; height: 22px; right: 539px;" 
                Text="??.?"></asp:Label>

             <asp:Label ID="Label49" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 755px; top: 610px; position: absolute; font-size: large; font-family: Arial; width: 57px; height: 22px; right: 539px;" 
                Text="??.?"></asp:Label>

            <asp:Label ID="Label195" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 755px; top: 310px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px; right: 539px;" 
                Text=" ??.?"></asp:Label>
            <asp:Label ID="Label188" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 755px; top: 340px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px; right: 539px;" 
                Text=" ??.?"></asp:Label>
            <asp:Label ID="Label183" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 755px; top: 490px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px; right: 539px;" 
                Text="??.?"></asp:Label>
             

            <asp:Label ID="Label38" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 755px; top: 430px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px; right: 539px;" 
                Text=" ??.?"></asp:Label>
            <asp:Label ID="Label180" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 755px; top: 460px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px; right: 539px;" 
                Text=" ??.?"></asp:Label>
            <asp:Label ID="Label178" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 1160px; top: 190px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px; right: 539px;" 
                Text=" ??.?"></asp:Label>
                <asp:Label ID="Label13" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 1160px; top: 220px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px; right: 539px;" 
                Text=" ??.?"></asp:Label>

             <asp:Label ID="Label68" runat="server" BorderStyle="Solid" 
 style="z-index: 1; left: 1160px; top: 310px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px; right: 539px;" 
 Text=" ??.?"></asp:Label>

                        <asp:Label ID="Label71" runat="server" BorderStyle="Solid" 
style="z-index: 1; left: 1160px; top: 340px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px; right: 539px;" 
Text=" ??.?"></asp:Label>

            <asp:Label ID="Label174" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 1160px; top: 160px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px;" 
                Text=" ??.?"></asp:Label>
            <asp:Label ID="Label172" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 755px; top: 220px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px;" 
                Text="??.?"></asp:Label>
            <asp:Label ID="Label56" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 755px; top: 250px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px;" 
                Text="??.?"></asp:Label>
            <asp:Label ID="Label171" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 335px; top: 250px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px;" 
                Text="??.?"></asp:Label>
             <asp:Label ID="Label45" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 335px; top: 280px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px;" 
                Text="??.?"></asp:Label>
             <asp:Label ID="Label53" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 335px; top: 310px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px;" 
                Text="??.?"></asp:Label>
                      
            <asp:Label ID="Label65" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 1160px; top: 430px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px;" 
                Text="??.?"></asp:Label>
             
            <asp:Label ID="Label42" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 335px; top: 160px; position: absolute; font-size: large; font-family: Arial;  width: 57px; height: 22px;" 
                Text=" ??.?"></asp:Label>
               
            <asp:Label ID="Label101" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 245px; top: 640px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text=" ?????"></asp:Label>

             <asp:Label ID="Label15" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 245px; top: 670px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text=" ?????"></asp:Label>

            <asp:Label ID="Label200" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 245px; top: 550px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text="?????"></asp:Label>

            <asp:Label ID="Label61" runat="server" BorderStyle="Solid" 
    style="z-index: 1; left: 245px; top: 580px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
    Text="?????"></asp:Label>

            <asp:Label ID="Label98" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 245px; top: 520px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text="?????"></asp:Label>
            <asp:Label ID="Label97" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 245px; top: 490px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text=" ?????"></asp:Label>
            <asp:Label ID="Label197" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 245px; top: 430px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text="?????"></asp:Label>
            <asp:Label ID="Label58" runat="server" BorderStyle="Solid" 
    style="z-index: 1; left: 245px; top: 460px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
    Text="?????"></asp:Label>
            <asp:Label ID="Label96" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 245px; top: 400px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text="?????"></asp:Label>
            <asp:Label ID="Label95" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 245px; top: 370px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text=" ?????"></asp:Label>
            <asp:Label ID="Label94" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 665px; top: 190px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text="?????"></asp:Label>
            <asp:Label ID="Label93" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 665px; top: 160px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text=" ?????"></asp:Label>
            <asp:Label ID="Label92" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 245px; top: 220px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text="?????"></asp:Label>
            <asp:Label ID="Label7" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 245px; top: 190px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text="?????"></asp:Label>
            <asp:Label ID="Label187" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 665px; top: 370px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text=" ?????"></asp:Label>

            <asp:Label ID="Label191" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 665px; top: 520px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text="?????"></asp:Label>

            <asp:Label ID="Label10" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 665px; top: 550px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text="?????"></asp:Label>

             <asp:Label ID="Label19" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 665px; top: 580px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text="?????"></asp:Label>

             <asp:Label ID="Label48" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 665px; top: 610px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text="?????"></asp:Label>

            <asp:Label ID="Label194" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 665px; top: 310px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text=" ?????"></asp:Label>
            <asp:Label ID="Label186" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 665px; top: 340px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text=" ?????"></asp:Label>
            <asp:Label ID="Label168" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 665px; top: 490px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text="?????"></asp:Label>

            <asp:Label ID="Label37" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 665px; top: 430px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text=" ?????"></asp:Label>
            <asp:Label ID="Label165" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 665px; top: 460px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text=" ?????"></asp:Label>
            <asp:Label ID="Label163" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 1070px; top: 190px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text=" ?????"></asp:Label>
              <asp:Label ID="Label11" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 1070px; top: 220px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text=" ?????"></asp:Label>
           
             <asp:Label ID="Label67" runat="server" BorderStyle="Solid" 
   style="z-index: 1; left: 1070px; top: 310px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
   Text=" ?????"></asp:Label>

                      <asp:Label ID="Label70" runat="server" BorderStyle="Solid" 
style="z-index: 1; left: 1070px; top: 340px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
Text=" ?????"></asp:Label>

            <asp:Label ID="Label159" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 1070px; top: 160px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text=" ?????"></asp:Label>
            <asp:Label ID="Label157" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 665px; top: 220px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text="?????"></asp:Label>
            <asp:Label ID="Label55" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 665px; top: 250px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text="?????"></asp:Label>
            <asp:Label ID="Label156" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 245px; top: 250px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text="?????"></asp:Label>
             <asp:Label ID="Label44" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 245px; top: 280px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text="?????"></asp:Label>

             <asp:Label ID="Label52" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 245px; top: 310px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text="?????"></asp:Label>

            <asp:Label ID="Label64" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 1070px; top: 430px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text="?????"></asp:Label>
            <asp:Label ID="Label6" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 245px; top: 160px; position: absolute; font-size: large; font-family: Arial; color: #FF9900; background-color: #000000; width: 72px; height: 22px;" 
                Text=" ?????"></asp:Label>

            <asp:Label ID="Label190" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 545px; top:520px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text="??????"></asp:Label>
                
            <asp:Label ID="Label2" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 545px; top:550px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text="??????"></asp:Label>

              <asp:Label ID="Label18" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 545px; top:580px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text="??????"></asp:Label>
            
              <asp:Label ID="Label47" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 545px; top:610px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text="??????"></asp:Label>

            <asp:Label ID="Label185" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 545px; top:370px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text=" ??????"></asp:Label>
                
            <asp:Label ID="Label153" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 545px; top:490px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text="??????"></asp:Label>
                

            <asp:Label ID="Label36" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 545px; top: 430px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text=" ??????"></asp:Label>
            <asp:Label ID="Label150" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 545px; top: 460px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text=" ??????"></asp:Label>
            <asp:Label ID="Label148" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 950px; top: 190px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text=" ??????"></asp:Label>
             <asp:Label ID="Label9" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 950px; top: 220px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text=" ??????"></asp:Label>

            <asp:Label ID="Label66" runat="server" BorderStyle="Solid" 
   style="z-index: 1; left: 950px; top: 310px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
   Text=" ??????"></asp:Label>

                     <asp:Label ID="Label69" runat="server" BorderStyle="Solid" 
style="z-index: 1; left: 950px; top: 340px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
Text=" ??????"></asp:Label>
          
            <asp:Label ID="Label144" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 950px; top: 160px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text=" ??????"></asp:Label>
            <asp:Label ID="Label142" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 545px; top: 220px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text="??????"></asp:Label>
            <asp:Label ID="Label54" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 545px; top: 250px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text="??????"></asp:Label>
            <asp:Label ID="Label141" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 125px; top: 250px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text="??????"></asp:Label>
            <asp:Label ID="Label39" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 125px; top: 280px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text="??????"></asp:Label>

             <asp:Label ID="Label51" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 125px; top: 310px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text="??????"></asp:Label>

            <asp:Label ID="Label63" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 950px; top: 430px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text="??????"></asp:Label>
                
            <asp:Label ID="Label16" runat="server" BorderStyle="Solid" 
                style="z-index: 1; left: 125px; top: 160px; position: absolute; font-size: large; font-family: Arial; color: #00FF00; background-color: #000000; width: 102px; height: 22px;" 
                Text="??????"></asp:Label>
                
            <asp:LinkButton ID="LinkButton14" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                style="z-index: 1; left: 20px; top: 370px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;" 
                PostBackUrl="~/maquina.aspx?Id=89&amp;Name=MBM41&amp;Ori=1">MBM41</asp:LinkButton>
                
            <asp:LinkButton ID="LinkButton2" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                PostBackUrl="~/maquina.aspx?Id=101&amp;Name=MDM42&amp;Ori=1" 
               style="z-index: 1; left: 440px; top: 190px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">MDM42</asp:LinkButton>
                
            <asp:LinkButton ID="LinkButton12" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                
                
                
                
                style="z-index: 1; left: 20px; top: 190px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;" 
                PostBackUrl="~/maquina.aspx?Id=92&amp;Name=MBF43&amp;Ori=1">MBF43</asp:LinkButton>
                
            <asp:LinkButton ID="LinkButton11" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                style="z-index: 1; left: 20px; top: 160px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;" 
                PostBackUrl="~/maquina.aspx?Id=90&amp;Name=MBF42&amp;Ori=1">MBF42</asp:LinkButton>
            
            <asp:LinkButton ID="LinkButton13" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                style="z-index: 1; left: 440px; top: 160px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;" 
                PostBackUrl="~/maquina.aspx?Id=88&amp;Name=MDM41&amp;Ori=1">MDM41</asp:LinkButton>
                
            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#CCCCCC" 
                BorderStyle="Solid" Font-Underline="False" ForeColor="Black" 
                PostBackUrl="~/maquina.aspx?Id=98&amp;Name=MBF44&amp;Ori=1" 
                style="z-index: 1; left: 20px; top: 220px; position: absolute; font-size: large; font-family: Arial; font-weight: 700;  width: 92px;height: 22px;">MBF44</asp:LinkButton>
            
            &nbsp;<br />
            <asp:Label ID="Label4" runat="server" 
                style="z-index: 1; left: 590px; top: 115px; position: absolute; height: 20px; font-size: small; font-weight: 700; font-family: Arial; color: #FFFFFF;" 
                Text="??/??/?? ??:??:??"></asp:Label>

            <asp:Label ID="Label46" runat="server" 
                style="z-index: 1; left: 850px; top: 115px; position: absolute; height: 20px; font-size: small; font-weight: 700; font-family: Arial; color: #FFFFFF;" 
                Text="--"></asp:Label>

        </ContentTemplate>
    
    
    
     </asp:UpdatePanel>
     
     <asp:Label ID="Label204" runat="server" 
                style="z-index: 1; left: 1159px; top: 135px; position: absolute; font-size: medium; font-family: Arial; font-weight: 700; color: #FFFFFF; " 
                Text="% Scrap"></asp:Label>
    
     <asp:Label ID="Label79" runat="server" 
                style="z-index: 1; left: 748px; top: 135px; position: absolute; font-size: medium; font-family: Arial; font-weight: 700; color: #FFFFFF; " 
                Text="% Scrap"></asp:Label>
    
     <asp:Label ID="Label78" runat="server" 
                style="z-index: 1; left: 667px; top: 135px; position: absolute; font-size: medium; font-family: Arial; font-weight: 700; color: #FFFFFF; " 
                Text="t. uParo"></asp:Label>
    
     <asp:Label ID="Label202" runat="server" 
                style="z-index: 1; left: 949px; top: 135px; position: absolute; font-size: medium; font-family: Arial; font-weight: 700; color: #FFFFFF; " 
                Text="Producción"></asp:Label>
    
     <asp:Label ID="Label77" runat="server" 
                style="z-index: 1; left: 545px; top: 135px; position: absolute; font-size: medium; font-family: Arial; font-weight: 700; color: #FFFFFF; " 
                Text="Producción"></asp:Label>
    
     <asp:Label ID="Label40" runat="server" 
                style="z-index: 1; left: 125px; top: 135px; position: absolute; font-size: medium; font-family: Arial; font-weight: 700; color: #FFFFFF; " 
                Text="Producción"></asp:Label>
    
     <asp:Label ID="Label41" runat="server" 
                style="z-index: 1; left: 248px; top: 135px; position: absolute; font-size: medium; font-family: Arial; font-weight: 700; color: #FFFFFF; " 
                Text="t. uParo"></asp:Label>
    
     <asp:Label ID="Label1" runat="server" 
                style="z-index: 1; left: 333px; top: 135px; position: absolute; font-size: medium; font-family: Arial; font-weight: 700; color: #FFFFFF; " 
                Text="% Scrap"></asp:Label>
             
    <asp:Label ID="Label8" runat="server" 
        style="z-index: 1; left: 460px; top: 70px; position: absolute; font-size: large; font-family: Arial; font-weight: 700; color: #FFFFFF; text-decoration: underline" 
        Text="Resumen"></asp:Label>
              
    <asp:Label ID="Label21" runat="server" 
        style="z-index: 1; left: 952px; top: 480px; position: absolute; font-size: large; font-family: Arial; font-weight: 700; color: #FFFFFF; text-decoration: underline" 
        Text="Codigo colores"></asp:Label>

       <asp:Label ID="Label22" runat="server" 
        style="z-index: 1; left: 920px; top: 510px; position: absolute; font-size: small; font-family: Arial; font-weight: 700; width: 200px; text-align: center;" 
        Text="MAQUINA EN MARCHA"></asp:Label>

      <asp:Label ID="Label23" runat="server" 
        style="z-index: 1; left: 920px; top: 530px; position: absolute; font-size: small; font-family: Arial; font-weight: 700; width: 200px; text-align: center;" 
        Text="MAQUINA PARADA"></asp:Label>
   
      <asp:Label ID="Label24" runat="server" 
        style="z-index: 1; left: 920px; top: 550px; position: absolute; font-size: small; font-family: Arial; font-weight: 700; width: 200px; text-align: center;" 
        Text="INTERVENCION MANTENIM."></asp:Label>

       <asp:Label ID="Label25" runat="server" 
        style="z-index: 1; left: 920px; top: 570px; position: absolute; font-size: small; font-family: Arial; font-weight: 700; width: 200px; text-align: center;" 
        Text="ESPERA MANTENIMIENTO"></asp:Label>

       <asp:Label ID="Label26" runat="server" 
        style="z-index: 1; left: 920px; top: 590px; position: absolute; font-size: small; font-family: Arial; font-weight: 700; width: 200px; text-align: center;" 
        Text="INTERVENCION PRODUCCION"></asp:Label>

        <asp:Label ID="Label27" runat="server" 
        style="z-index: 1; left: 920px; top: 610px; position: absolute; font-size: small; font-family: Arial; font-weight: 700; width: 200px; text-align: center;" 
        Text="ESPERA PRODUCCION"></asp:Label>

      <asp:Label ID="Label28" runat="server" 
        style="z-index: 1; left: 920px; top: 630px; position: absolute; font-size: small; font-family: Arial; font-weight: 700; width: 200px; text-align: center;" 
        Text="CAMBIO DE VERSION"></asp:Label>

      <asp:Label ID="Label29" runat="server" 
        style="z-index: 1; left: 920px; top: 650px; position: absolute; font-size: small; font-family: Arial; font-weight: 700; width: 200px; text-align: center;" 
        Text="MANTENIM. PREVENTIVO"></asp:Label>

      <asp:Label ID="Label30" runat="server" 
        style="z-index: 1; left: 920px; top: 670px; position: absolute; font-size: small; font-family: Arial; font-weight: 700; width: 200px; text-align: center;" 
        Text="TPM"></asp:Label>

      <asp:Label ID="Label31" runat="server" 
        style="z-index: 1; left: 920px; top: 690px; position: absolute; font-size: small; font-family: Arial; font-weight: 700; width: 200px; text-align: center;" 
        Text="PRUEBAS IPI"></asp:Label>

     <asp:Label ID="Label32" runat="server" 
        style="z-index: 1; left: 920px; top: 710px; position: absolute; font-size: small; font-family: Arial; font-weight: 700; width: 200px; text-align: center;" 
        Text="MEJORAS"></asp:Label>

     <asp:Label ID="Label33" runat="server" 
        style="z-index: 1; left: 920px; top: 730px; position: absolute; font-size: small; font-family: Arial; font-weight: 700; width: 200px; text-align: center;" 
        Text="FALTA MATERIAL"></asp:Label>

    <asp:Label ID="Label50" runat="server" 
        style="z-index: 1; left: 920px; top: 750px; position: absolute; font-size: small; font-family: Arial; font-weight: 700; width: 200px; text-align: center;" 
        Text="MATERIAL DEFECTUOSO"></asp:Label>

    <asp:Label ID="Label34" runat="server" 
        style="z-index: 1; left: 920px; top: 770px; position: absolute; font-size: small; font-family: Arial; font-weight: 700; width: 200px; text-align: center;" 
        Text="NO PLANIFICADA"></asp:Label>

    <asp:Label ID="Label35" runat="server" 
        style="z-index: 1; left: 920px; top: 790px; position: absolute; font-size: small; font-family: Arial; font-weight: 700; width: 200px; text-align: center;" 
        Text="NO COMUNICA"></asp:Label>

    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 195px; top: 70px; position: absolute; font-size: large; font-family: Arial; font-weight: 700; color: #FFFFFF; text-decoration: underline" 
        Text="PLANTA DE MONTAJE"></asp:Label>
              
    <asp:Button ID="Button4" runat="server" 
    style="z-index: 1; left: 405px; top: 835px; position: absolute; width: 125px; height: 25px; " 
    Text="Informe diario" CausesValidation="False" EnableViewState="False" 
        UseSubmitBehavior="False" PostBackUrl="~/infor-diario-0.aspx" />

      <asp:Button ID="Button1" runat="server" 
    style="z-index: 1; left: 155px; top: 835px; position: absolute; width: 125px; height: 25px; " 
    Text="eKanban" CausesValidation="False" EnableViewState="False" 
        UseSubmitBehavior="False" PostBackUrl="~/kanban-02.aspx" />
   
                     
    <asp:Button ID="Button3" runat="server" 
    style="z-index: 1; left: 547px; top: 835px; position: absolute; width: 125px; height: 25px; " 
    Text="Turno anterior" CausesValidation="False" EnableViewState="False" 
        UseSubmitBehavior="False" PostBackUrl="~/historico-resumen.aspx" />
   
                     
    <asp:Button ID="Button2" runat="server" 
    style="z-index: 1; left: 737px; top: 835px; position: absolute; width: 85px; height: 25px; right: 552px" 
    Text="Salir" CausesValidation="False" EnableViewState="False" 
        UseSubmitBehavior="False" PostBackUrl="~/default.aspx" />
   
                     
            &nbsp;
   
                     
      </asp:Content>

