<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Courses.aspx.cs" Inherits="Courses" %>

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

        body {
            margin: 0;
            padding: 0;
            background: url(images/bg.jpg);
            background-size: cover;
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
            background: rgba(0, 0, 0, 0.8);
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

        .approvedBox {
            width: 1000px;
            height: 590px;
            background: rgba(0, 0, 0, 0.8);
            color: #fff;
            top: 50%;
            left: 32%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 70px 30px;
            font-family: sans-serif;
        }



        h1 {
            margin: 0;
            padding: 0 0 16px;
            text-align: center;
            font-size: 19px;
        }



        .approvedBox p {
            margin: 0;
            padding: 0;
            font-size: 15px;
            color: #31BDC9;
        }

        .approvedBox input[type="text"] {
            margin-bottom: 16px;
            border: none;
            border-bottom: 1px solid #fff;
            background: transparent;
            outline: none;
            height: 40px;
            color: #fff;
            font-size: 16px;
            position: center;
        }

        .approvedBox input[type="password"] {
            width: 40%;
            margin-bottom: 16px;
            border: none;
            border-bottom: 1px solid #fff;
            background: transparent;
            outline: none;
            height: 40px;
            color: #fff;
            font-size: 16px;
            position: center;
        }

        .approvedBox input[type="submit"] {
            border: none;
            outline: none;
            height: 40px;
            background: rgba(0,0,0,0.3);
            color: #fff;
            font-size: 18px;
            border-radius: 0px;
        }

            .approvedBox input[type="submit"]:hover {
                cursor: pointer;
                background: #39dc79;
                color: #000;
            }

        .approvedBox a {
            text-decoration: none;
            font-size: 14px;
            color: #fff;
        }

            .approvedBox a:hover {
                color: #39dc79;
            }




        .viewBox {
            width: 610px;
            height: 590px;
            background: rgba(0, 0, 0, 0.8);
            color: #fff;
            top: 50%;
            left: 78%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 70px 30px;
            font-family: sans-serif;
        }


            .viewBox p {
                margin: 0;
                padding: 0;
                font-size: 15px;
                color: #31BDC9;
            }

            .viewBox input[type="text"] {
                margin-bottom: 16px;
                border: none;
                border-bottom: 1px solid #fff;
                background: transparent;
                outline: none;
                height: 40px;
                color: #fff;
                font-size: 16px;
                position: center;
            }

            .viewBox input[type="password"] {
                width: 40%;
                margin-bottom: 16px;
                border: none;
                border-bottom: 1px solid #fff;
                background: transparent;
                outline: none;
                height: 40px;
                color: #fff;
                font-size: 16px;
                position: center;
            }

            .viewBox input[type="submit"] {
                border: none;
                outline: none;
                height: 40px;
                background: rgba(0,0,0,0.3);
                color: #fff;
                font-size: 18px;
                border-radius: 0px;
            }

                .viewBox input[type="submit"]:hover {
                    cursor: pointer;
                    background: #39dc79;
                    color: #000;
                }

            .viewBox a {
                text-decoration: none;
                font-size: 14px;
                color: #fff;
            }

                .viewBox a:hover {
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
                    <asp:LinkButton ID="LB_contact" runat="server" OnClick="LB_contact_Click" Text="CONTACT"> </asp:LinkButton>
                </a></li>

                <li><a>
                    <asp:LinkButton ID="LB_login" runat="server" OnClick="LB_login_Click" Text="Login"></asp:LinkButton>
                </a></li>
            </ul>
        </nav>

        <div class="buttonDane">

            <asp:Button ID="BTN_Back" runat="server" Text="BACK" OnClick="BTN_Back_Click" />

        </div>


        <div class="viewBox">

            <h1>COURSE LIST</h1>


            <asp:GridView ID="gvUsers" runat="server" CellPadding="5" ForeColor="Transparent" Font-Bold="false" GridLines="None" AutoGenerateColumns="false"
                ShowFooter="true"
                DataKeyNames="id"
                ShowHeaderWhenEmpty="true"
                OnRowCommand="gvUsers_RowCommand"
                
                Style="font-family: sans-serif; text-align: center; margin: auto; background: transparent; outline: none; height: 40px; font-size: 16px; position: center;">



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

                    <asp:TemplateField HeaderText="COURSE TITLE" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="15px" HeaderStyle-Width="100px">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("CourseTitle") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtType" Text='<%# Eval("CourseTitle") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>






                </Columns>
            </asp:GridView>

            <asp:TextBox ID="Tb1" runat="server" Text="" Visible="false" />


        </div>



        <div class="approvedBox">

            <h1>DETAILS</h1>

            <p>Course</p>
            <asp:Label ID="LBL_Course" runat="server" Text="Not logged in" Font-Size="16px"></asp:Label><br />
            <br />

        </div>


    </form>
</body>


</html>
