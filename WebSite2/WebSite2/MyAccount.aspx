<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyAccount.aspx.cs" Inherits="MyAccount" %>

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

        .createBox {
            width: 300px;
            height: 180px;
            background: rgba(0, 0, 0, 0.7);
            color: #fff;
            top: 24%;
            left: 13%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 30px 30px;
            font-family: sans-serif;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
        }



            .createBox input[type="text"], input[type="password"] {
                border: none;
                border-bottom: 1px solid #fff;
                background: transparent;
                outline: none;
                color: #fff;
                font-size: 14px;
            }

            .createBox input[type="submit"] {
                border: 1px solid WHITE;
                background: rgba(0,0,0,0);
                outline: none;
                padding: 7px 7px 7px 7px;
                color: #fff;
                font-size: 15px;
                border-radius: 20px;
                margin-top: 10px;
                margin-bottom: 10px;
            }

                .createBox input[type="submit"]:hover {
                    cursor: pointer;
                    background: WHITE;
                    color: #000;
                }

        .viewBox {
            width: 300px;
            height: 180px;
            background: rgba(0, 0, 0, 0.7);
            color: #fff;
            top: 44%;
            left: 13%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 30px 30px;
            font-family: sans-serif;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
        }



            .viewBox input[type="text"], input[type="password"] {
                border: none;
                border-bottom: 1px solid #fff;
                background: transparent;
                outline: none;
                color: #fff;
                font-size: 14px;
            }

            .viewBox input[type="submit"] {
                border: 1px solid WHITE;
                background: rgba(0,0,0,0);
                outline: none;
                padding: 7px 7px 7px 7px;
                color: #fff;
                font-size: 15px;
                border-radius: 20px;
                margin-top: 10px;
                margin-bottom: 10px;
            }

                .viewBox input[type="submit"]:hover {
                    cursor: pointer;
                    background: WHITE;
                    color: #000;
                }

        .deleteBox {
            width: 300px;
            height: 180px;
            background: rgba(0, 0, 0, 0.7);
            color: #fff;
            top: 64%;
            left: 13%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 30px 30px;
            font-family: sans-serif;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
        }



            .deleteBox input[type="text"], input[type="password"] {
                border: none;
                border-bottom: 1px solid #fff;
                background: transparent;
                outline: none;
                color: #fff;
                font-size: 14px;
            }

            .deleteBox input[type="submit"] {
                border: 1px solid WHITE;
                background: rgba(0,0,0,0);
                outline: none;
                padding: 7px 7px 7px 7px;
                color: #fff;
                font-size: 15px;
                border-radius: 20px;
                margin-top: 10px;
                margin-bottom: 10px;
            }

                .deleteBox input[type="submit"]:hover {
                    cursor: pointer;
                    background: WHITE;
                    color: #000;
                }

        .ddl {
            margin: 0;
            padding: 0;
            border: 1px solid WHITE;
            background: rgba(0,0,0,0.5);
            height: 40px;
            width: 100%;
            left: 0%;
            border-radius: 20px;
            color: #fff;
            font-size: 17px;
        
            margin-bottom: 10px;
        }

        .admin0-box {
            width: 300px;
            height: 200px;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
            background: rgba(0, 0, 0, 0.7);
            color: #fff;
            top: 40%;
            left: 25%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 20px 30px;
            font-family: sans-serif;
        }

            .admin0-box h1 {
                margin: 0;
                padding: 0 0 10px;
                text-align: center;
                font-size: 12px;
                margin-bottom: 20px;
            }



            .admin0-box input[type="submit"] {
                border: 1px solid WHITE;
                background: rgba(0,0,0,0);
                outline: none;
                width: 100%;
                height: 40px;
                color: #fff;
                font-size: 16px;
                border-radius: 16px;
                margin-bottom: 10px;
            }

                .admin0-box input[type="submit"]:hover {
                    cursor: pointer;
                    background: WHITE;
                    color: #000;
                }

        .admin1-box {
            width: 300px;
            height: 200px;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
            background: rgba(0, 0, 0, 0.7);
            color: #fff;
            top: 40%;
            left: 75%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 20px 30px;
            font-family: sans-serif;
        }

            .admin1-box h1 {
                margin: 0;
                padding: 0 0 10px;
                text-align: center;
                font-size: 12px;
                margin-bottom: 20px;
            }

            .admin1-box input[type="submit"] {
                border: 1px solid WHITE;
                background: rgba(0,0,0,0);
                outline: none;
                width: 100%;
                height: 40px;
                color: #fff;
                font-size: 16px;
                border-radius: 16px;
                margin-bottom: 10px;
            }

                .admin1-box input[type="submit"]:hover {
                    cursor: pointer;
                    background: WHITE;
                    color: #000;
                }

        .admin2-box {
            width: 300px;
            height: 220px;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
            background: rgba(0, 0, 0, 0.7);
            color: #fff;
            top: 63%;
            left: 75%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 20px 30px;
            font-family: sans-serif;
        }

            .admin2-box h1 {
                margin: 0;
                padding: 0 0 10px;
                text-align: center;
                font-size: 12px;
                margin-bottom: 20px;
            }

            .admin2-box input[type="text"], input[type="password"] {
     
                border: 1px solid WHITE;
                background: rgba(0,0,0,0.5);
                height: 40px;
              
        
                border-radius: 20px;
                color: #fff;
                font-size: 14px;
       margin-bottom:10px;
               
            }

            .admin2-box input[type="submit"] {
                border: 1px solid WHITE;
                background: rgba(0,0,0,0);
                outline: none;
                color: #fff;
                font-size: 16px;
                border-radius: 20px;
                padding: 10px 10px 10px 10px;
                 margin-bottom:10px;
            }

                .admin2-box input[type="submit"]:hover {
                    cursor: pointer;
                    background: WHITE;
                    color: #000;
                }

        .login-box {
            width: 540px;
            height: 550px;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
            background: rgba(0, 0, 0, 0.7);
            color: #fff;
            top: 50%;
            left: 50%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 70px 30px;
            font-family: sans-serif;
        }



        h1 {
            margin: 0;
            padding: 0 0 20px;
            text-align: center;
            font-size: 19px;
        }

        .login-box p {
            margin: 0;
            padding: 0;
            font-size: 15px;
            color: #31BDC9;
        }

        .login-box input[type="text"] {
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

        .login-box input[type="password"] {
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

        .login-box input[type="submit"] {
            border: 1px solid WHITE;
            background: rgba(0,0,0,0);
            outline: none;
            height: 40px;
            color: #fff;
            font-size: 16px;
            border-radius: 16px;
            margin-top: 20px;
        }

            .login-box input[type="submit"]:hover {
                cursor: pointer;
                background: WHITE;
                color: #000;
            }

        .login-box a {
            text-decoration: none;
            font-size: 14px;
            color: #fff;
        }

            .login-box a:hover {
                color: #39dc79;
            }


        .subtitle {
            top: 82%;
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
            color: red;
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
                    <asp:LinkButton ID="LB_my" runat="server" OnClick="LB_my_Click" Style="color: #75E86B">MY ACCOUNT</asp:LinkButton>
                </a></li>

                <li><a>
                    <asp:LinkButton ID="LB_login" runat="server" OnClick="LB_login_Click" Text="Login"></asp:LinkButton>
                </a></li>
            </ul>
        </nav>




        <div class="subtitle">

            <asp:Label ID="LBL" runat="server" Text=" "></asp:Label>

        </div>






        <asp:HiddenField ID="hfUserID" runat="server" />

        <div class="admin0-box" id="Div1" runat="server">
            <h1>STUDENT DATABASE</h1>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="IDNumber" DataValueField="IDNumber" AutoPostBack="True" CssClass="ddl">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ageDBConnectionString %>" SelectCommand="SELECT DISTINCT [IDNumber] FROM [FinalTable] ORDER BY [IDNumber]"></asp:SqlDataSource>
            <asp:Button ID="BTNstudent" runat="server" Text="View" Font-Bold="false" OnClick="BTNStudent_Click" />

        </div>
        <div class="admin1-box" id="admin1" runat="server">
            <h1>USER DATABASE</h1>
            <asp:Button ID="BTNAccounts" runat="server" Text="Approve/Pend" OnClick="BTNAccounts_Click" Font-Bold="false" />
            <asp:Button ID="BTNGrid" runat="server" Text="Edit" Font-Bold="false" OnClick="BTNGrid_Click" />

        </div>

        <div class="admin2-box" id="admin2" runat="server">
            <h1>CURRICULUM DATABASE</h1>
                        <asp:TextBox ID="yearTb" runat="server" placeholder="Year" Width="65%"></asp:TextBox>
            <asp:Button ID="BTN_Add" runat="server" Text="Add" OnClick="BTN_Add_Click" Width="30%" />
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" CssClass="ddl" Width="98%" DataSourceID="SqlDataSource2" DataTextField="Year" DataValueField="Year">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ageDBConnectionString %>" SelectCommand="SELECT DISTINCT [Year] FROM [yearTbl] ORDER BY [Year]"></asp:SqlDataSource>
            <asp:Button ID="BTN_View" runat="server" Text="View" OnClick="BTN_View_Click" Width="48%" />
            <asp:Button ID="BTN_Delete" runat="server" Text="Delete" OnClick="BTN_Delete_Click" Width="48%" />


            <asp:Label ID="statusLbl" runat="server" Text="" Style="font-size: 13px"></asp:Label>

        </div>

        <div class="login-box">

            <h1>ACCOUNT OVERVIEW</h1>

            <p>Full Name</p>
            <asp:Label ID="LBL_FullName" runat="server" Text="Not logged in" Font-Size="16px"></asp:Label><br />
            <br />




            <p>Contact Number</p>
            <asp:Label ID="LBL_Contact" runat="server" Text="Not logged in" Font-Size="16px"></asp:Label><br />
            <br />


            <p>Username</p>
            <asp:Label ID="LBL_Username" runat="server" Text="Not logged in" Font-Size="16px"></asp:Label><br />
            <br />

            <p>ID Number</p>
            <asp:Label ID="LBL_ID" runat="server" Text="Not logged in" Font-Size="16px"></asp:Label><br />
            <br />



            <p>Email Address</p>
            <asp:Label ID="LBL_Email" runat="server" Text="Not logged in" Font-Size="16px"></asp:Label><br />
            <br />



            <p>Password</p>
            <asp:Label ID="LBL_Password" runat="server" Text="Not logged in" Font-Size="16px"></asp:Label><br />
            <br />

            <p>Type</p>


            <asp:Label ID="LBL_Type" runat="server" Text="Not logged in" Font-Size="16px"></asp:Label><br />




            <asp:TextBox ID="Tb1" runat="server" Text="" Visible="false" />
        </div>

    </form>
</body>


</html>
