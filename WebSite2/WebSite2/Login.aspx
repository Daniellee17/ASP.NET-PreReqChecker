﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

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
            background: url(images/bg.jpg);
            background-size: cover;
        }

        .loginBox {
            width: 320px;
            height: 410px;
            background: rgba(0, 0, 0, 0.7);
            color: #fff;
            top: 50%;
            left: 50%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 70px 30px;

             box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
            font-family: sans-serif;
        }



        h1 {
            margin: 0;
            padding: 0 0 20px;
            text-align: center;
            font-size: 19px;
        }

        .loginBox p {
            margin: 0;
            padding: 0;
            font-size: 14px;
        }

        .loginBox input {
            width: 100%;
            margin-bottom: 20px;
        }

            .loginBox input[type="text"], input[type="password"] {
                border: none;
                border-bottom: 1px solid #fff;
                background: transparent;
                outline: none;
                height: 40px;
                color: #fff;
                font-size: 13px;
            }

            .loginBox input[type="submit"] {
                 box-shadow: 0 3px 20px 0px rgba(0, 0, 0, 0.1);
                  border: 1px solid WHITE;
                height: 40px;
               background: rgba(0,0,0,0);
                color: #fff;
                font-size: 15px;
                border-radius: 20px;
    
            }




                .loginBox input[type="submit"]:hover {
                     box-shadow: 0 3px 20px 0px rgba(0, 0, 0, 0.1);
                    cursor: pointer;
                         border: 1px solid WHITE;
                    background: WHITE;
                    color: #000;
                }

        .loginBox a {
            text-decoration: none;
            font-size: 14px;
            color: #fff;
        }

            .loginBox a:hover {

                color: #39dc79;
            }




        .generalLabel {
            top: 74%;
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
                        <asp:LinkButton ID="LB_reg" runat="server" OnClick="LB_reg_Click" Text="REGISTER"> </asp:LinkButton>
                    </a></li>


    

                <li><a>
                    <asp:LinkButton ID="LB_login" runat="server" OnClick="LB_login_Click" Text="Login" Style="color: #75E86B"></asp:LinkButton>
                </a></li>
            </ul>
        </nav>


        <div class="generalLabel">
            <asp:Label ID="LBLerror" runat="server" Text=" "></asp:Label>
        </div>

        <div class="loginBox">
       
            <h1>LOGIN</h1>

            <p>Username</p>
            <asp:TextBox ID="TBuser" runat="server" placeholder="Enter Username"></asp:TextBox>
            <p>Password</p>
            <asp:TextBox ID="TBpass" runat="server" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />



            <a href="Registration.aspx">Don't have an account?</a>



        </div>

    </form>
</body>
</html>
