<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

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


        .buttons input[type="submit"] {
            top: 66%;
            position: absolute;
            left: 50%;
            border: none;
            outline: none;
            background: #110A28;
            color: #fff;
            font-size: 30px;
            display: inherit inline;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 15px 25px;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            font-family: banger;
            color: white;
        }

            .buttons input[type="submit"]:hover {
                cursor: pointer;
                background: #381357;
                color: #000;
            }

        }




        .generalLabel {
            top: 71%;
            left: 50%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 70px 30px;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            font-family: sans-serif;
            font-size: 18px;
            color: red;
        }


        .mainLabel {
            top: 44%;
            left: 50%;
            width: 100%;
            position: absolute;
            display: inherit inline;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 70px 30px;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            font-family: banger;
            font-size: 150px;
            color: white;
        }

        .subLabel {
            top: 56%;
            left: 50%;
            width: 100%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 70px 30px;
            font-family: mech;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            font-size: 60px;
            color: white;
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
                    <asp:LinkButton ID="LB_home" runat="server" OnClick="LB_home_Click" Style="color: #31BDC9">HOME</asp:LinkButton>
                </a></li>
                <div class="myClass" id="myID" runat="server">

                    <li><a>
                           <asp:LinkButton ID="LB_my" runat="server" OnClick="LB_my_Click">MY ACCOUNT</asp:LinkButton>
                    </a></li>
                </div>


                <div class="regClass" id="regID" runat="server">
                    <li><a>
                        <asp:LinkButton ID="LB_reg" runat="server" OnClick="LB_reg_Click" Text="REGISTER"> </asp:LinkButton>
                    </a></li>
                </div>





                <li><a>
                    <asp:LinkButton ID="LB_login" runat="server" OnClick="LB_login_Click" Text="Login"></asp:LinkButton>
                </a></li>
            </ul>
        </nav>





        <div class="generalLabel">

            <asp:Label ID="LBLerror" runat="server" Text=""></asp:Label>

        </div>

        <div class="mainLabel">

            <asp:Label ID="Label1" runat="server" Text="MECHANICAL ENGINEERING"></asp:Label>



        </div>

        <div class="subLabel">

            <asp:Label ID="Label4" runat="server" Text="Pre-requisite Checker"></asp:Label>


        </div>

        <div class="buttons">

            <asp:Button ID="BTN_118" runat="server" Text="ID 118 and Above" OnClick="BTN_118_Click" />
            <br />
            <br />
            <asp:Button ID="BTN_115" runat="server" Text="ID 115 and Below" OnClick="BTN_115_Click" Style="top: 74%" />
            <br />
            <br />
            <asp:Button ID="BTN_ContactUs" runat="server" Text="Contact Us" OnClick="BTN_ContactUs_Click" Style="top: 82%; width: 220px" />


        </div>







    </form>
</body>
</html>
