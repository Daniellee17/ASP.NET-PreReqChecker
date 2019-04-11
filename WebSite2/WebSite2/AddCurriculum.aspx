<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddCurriculum.aspx.cs" Inherits="AddCurriculum" %>

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

        .subLabel {
            top: 12%;
            left: 78%;
            width: 100%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            font-family: banger;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            font-size: 35px;
            color: white;
        }

        .ddl {
            margin: 0;
            padding: 0;
            border: 1px solid WHITE;
            background: rgba(0,0,0,0.6);
            height: 33px;
            width: 100%;
            left: 0%;
            border-radius: 20px;
            color: #fff;
            font-size: 14px;
            margin-left: 5px;
            margin-top: 5px;
            margin-bottom: 10px;
        }



        body {
            margin: 0;
            padding: 0;
            background: url(images/bgdark.jpg);
            background-size: cover;
            background-attachment: fixed;
            background-repeat: no-repeat;
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

        h1 {
            margin: 0;
            padding: 0 0 10px;
            text-align: center;
            font-size: 16px;
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


        .generalLabel {
            top: 71%;
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
            font-size: 18px;
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

        .gridviewBox {
            width: 68%;
            height: 410%;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
            background: rgba(0, 0, 0, 0.7);
            color: #fff;
            top: 219.8%;
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
                background: green;
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

        <div class="subLabel">

            <asp:Label ID="titleLbl" runat="server" Text=" "></asp:Label>


        </div>
      
        <div class="gridviewBox">


            <asp:GridView ID="gvUsers" runat="server" CellPadding="4" ForeColor="Black" GridLines="None" AutoGenerateColumns="false"
                ShowFooter="true"
                DataKeyNames="id"
                ShowHeaderWhenEmpty="true"
                OnRowCommand="gvUsers_RowCommand"
                OnRowEditing="gvUsers_RowEditing"
                OnRowCancelingEdit="gvUsers_RowCancelingEdit"
                OnRowUpdating="gvUsers_RowUpdating"
                OnRowDeleting="gvUsers_RowDeleting"
                Style="font-family: sans-serif; text-align: center; margin: auto; background: transparent; outline: none; height: 40px; font-size: 12px; position: center"
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
                        <FooterTemplate>
                              <asp:TextBox ID="txtTermNoFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="COURSE">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Course") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCourse" Text='<%# Eval("Course") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtCourseFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="COURSE TITLE">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("CourseTitle") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCourseTitle" Text='<%# Eval("CourseTitle") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtCourseTitleFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="UNITS">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Units") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtUnits" Text='<%# Eval("Units") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtUnitsFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="SOFT">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("SoftReq") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtSoft" Text='<%# Eval("SoftReq") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtSoftFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="CO">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("CoReq") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCo" Text='<%# Eval("CoReq") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtCoFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="HARD">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("HardReq") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtHard" Text='<%# Eval("HardReq") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtHardFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>



                    <asp:TemplateField HeaderText="MODIFY">

                        <ItemTemplate>
                            <asp:ImageButton ImageUrl="~/images/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px" />
                            <asp:ImageButton ImageUrl="~/images/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton ImageUrl="~/images/save.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px" />
                            <asp:ImageButton ImageUrl="~/images/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:ImageButton ImageUrl="~/images/addnew.png" runat="server" CommandName="AddNew" ToolTip="AddNew" Width="20px" Height="20px" />
                        </FooterTemplate>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>

        </div>

    </form>
</body>
</html>
