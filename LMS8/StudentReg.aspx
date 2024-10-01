<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentReg.aspx.cs" Inherits="LMS8.StudentReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LMS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="bootstrap.bundle.min.js"></script>
    <link href="bootstrap.min.css" rel="stylesheet" />
    <style>
        fieldset {
            border: 1px solid #007bff;
            border-radius: 0.5rem;
            padding: 0.5rem 2rem;
            width: auto;
            border-color: #007bff;
            background-color: #f8f9fa;
        }

        legend {
            border-color: #007bff;
            border-radius: 0.5rem;
            padding: 0.3rem 0.5rem;
            border: 1px solid #007bff;
            color: #007bff;
            width: auto;
            margin-top: -2%;
            float: initial;
            font-size: 0.8rem;
            font-weight: 600;
            background-color: white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid px-5">
            <div>
                <nav class="navbar bg-body-tertiary fixed-top">
                    <div class="container-fluid">

                        <div class="container">
                            <ul class="navbar-nav flex-row gap-3">
                                <li>
                                    <asp:LinkButton Text="Home" CssClass="text-decoration-none" runat="server" PostBackUrl="#" />
                                </li>
                                <li>
                                    <asp:LinkButton Text="Student Registration" CssClass="text-decoration-none" runat="server" PostBackUrl="StudentReg.aspx" />
                                </li>
                                <li>
                                    <asp:LinkButton Text="Study Material" CssClass="text-decoration-none" runat="server" PostBackUrl="#" />
                                </li>
                                <li>
                                    <asp:LinkButton Text="Report" CssClass="text-decoration-none" runat="server" PostBackUrl="#" />
                                </li>
                            </ul>
                        </div>
                        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
                            <div class="offcanvas-header">
                                <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Offcanvas</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                            </div>
                            <div class="offcanvas-body">
                                <ul class="navbar-nav flex-col gap-3">
                                    <li class="">
                                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                                    </li>
                                    <li class="">
                                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                                    </li>
                                    <li class="">
                                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                                    </li>

                                </ul>

                            </div>
                        </div>
                    </div>
                </nav>
            </div>
            <dov class="container px-5 mt-5">
                <div class="card mt-5">
                    <div class="card-header text-center">
                        <h1>Student Registration Form</h1>
                    </div>
                    <div class="card-body">
                        <fieldset class="bg-transparent">
                            <legend>Student Registration </legend>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <asp:Label Text="Student Name" class="form-label fw-semibold" runat="server" />
                                    <asp:TextBox runat="server" ID="txtStudentReg" class="form-control border  border-primary" Placeholder="Enter Name" />
                                </div>
                                <div class=" col-md-6 mb-3">
                                    <asp:Label Text="Student ID" class="form-label fw-semibold" runat="server" />
                                    <asp:TextBox runat="server" ID="txtStudentRollNumber" class="form-control border border-primary" Placeholder="Enter Student ID  " />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <asp:Label Text="Subject" class="form-label fw-semibold" runat="server" />
                                    <asp:DropDownList CssClass="form-select form-control border border-primary" ID="ddlSubject" runat="server">
                                        <asp:ListItem Text="Select Subject" Value="0" />
                                        <asp:ListItem Text="Physics" Value="1" />
                                        <asp:ListItem Text="Mathametics" Value="2" />
                                        <asp:ListItem Text="Biology" Value="3" />
                                    </asp:DropDownList>
                                </div>
                                <div class=" col-md-6 mb-3">
                                    <asp:Label Text="Subject" class="form-label fw-semibold" runat="server" />
                                    <asp:DropDownList CssClass="form-select form-control border border-primary" ID="ddlSemester" runat="server">
                                        <asp:ListItem Text="Select Semester" Value="0" />
                                        <asp:ListItem Text="Fisrt Semester" Value="1" />
                                        <asp:ListItem Text="Secound Semester" Value="2" />
                                        <asp:ListItem Text="third Semester" Value="3" />
                                        <asp:ListItem Text="Fourth Semester" Value="4" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <asp:Label Text="Date of Birth" class="form-label fw-semibold" runat="server" />
                                    <asp:TextBox runat="server" CssClass="form-control  border border-primary" ID="txtDOB" TextMode="Date" />
                                </div>
                                <div class=" col-md-6 mb-3">
                                    <asp:Label Text="Mobile Number" class="form-label fw-semibold" runat="server" />
                                    <asp:TextBox runat="server" CssClass="form-control border border-primary" Placeholder="Enter 10 Digit Number" ID="txtMobile" TextMode="Phone" />
                                </div>
                            </div>
                            <div class="row-md-6">
                                <asp:Button Text="Submit" ID="btnSubmit" CssClass="btn btn-primary" runat="server" OnClick="btnSubmit_Click"/>
                                <asp:Button Text="clear" ID="btnClear" CssClass="btn btn-warning" runat="server" />
                            </div>
                        </fieldset>
                    </div>
                </div>
            </dov>
        </div>
    </form>
</body>
</html>
