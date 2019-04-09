<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyMy115.aspx.cs" Inherits="MyMy115" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        @font-face {
            src: url(fonts/OpenSansCondensed-Light.ttf);
            font-family: banger;
        }

        @font-face {
            src: url(fonts/MarckScript-Regular.ttf);
            font-family: marc;
        }

        @font-face {
            src: url(fonts/KaushanScript-Regular.ttf);
            font-family: mech;
        }

        body {
            margin: 0;
            padding: 0;
            background: url(images/blur.jpg);
            background-size: cover;
        }



        h1 {
            margin: 0;
            padding: 0 0 10px;
            text-align: center;
            font-size: 16px;
        }


         .ddl
        {
             margin: 0;
            padding: 0;
            border: 1px solid WHITE;
            background: rgba(0,0,0,0.6);
            height: 33px;
            width: 120px;
            left: 0%;
        
            border-radius: 20px;
            color: #fff;
            font-size: 14px;
            margin-left: 5px;
            margin-top: 5px;
        }
        .subLabel {
            top: 20%;
            left: 81%;
            width: 100%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            font-family: banger;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            font-size: 40px;
            color: white;
        }

        .buttonDane input[type="submit"] {
            margin: 0;
            padding: 0;
            border: 1px solid WHITE;
            background: rgba(0,0,0,0);
            height: 33px;
            width: 68px;
            left: 0%;
            position: absolute;
            border-radius: 20px;
            color: #fff;
            font-size: 14px;
            margin-left: 5px;
            margin-top: 5px;
        }

            .buttonDane input[type="submit"]:hover {
                cursor: pointer;
                color: #262626;
                transition: .3s;
            }

        .searchBox {
            width: 15%;
            height: 6%;
            
            background: rgba(0, 0, 0, 0);
            color: #fff;
            top: 21%;
            left: 22%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            
            font-family: sans-serif;
        }

            .searchBox input[type="text"] {
                width: 80%;
             
                border: none;
                border-width: 1px;
                border-color: white;
                
                background: transparent;
                outline: none;
                height: 40px;
                color: #fff;
                font-size: 12px;
            }


            .searchBox input[type="submit"] {
                margin: 0;
            padding: 0;
            border: 1px solid WHITE;
             background: rgba(0,0,0,0.5);
            height: 33px;
            width: 68px;
            left: 0%;
        
            border-radius: 20px;
            color: #fff;
            font-size: 14px;
            margin-left: 5px;
            margin-top: 5px;
            }

                .searchBox input[type="submit"]:hover {
                    cursor: pointer;
                    background: #39dc79;
                    color: #000;
                }

            .searchBox a {
                text-decoration: none;
                font-size: 14px;
                color: #fff;
            }

                .searchBox a:hover {
                    color: #39dc79;
                }


        .gridviewBox {
            width: 70%;
            height: 50%;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
            background: rgba(0, 0, 0, 0.7);
            color: #fff;
            top: 47.8%;
            left: 50%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 30px 20px;
            font-family: sans-serif;
        }


            .gridviewBox input[type="text"] {
                width: 80%;
                margin-bottom: 20px;
                border: none;
                border-width: 1px;
                border-color: white;
                border-bottom: 1px solid #fff;
                background: transparent;
                outline: none;
                height: 40px;
                color: #fff;
                font-size: 16px;
            }


            .gridviewBox input[type="submit"] {
                border: none;
                outline: none;
                height: 40px;
                background: #31BDC9;
                color: #fff;
                font-size: 18px;
                border-radius: 20px;
            }

                .gridviewBox input[type="submit"]:hover {
                    cursor: pointer;
                    background: #39dc79;
                    color: #000;
                }

            .gridviewBox a {
                text-decoration: none;
                font-size: 14px;
                color: #fff;
            }

                .gridviewBox a:hover {
                    color: #39dc79;
                }




        .generalLabel {
            top: 11%;
            left: 50%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 70px 30px;
            font-family: sans-serif;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            font-family: sans-serif;
            font-size: 16px;
            color: aliceblue;
        }

        nav {
            top: 0;
            left: 0;
            width: 100%;
            height: 63px;
            background: rgba(0,0,0,0);
            padding: 0 100px;
            box-sizing: border-box;
        }

            nav .brand h2 {
                padding: 0;
                margin: 18px, 0;
                color: WHITE;
                float: left;
                height: 100%;
                line-height: 65px;
                font-family: banger;
                font-size: 20px;
            }

            nav ul {
                float: right;
                display: flex;
                margin: 0;
                padding: 0;
            }

                nav ul li {
                    list-style: none;
                }

                    nav ul li a {
                        position: relative;
                        display: block;
                        height: 50px;
                        line-height: 0px;
                        padding: 0 25px;
                        box-sizing: border-box;
                        color: #fff;
                        text-decoration: none;
                        text-transform: uppercase;
                        transition: .3s;
                        font-family: sans-serif;
                        font-size: 14px;
                    }

        ul li a:hover {
            color: #262626;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <nav>
            <div class="brand">
                <h2>
                    <asp:Label ID="LblName" runat="server" Text=" " ForeColor="White" Font-Bold="false"></asp:Label>
                </h2>
            </div>
            <ul>
                <li><a>
                    <asp:LinkButton ID="LB_home" runat="server" OnClick="LB_home_Click">HOME</asp:LinkButton>
                </a></li>

                <li><a>
                    <asp:LinkButton ID="LB_my" runat="server" OnClick="LB_my_Click">MY ACCOUNT</asp:LinkButton>
                </a></li>

                <li><a>
                    <asp:LinkButton ID="LB_login" runat="server" OnClick="LB_login_Click" Text="Login"></asp:LinkButton>
                </a></li>
            </ul>
        </nav>

        <div class="buttonDane">
            <asp:Button ID="BTN_Back" runat="server" Text="BACK" OnClick="BTN_Back_Click" />
        </div>

        <div class="generalLabel">
            <asp:Label ID="LBL" runat="server" Text=" "></asp:Label>
        </div>

        <div class="subLabel">

            <asp:Label ID="Label1" runat="server" Text="TERM No."></asp:Label>


        </div>
           
        <div class="searchBox">

              <asp:Button ID="Button1" runat="server" Text="View" OnClick="BTN_View_Click" />
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="TermNo" DataValueField="TermNo" AutoPostBack="True" CssClass="ddl">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ageDBConnectionString %>" SelectCommand="SELECT DISTINCT [TermNo] FROM [FlowchartTable115] ORDER BY [TermNo]"></asp:SqlDataSource>
           
        </div>
        <div class="gridviewBox">

            <asp:GridView ID="gvUsers" runat="server" CellPadding="4" ForeColor="Black" GridLines="None" AutoGenerateColumns="false"
                ShowFooter="true"
                DataKeyNames="id"
                ShowHeaderWhenEmpty="true"
              
           
                Style="font-family: sans-serif; text-align: center; margin: auto; background: transparent; outline: none; height: 40px; font-size: 15px; position: center"
                OnSelectedIndexChanged="gvUsers_SelectedIndexChanged">

                <AlternatingRowStyle BackColor="Transparent" ForeColor="White" />
                <EditRowStyle BackColor="Transparent" ForeColor="White" />
                <FooterStyle BackColor="Transparent" ForeColor="White" />
                <HeaderStyle BackColor="Transparent" ForeColor="#31BDC9" />
                <PagerStyle BackColor="Transparent" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="Transparent" ForeColor="white" />
                <SelectedRowStyle BackColor="Transparent" Font-Bold="True" ForeColor="white" />


                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                <Columns>

                    <asp:TemplateField HeaderText="TERM NO">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("TermNo") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtTermNo" Text='<%# Eval("TermNo") %>' runat="server" />
                        </EditItemTemplate>
                      
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="COURSE">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Course") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCourse" Text='<%# Eval("Course") %>' runat="server" />
                        </EditItemTemplate>
                       
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="COURSE TITLE">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("CourseTitle") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCourseTitle" Text='<%# Eval("CourseTitle") %>' runat="server" />
                        </EditItemTemplate>
                     
                    </asp:TemplateField>

                    
                    <asp:TemplateField HeaderText="PASSED">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Passed") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPassed" Text='<%# Eval("Passed") %>' runat="server" />
                        </EditItemTemplate>
                       
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="UNITS">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Units") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtUnits" Text='<%# Eval("Units") %>' runat="server" />
                        </EditItemTemplate>
                      
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="SOFT">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("SoftReq") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtSoft" Text='<%# Eval("SoftReq") %>' runat="server" />
                        </EditItemTemplate>
                      
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="CO">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("CoReq") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCo" Text='<%# Eval("CoReq") %>' runat="server" />
                        </EditItemTemplate>
                        
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="HARD">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("HardReq") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtHard" Text='<%# Eval("HardReq") %>' runat="server" />
                        </EditItemTemplate>
                       
                    </asp:TemplateField>




                </Columns>
            </asp:GridView>



        </div>
    </form>
</body>
</html>
