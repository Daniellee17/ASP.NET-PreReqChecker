<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Courses115.aspx.cs" Inherits="Courses115" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        @font-face {
            src: url(fonts/MarckScript-Regular.ttf);
            font-family: marc;
        }

        @font-face {
            src: url(fonts/BungeeInline-Regular.ttf);
            font-family: bunge;
        }

        @font-face {
            src: url(fonts/KaushanScript-Regular.ttf);
            font-family: mech;
        }

        @font-face {
            src: url(fonts/OpenSansCondensed-Light.ttf);
            font-family: banger;
        }

        body {
            margin: 0;
            padding: 0;
            background: url(images/bg.jpg);
            background-size: cover;
        }


        .subLabel {
            top: 15%;
            left: 50%;
            width: 100%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
           
            font-family: mech;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            font-size: 60px;
            color: white;
        }

        h1 {
            margin: 0;
            padding: 0 0 12px;
            text-align: center;
            font-size: 15px;
        }

        .buttonDane input[type="submit"] {
            margin: 0;
            padding: 0;
            border: none;
            outline: none;
            height: 33px;
            width: 68px;
            left: 0%;
            position: absolute;
            background: rgba(0, 0, 0, 0.6);
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


        .detailsBox {
            width: 280px;
            height: 390px;
            background: rgba(0, 0, 0, 0.6);
            color: #fff;
            top: 40%;
            left: 10%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 30px 30px;
            font-family: sans-serif;
        }






            .detailsBox p {
                margin: 0;
                padding: 0;
                font-size: 15px;
                color: #31BDC9;
            }

            .detailsBox input[type="text"] {
                margin-bottom: 15px;
                border: none;
                border-bottom: 1px solid #fff;
                background: transparent;
                outline: none;
                height: 10px;
                width: 10px;
                margin-left: 4px;
                margin-right: 4px;
                color: #fff;
                font-size: 15px;
            }

            .detailsBox input[type="submit"] {
                border: none;
                outline: none;
                height: 30px;
                background: rgba(0,0,0,0.3);
                color: #fff;
                font-size: 15px;
                border-radius: 0px;
            }

                .detailsBox input[type="submit"]:hover {
                    cursor: pointer;
                    background: #39dc79;
                    color: #000;
                }

            .detailsBox a {
                text-decoration: none;
                font-size: 14px;
                color: #fff;
            }

                .detailsBox a:hover {
                    color: #39dc79;
                }



        .listBox1 {
            width: 280px;
            height: 390px;
            background: rgba(0, 0, 0, 0.6);
            color: #fff;
            top: 40%;
            left: 26%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 30px 30px;
            font-family: sans-serif;
        }

            .listBox1 a {
                text-decoration: none;
                font-size: 14px;
                color: #fff;
            }

                .listBox1 a:hover {
                    color: #39dc79;
                }

        .listBox2 {
            width: 280px;
            height: 390px;
            background: rgba(0, 0, 0, 0.6);
            color: #fff;
            top: 40%;
            left: 42%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 30px 30px;
            font-family: sans-serif;
        }



            .listBox2 a {
                text-decoration: none;
                font-size: 14px;
                color: #fff;
            }

                .listBox2 a:hover {
                    color: #39dc79;
                }

        .listBox3 {
            width: 280px;
            height: 390px;
            background: rgba(0, 0, 0, 0.6);
            color: #fff;
            top: 40%;
            left: 58%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 30px 30px;
            font-family: sans-serif;
        }




            .listBox3 a {
                text-decoration: none;
                font-size: 14px;
                color: #fff;
            }

                .listBox3 a:hover {
                    color: #39dc79;
                }

        .listBox4 {
            width: 280px;
            height: 390px;
            background: rgba(0, 0, 0, 0.6);
            color: #fff;
            top: 40%;
            left: 74%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 30px 30px;
            font-family: sans-serif;
        }


            .listBox4 p {
                margin: 0;
                padding: 0;
                font-size: 15px;
                color: #31BDC9;
            }



            .listBox4 a {
                text-decoration: none;
                font-size: 14px;
                color: #fff;
            }

                .listBox4 a:hover {
                    color: #39dc79;
                }

        .listBox5 {
            width: 280px;
            height: 390px;
            background: rgba(0, 0, 0, 0.6);
            color: #fff;
            top: 40%;
            left: 90%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 30px 30px;
            font-family: sans-serif;
        }




            .listBox5 a {
                text-decoration: none;
                font-size: 14px;
                color: #fff;
            }

                .listBox5 a:hover {
                    color: #39dc79;
                }

        .listBox6 {
            width: 280px;
            height: 390px;
            background: rgba(0, 0, 0, 0.6);
            color: #fff;
            top: 83%;
            left: 10%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 30px 30px;
            font-family: sans-serif;
        }




            .listBox6 a {
                text-decoration: none;
                font-size: 14px;
                color: #fff;
            }

                .listBox6 a:hover {
                    color: #39dc79;
                }

        .listBox7 {
            width: 280px;
            height: 390px;
            background: rgba(0, 0, 0, 0.6);
            color: #fff;
            top: 83%;
            left: 26%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 30px 30px;
            font-family: sans-serif;
        }




            .listBox7 a {
                text-decoration: none;
                font-size: 14px;
                color: #fff;
            }

                .listBox7 a:hover {
                    color: #39dc79;
                }

        .listBox8 {
            width: 280px;
            height: 390px;
            background: rgba(0, 0, 0, 0.6);
            color: #fff;
            top: 83%;
            left: 42%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 30px 30px;
            font-family: sans-serif;
        }



            .listBox8 a {
                text-decoration: none;
                font-size: 14px;
                color: #fff;
            }

                .listBox8 a:hover {
                    color: #39dc79;
                }

        .listBox9 {
            width: 280px;
            height: 390px;
            background: rgba(0, 0, 0, 0.6);
            color: #fff;
            top: 83%;
            left: 58%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 30px 30px;
            font-family: sans-serif;
        }




            .listBox9 a {
                text-decoration: none;
                font-size: 14px;
                color: #fff;
            }

                .listBox9 a:hover {
                    color: #39dc79;
                }

        .listBox10 {
            width: 280px;
            height: 390px;
            background: rgba(0, 0, 0, 0.6);
            color: #fff;
            top: 83%;
            left: 74%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 30px 30px;
            font-family: sans-serif;
        }


            .listBox10 a {
                text-decoration: none;
                font-size: 14px;
                color: #fff;
            }

                .listBox10 a:hover {
                    color: #39dc79;
                }

        .listBox11 {
            width: 280px;
            height: 390px;
            background: rgba(0, 0, 0, 0.6);
            color: #fff;
            top: 83%;
            left: 90%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 30px 30px;
            font-family: sans-serif;
        }



            .listBox11 a {
                text-decoration: none;
                font-size: 14px;
                color: #fff;
            }

                .listBox11 a:hover {
                    color: #39dc79;
                }

        .listBox12 {
            width: 280px;
            height: 390px;
            background: rgba(0, 0, 0, 0.6);
            color: #fff;
            top: 126%;
            left: 10%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 30px 30px;
            font-family: sans-serif;
        }




            .listBox12 a {
                text-decoration: none;
                font-size: 14px;
                color: #fff;
            }

                .listBox12 a:hover {
                    color: #39dc79;
                }

        .listBox13 {
            width: 280px;
            height: 390px;
            background: rgba(0, 0, 0, 0.6);
            color: #fff;
            top: 126%;
            left: 26%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 30px 30px;
            font-family: sans-serif;
        }



            .listBox13 a {
                text-decoration: none;
                font-size: 14px;
                color: #fff;
            }

                .listBox13 a:hover {
                    color: #39dc79;
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
                color: #fff;
                float: left;
                height: 100%;
                line-height: 65px;
                font-family: marc;
                font-size: 22px;
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
                    <asp:LinkButton ID="LB_reg" runat="server" OnClick="LB_reg_Click" Text="REGISTER"> </asp:LinkButton>
                </a></li>


                <li><a>
                    <asp:LinkButton ID="LB_login" runat="server" OnClick="LB_login_Click" Text="Login"></asp:LinkButton>
                </a></li>
            </ul>
        </nav>





        <div class="subLabel">

            <asp:Label ID="Label4" runat="server" Text="2015 Curriculum Checklist"></asp:Label>


        </div>
        <div class="listBox1">

            <h1>TERM ONE</h1>

            <asp:GridView ID="gvUsers" runat="server" CellPadding="5" ForeColor="Transparent" Font-Bold="false" GridLines="None" AutoGenerateColumns="false"
                ShowFooter="true"
                DataKeyNames="id"
                ShowHeaderWhenEmpty="true"
                OnRowCommand="gvUsers_RowCommand"
                Style="font-family: sans-serif; text-align: center; margin: auto; background: transparent; outline: none; height: 30px; font-size: 12px; position: center;">



                <AlternatingRowStyle BackColor="Transparent" ForeColor="White" />
                <EditRowStyle BackColor="Transparent" ForeColor="White" />

                <HeaderStyle BackColor="Transparent" ForeColor="#31BDC9" />
                <PagerStyle BackColor="Transparent" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="Transparent" ForeColor="white" Font-Size="15px" />
                <SelectedRowStyle BackColor="Transparent" Font-Bold="True" ForeColor="white" />

                <Columns>

                    <asp:TemplateField HeaderText="COURSE" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="15px" HeaderStyle-Width="100px">
                        <ItemTemplate>
                            <asp:LinkButton Text='<%# Eval("Course") %>' runat="server" CommandName="View0"></asp:LinkButton>

                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtFirstName" Text='<%# Eval("Course") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="UNITS" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="15px" HeaderStyle-Width="100px">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Units") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtType" Text='<%# Eval("Units") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>






                </Columns>
            </asp:GridView>




        </div>

        <div class="listBox2">

            <h1>TERM TWO</h1>

            <asp:GridView ID="gvUsers2" runat="server" CellPadding="5" ForeColor="Transparent" Font-Bold="false" GridLines="None" AutoGenerateColumns="false"
                ShowFooter="true"
                DataKeyNames="id"
                ShowHeaderWhenEmpty="true"
                OnRowCommand="gvUsers2_RowCommand"
                Style="font-family: sans-serif; text-align: center; margin: auto; background: transparent; outline: none; height: 30px; font-size: 12px; position: center;">



                <AlternatingRowStyle BackColor="Transparent" ForeColor="White" />
                <EditRowStyle BackColor="Transparent" ForeColor="White" />

                <HeaderStyle BackColor="Transparent" ForeColor="#31BDC9" />
                <PagerStyle BackColor="Transparent" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="Transparent" ForeColor="white" Font-Size="15px" />
                <SelectedRowStyle BackColor="Transparent" Font-Bold="True" ForeColor="white" />

                <Columns>

                    <asp:TemplateField HeaderText="COURSE" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="15px" HeaderStyle-Width="100px">
                        <ItemTemplate>
                            <asp:LinkButton Text='<%# Eval("Course") %>' runat="server" CommandName="View2"></asp:LinkButton>

                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtFirstName" Text='<%# Eval("Course") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="UNITS" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="15px" HeaderStyle-Width="100px">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Units") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtType" Text='<%# Eval("Units") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>


                </Columns>
            </asp:GridView>


        </div>
        <div class="listBox3">


            <h1>TERM THREE</h1>

            <asp:GridView ID="gvUsers3" runat="server" CellPadding="5" ForeColor="Transparent" Font-Bold="false" GridLines="None" AutoGenerateColumns="false"
                ShowFooter="true"
                DataKeyNames="id"
                ShowHeaderWhenEmpty="true"
                OnRowCommand="gvUsers3_RowCommand"
                Style="font-family: sans-serif; text-align: center; margin: auto; background: transparent; outline: none; height: 30px; font-size: 12px; position: center;">



                <AlternatingRowStyle BackColor="Transparent" ForeColor="White" />
                <EditRowStyle BackColor="Transparent" ForeColor="White" />

                <HeaderStyle BackColor="Transparent" ForeColor="#31BDC9" />
                <PagerStyle BackColor="Transparent" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="Transparent" ForeColor="white" Font-Size="15px" />
                <SelectedRowStyle BackColor="Transparent" Font-Bold="True" ForeColor="white" />

                <Columns>

                    <asp:TemplateField HeaderText="COURSE" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="15px" HeaderStyle-Width="100px">
                        <ItemTemplate>
                            <asp:LinkButton Text='<%# Eval("Course") %>' runat="server" CommandName="View3"></asp:LinkButton>

                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtFirstName" Text='<%# Eval("Course") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="UNITS" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="15px" HeaderStyle-Width="100px">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Units") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtType" Text='<%# Eval("Units") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>


                </Columns>
            </asp:GridView>



        </div>
        <div class="listBox4">

            <h1>TERM FOUR</h1>


            <asp:GridView ID="gvUsers4" runat="server" CellPadding="5" ForeColor="Transparent" Font-Bold="false" GridLines="None" AutoGenerateColumns="false"
                ShowFooter="true"
                DataKeyNames="id"
                ShowHeaderWhenEmpty="true"
                OnRowCommand="gvUsers4_RowCommand"
                Style="font-family: sans-serif; text-align: center; margin: auto; background: transparent; outline: none; height: 30px; font-size: 12px; position: center;">



                <AlternatingRowStyle BackColor="Transparent" ForeColor="White" />
                <EditRowStyle BackColor="Transparent" ForeColor="White" />

                <HeaderStyle BackColor="Transparent" ForeColor="#31BDC9" />
                <PagerStyle BackColor="Transparent" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="Transparent" ForeColor="white" Font-Size="15px" />
                <SelectedRowStyle BackColor="Transparent" Font-Bold="True" ForeColor="white" />

                <Columns>

                    <asp:TemplateField HeaderText="COURSE" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="15px" HeaderStyle-Width="100px">
                        <ItemTemplate>
                            <asp:LinkButton Text='<%# Eval("Course") %>' runat="server" CommandName="View4"></asp:LinkButton>

                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtFirstName" Text='<%# Eval("Course") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="UNITS" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="15px" HeaderStyle-Width="100px">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Units") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtType" Text='<%# Eval("Units") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>


                </Columns>
            </asp:GridView>


        </div>
        <div class="listBox5">

            <h1>TERM FIVE</h1>

            <asp:GridView ID="gvUsers5" runat="server" CellPadding="5" ForeColor="Transparent" Font-Bold="false" GridLines="None" AutoGenerateColumns="false"
                ShowFooter="true"
                DataKeyNames="id"
                ShowHeaderWhenEmpty="true"
                OnRowCommand="gvUsers5_RowCommand"
                Style="font-family: sans-serif; text-align: center; margin: auto; background: transparent; outline: none; height: 30px; font-size: 12px; position: center;">



                <AlternatingRowStyle BackColor="Transparent" ForeColor="White" />
                <EditRowStyle BackColor="Transparent" ForeColor="White" />

                <HeaderStyle BackColor="Transparent" ForeColor="#31BDC9" />
                <PagerStyle BackColor="Transparent" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="Transparent" ForeColor="white" Font-Size="15px" />
                <SelectedRowStyle BackColor="Transparent" Font-Bold="True" ForeColor="white" />

                <Columns>

                    <asp:TemplateField HeaderText="COURSE" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="15px" HeaderStyle-Width="100px">
                        <ItemTemplate>
                            <asp:LinkButton Text='<%# Eval("Course") %>' runat="server" CommandName="View5"></asp:LinkButton>

                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtFirstName" Text='<%# Eval("Course") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="UNITS" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="15px" HeaderStyle-Width="100px">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Units") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtType" Text='<%# Eval("Units") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>


                </Columns>
            </asp:GridView>



        </div>
        <div class="listBox6">

            <h1>TERM SIX</h1>

            <asp:GridView ID="gvUsers6" runat="server" CellPadding="5" ForeColor="Transparent" Font-Bold="false" GridLines="None" AutoGenerateColumns="false"
                ShowFooter="true"
                DataKeyNames="id"
                ShowHeaderWhenEmpty="true"
                OnRowCommand="gvUsers6_RowCommand"
                Style="font-family: sans-serif; text-align: center; margin: auto; background: transparent; outline: none; height: 30px; font-size: 12px; position: center;">



                <AlternatingRowStyle BackColor="Transparent" ForeColor="White" />
                <EditRowStyle BackColor="Transparent" ForeColor="White" />

                <HeaderStyle BackColor="Transparent" ForeColor="#31BDC9" />
                <PagerStyle BackColor="Transparent" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="Transparent" ForeColor="white" Font-Size="15px" />
                <SelectedRowStyle BackColor="Transparent" Font-Bold="True" ForeColor="white" />

                <Columns>

                    <asp:TemplateField HeaderText="COURSE" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="15px" HeaderStyle-Width="100px">
                        <ItemTemplate>
                            <asp:LinkButton Text='<%# Eval("Course") %>' runat="server" CommandName="View6"></asp:LinkButton>

                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtFirstName" Text='<%# Eval("Course") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="UNITS" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="15px" HeaderStyle-Width="100px">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Units") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtType" Text='<%# Eval("Units") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>


                </Columns>
            </asp:GridView>


        </div>
        <div class="listBox7">

            <h1>TERM SEVEN</h1>
            <asp:GridView ID="gvUsers7" runat="server" CellPadding="5" ForeColor="Transparent" Font-Bold="false" GridLines="None" AutoGenerateColumns="false"
                ShowFooter="true"
                DataKeyNames="id"
                ShowHeaderWhenEmpty="true"
                OnRowCommand="gvUsers7_RowCommand"
                Style="font-family: sans-serif; text-align: center; margin: auto; background: transparent; outline: none; height: 30px; font-size: 12px; position: center;">



                <AlternatingRowStyle BackColor="Transparent" ForeColor="White" />
                <EditRowStyle BackColor="Transparent" ForeColor="White" />

                <HeaderStyle BackColor="Transparent" ForeColor="#31BDC9" />
                <PagerStyle BackColor="Transparent" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="Transparent" ForeColor="white" Font-Size="15px" />
                <SelectedRowStyle BackColor="Transparent" Font-Bold="True" ForeColor="white" />

                <Columns>

                    <asp:TemplateField HeaderText="COURSE" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="15px" HeaderStyle-Width="100px">
                        <ItemTemplate>
                            <asp:LinkButton Text='<%# Eval("Course") %>' runat="server" CommandName="View7"></asp:LinkButton>

                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtFirstName" Text='<%# Eval("Course") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="UNITS" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="15px" HeaderStyle-Width="100px">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Units") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtType" Text='<%# Eval("Units") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>


                </Columns>
            </asp:GridView>
        </div>
        <div class="listBox8">

            <h1>TERM EIGHT</h1>
            <asp:GridView ID="gvUsers8" runat="server" CellPadding="5" ForeColor="Transparent" Font-Bold="false" GridLines="None" AutoGenerateColumns="false"
                ShowFooter="true"
                DataKeyNames="id"
                ShowHeaderWhenEmpty="true"
                OnRowCommand="gvUsers8_RowCommand"
                Style="font-family: sans-serif; text-align: center; margin: auto; background: transparent; outline: none; height: 30px; font-size: 12px; position: center;">



                <AlternatingRowStyle BackColor="Transparent" ForeColor="White" />
                <EditRowStyle BackColor="Transparent" ForeColor="White" />

                <HeaderStyle BackColor="Transparent" ForeColor="#31BDC9" />
                <PagerStyle BackColor="Transparent" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="Transparent" ForeColor="white" Font-Size="15px" />
                <SelectedRowStyle BackColor="Transparent" Font-Bold="True" ForeColor="white" />

                <Columns>

                    <asp:TemplateField HeaderText="COURSE" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="15px" HeaderStyle-Width="100px">
                        <ItemTemplate>
                            <asp:LinkButton Text='<%# Eval("Course") %>' runat="server" CommandName="View8"></asp:LinkButton>

                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtFirstName" Text='<%# Eval("Course") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="UNITS" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="15px" HeaderStyle-Width="100px">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Units") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtType" Text='<%# Eval("Units") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>


                </Columns>
            </asp:GridView>



        </div>
        <div class="listBox9">

            <h1>TERM NINE</h1>
            <asp:GridView ID="gvUsers9" runat="server" CellPadding="5" ForeColor="Transparent" Font-Bold="false" GridLines="None" AutoGenerateColumns="false"
                ShowFooter="true"
                DataKeyNames="id"
                ShowHeaderWhenEmpty="true"
                OnRowCommand="gvUsers9_RowCommand"
                Style="font-family: sans-serif; text-align: center; margin: auto; background: transparent; outline: none; height: 30px; font-size: 12px; position: center;">



                <AlternatingRowStyle BackColor="Transparent" ForeColor="White" />
                <EditRowStyle BackColor="Transparent" ForeColor="White" />

                <HeaderStyle BackColor="Transparent" ForeColor="#31BDC9" />
                <PagerStyle BackColor="Transparent" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="Transparent" ForeColor="white" Font-Size="15px" />
                <SelectedRowStyle BackColor="Transparent" Font-Bold="True" ForeColor="white" />

                <Columns>

                    <asp:TemplateField HeaderText="COURSE" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="15px" HeaderStyle-Width="100px">
                        <ItemTemplate>
                            <asp:LinkButton Text='<%# Eval("Course") %>' runat="server" CommandName="View9"></asp:LinkButton>

                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtFirstName" Text='<%# Eval("Course") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="UNITS" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="15px" HeaderStyle-Width="100px">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Units") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtType" Text='<%# Eval("Units") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>


                </Columns>
            </asp:GridView>



        </div>
        <div class="listBox10">

            <h1>TERM TEN</h1>
            <asp:GridView ID="gvUsers10" runat="server" CellPadding="5" ForeColor="Transparent" Font-Bold="false" GridLines="None" AutoGenerateColumns="false"
                ShowFooter="true"
                DataKeyNames="id"
                ShowHeaderWhenEmpty="true"
                OnRowCommand="gvUsers10_RowCommand"
                Style="font-family: sans-serif; text-align: center; margin: auto; background: transparent; outline: none; height: 30px; font-size: 12px; position: center;">



                <AlternatingRowStyle BackColor="Transparent" ForeColor="White" />
                <EditRowStyle BackColor="Transparent" ForeColor="White" />

                <HeaderStyle BackColor="Transparent" ForeColor="#31BDC9" />
                <PagerStyle BackColor="Transparent" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="Transparent" ForeColor="white" Font-Size="15px" />
                <SelectedRowStyle BackColor="Transparent" Font-Bold="True" ForeColor="white" />

                <Columns>

                    <asp:TemplateField HeaderText="COURSE" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="15px" HeaderStyle-Width="100px">
                        <ItemTemplate>
                            <asp:LinkButton Text='<%# Eval("Course") %>' runat="server" CommandName="View10"></asp:LinkButton>

                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtFirstName" Text='<%# Eval("Course") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="UNITS" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="15px" HeaderStyle-Width="100px">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Units") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtType" Text='<%# Eval("Units") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>


                </Columns>
            </asp:GridView>

        </div>
        <div class="listBox11">

            <h1>TERM ELEVEN</h1>
            <asp:GridView ID="gvUsers11" runat="server" CellPadding="5" ForeColor="Transparent" Font-Bold="false" GridLines="None" AutoGenerateColumns="false"
                ShowFooter="true"
                DataKeyNames="id"
                ShowHeaderWhenEmpty="true"
                OnRowCommand="gvUsers11_RowCommand"
                Style="font-family: sans-serif; text-align: center; margin: auto; background: transparent; outline: none; height: 30px; font-size: 12px; position: center;">



                <AlternatingRowStyle BackColor="Transparent" ForeColor="White" />
                <EditRowStyle BackColor="Transparent" ForeColor="White" />

                <HeaderStyle BackColor="Transparent" ForeColor="#31BDC9" />
                <PagerStyle BackColor="Transparent" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="Transparent" ForeColor="white" Font-Size="15px" />
                <SelectedRowStyle BackColor="Transparent" Font-Bold="True" ForeColor="white" />

                <Columns>

                    <asp:TemplateField HeaderText="COURSE" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="15px" HeaderStyle-Width="100px">
                        <ItemTemplate>
                            <asp:LinkButton Text='<%# Eval("Course") %>' runat="server" CommandName="View11"></asp:LinkButton>

                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtFirstName" Text='<%# Eval("Course") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="UNITS" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="15px" HeaderStyle-Width="100px">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Units") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtType" Text='<%# Eval("Units") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>


                </Columns>
            </asp:GridView>


        </div>
        <div class="listBox12">

            <h1>TERM TWELVE</h1>
            <asp:GridView ID="gvUsers12" runat="server" CellPadding="5" ForeColor="Transparent" Font-Bold="false" GridLines="None" AutoGenerateColumns="false"
                ShowFooter="true"
                DataKeyNames="id"
                ShowHeaderWhenEmpty="true"
                OnRowCommand="gvUsers12_RowCommand"
                Style="font-family: sans-serif; text-align: center; margin: auto; background: transparent; outline: none; height: 30px; font-size: 12px; position: center;">



                <AlternatingRowStyle BackColor="Transparent" ForeColor="White" />
                <EditRowStyle BackColor="Transparent" ForeColor="White" />

                <HeaderStyle BackColor="Transparent" ForeColor="#31BDC9" />
                <PagerStyle BackColor="Transparent" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="Transparent" ForeColor="white" Font-Size="15px" />
                <SelectedRowStyle BackColor="Transparent" Font-Bold="True" ForeColor="white" />

                <Columns>

                    <asp:TemplateField HeaderText="COURSE" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="15px" HeaderStyle-Width="100px">
                        <ItemTemplate>
                            <asp:LinkButton Text='<%# Eval("Course") %>' runat="server" CommandName="View12"></asp:LinkButton>

                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtFirstName" Text='<%# Eval("Course") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="UNITS" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="15px" HeaderStyle-Width="100px">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Units") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtType" Text='<%# Eval("Units") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>


                </Columns>
            </asp:GridView>
        </div>
        <div class="listBox13">

            <h1>TERM THIRTEEN</h1>
            <asp:GridView ID="gvUsers13" runat="server" CellPadding="5" ForeColor="Transparent" Font-Bold="false" GridLines="None" AutoGenerateColumns="false"
                ShowFooter="true"
                DataKeyNames="id"
                ShowHeaderWhenEmpty="true"
                OnRowCommand="gvUsers13_RowCommand"
                Style="font-family: sans-serif; text-align: center; margin: auto; background: transparent; outline: none; height: 30px; font-size: 12px; position: center;">



                <AlternatingRowStyle BackColor="Transparent" ForeColor="White" />
                <EditRowStyle BackColor="Transparent" ForeColor="White" />

                <HeaderStyle BackColor="Transparent" ForeColor="#31BDC9" />
                <PagerStyle BackColor="Transparent" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="Transparent" ForeColor="white" Font-Size="15px" />
                <SelectedRowStyle BackColor="Transparent" Font-Bold="True" ForeColor="white" />

                <Columns>

                    <asp:TemplateField HeaderText="COURSE" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="15px" HeaderStyle-Width="100px">
                        <ItemTemplate>
                            <asp:LinkButton Text='<%# Eval("Course") %>' runat="server" CommandName="View13"></asp:LinkButton>

                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtFirstName" Text='<%# Eval("Course") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="UNITS" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="15px" HeaderStyle-Width="100px">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Units") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtType" Text='<%# Eval("Units") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>


                </Columns>
            </asp:GridView>


        </div>
        <div class="detailsBox">
            <asp:TextBox ID="TB_Search" runat="server" placeholder="Enter course code" Width="90px"></asp:TextBox>
            <asp:Button ID="BTN_Back" runat="server" Text="Back" OnClick="BTN_Back_Click" />
            <asp:Button ID="BTN_Search" runat="server" Text="Search" OnClick="BTN_Search_Click"></asp:Button>
            <p>Course</p>
            <asp:Label ID="LBL_Course" runat="server" Text="Not logged in" Font-Size="12px"></asp:Label><br />

            <p>Course Title</p>
            <asp:Label ID="LBL_CourseTitle" runat="server" Text="Not logged in" Font-Size="12px"></asp:Label><br />


            <p>Units</p>
            <asp:Label ID="LBL_Units" runat="server" Text="Not logged in" Font-Size="12px"></asp:Label><br />


            <p>Soft Requesite</p>
            <asp:Label ID="LBL_Soft" runat="server" Text="Not logged in" Font-Size="12px"></asp:Label><br />


            <p>Co Requesite</p>
            <asp:Label ID="LBL_Co" runat="server" Text="Not logged in" Font-Size="12px"></asp:Label><br />


            <p>Hard Requesite</p>
            <asp:Label ID="LBL_Hard" runat="server" Text="Not logged in" Font-Size="12px"></asp:Label><br />
          
        </div>


    </form>
</body>


</html>
