﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

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

        .registerBox {
            width: 550px;
            height: 630px;
            background: rgba(0, 0, 0, 0.7);
               box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
            color: #fff;
            top: 50%;
            left: 50%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 70px 30px;
            font-family: sans-serif;
        }

        .avatar {
            width: 300px;
            height: 320px;
            position: absolute;
            top: -150px;
            left: calc(35% - 50px);
        }




        .registerBox p {
            margin: 0;
            padding: 0;
            font-size: 14px;
        }

        .registerBox input[type="text"] {
            margin-bottom: 15px;
            border: none;
            border-bottom: 1px solid #fff;
            background: transparent;
            outline: none;
            height: 30px;
            color: #fff;
            font-size: 13px;
            position: center;
        }

        .registerBox input[type="password"] {
            width: 40%;
            margin-bottom: 20px;
            border: none;
            border-bottom: 1px solid #fff;
            background: transparent;
            outline: none;
            height: 40px;
            color: #fff;
            font-size: 13px;
            position: center;
        }

        .registerBox input[type="submit"] {
         
            outline: none;
            height: 40px;
              border: 1px solid WHITE;
              background: rgba(0,0,0,0);
            color: #fff;
            font-size: 18px;
            border-radius: 20px;
            width: 80px;
            margin-top: 10px;
        }

            .registerBox input[type="submit"]:hover {
                cursor: pointer;
                background: WHITE;
                color: #000;
            }

        .registerBox a {
            text-decoration: none;
            font-size: 13px;
            color: #fff;
        }

            .registerBox a:hover {
                color: #39dc79;
            }


        .generalLabel {
            top: 88.5%;
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

        .emailCheck {
            top: 52.8%;
            left: 70.3%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 70px 30px;
            font-family: sans-serif;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            font-family: sans-serif;
            font-size: 14px;
            color: aliceblue;
        }

        .passwordCheck {
            top: 61%;
            left: 74.9%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 70px 30px;
            font-family: sans-serif;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            font-family: sans-serif;
            font-size: 14px;
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
                    <asp:LinkButton ID="LB_reg" runat="server" OnClick="LB_reg_Click" Text="REGISTER" Style="color: #75E86B"> </asp:LinkButton>
                </a></li>

                <li><a>
                    <asp:LinkButton ID="LB_login" runat="server" OnClick="LB_login_Click" Text="Login"></asp:LinkButton>
                </a></li>
            </ul>
        </nav>




        <div class="generalLabel">

            <asp:Label ID="LBL" runat="server" Text=" "></asp:Label>

        </div>

        <div class="emailCheck">



            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email Address!"
                ControlToValidate="TBemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>


        </div>
        <div class="passwordCheck">




            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Min. of 8, must be alphanumeric with special chars."
                ControlToValidate="TBpass" ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&+=]).*$"></asp:RegularExpressionValidator>




        </div>





        <asp:HiddenField ID="hfUserID" runat="server" />

        <div class="registerBox">
           
            <h1>REGISTER</h1>

            <p>Full Name</p>
            <asp:TextBox ID="TBfn" runat="server" placeholder="First Name" Width="49%"></asp:TextBox>
            <asp:TextBox ID="TBln" runat="server" placeholder="Last Name" Width="49%"></asp:TextBox>
            <p>Contact Number</p>
            <asp:TextBox ID="TBcontact" runat="server" Width="100%"></asp:TextBox><br />
            <p>Username</p>
            <asp:TextBox ID="TBun" runat="server" placeholder="Must be unused" Width="100%"></asp:TextBox><br />
            <p>Email Address</p>
            <asp:TextBox ID="TBemail" runat="server" placeholder="Must be a valid email address" Width="100%"></asp:TextBox>
            <br />
            <p>Password</p>
            <asp:TextBox ID="TBpass" runat="server" TextMode="Password" placeholder="Must be min. of 8, alphanumeric with special character/s)" Width="100%"></asp:TextBox><br />
            <asp:TextBox ID="TBcpass" runat="server" TextMode="Password" placeholder="Confirm Password" Width="100%"></asp:TextBox><br />
            <asp:RadioButtonList ID="RadioButtonList1" RepeatDirection="Horizontal" Style="color: #31BDC9; font-family: sans-serif; font-size: 14px" runat="server" RepeatLayout="Flow">
                <asp:ListItem>Administrator</asp:ListItem>
                <asp:ListItem>Standard</asp:ListItem>
            </asp:RadioButtonList>



            <div style="font-size: 14px">
                <asp:CheckBox ID="CheckBox1" runat="server" />
                I have read and agree to the <a class="image-link" style="color: #31BDC9; font-family: sans-serif; font-size: 14px" href="images/tac.jpg">terms of service</a>

            </div>
            <br />

            <asp:Button ID="BTNsubmit" runat="server" OnClick="BTNsubmit_Click" Text="Submit" />

        </div>

    </form>
</body>


</html>
