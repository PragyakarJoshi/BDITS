    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SunBeamEnterprises.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Home - SunBeam Enterprises</title>
    <link runat="server" href="~/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link runat="server" href="~/assets/css/style.css" rel="stylesheet" />

</head>
<body> 
    <div class="landing">
        <a href="~/index.aspx" runat="server">
            <img runat="server" src="~/assets/logo.png" alt="SunBeam Enterprises" class="img-logo"/>
        </a>
        <br />
        <div class="row">
            <div class="col-sm-4">
                <a href="~/Projects.aspx" runat="server">
                    <div class="box">
                        <img runat="server" src="~/assets/project.png" alt="Projects" class="img-icon"/>
                        <p class="page-selection-title">Projects</p>
                    </div>
                </a>
            </div>
            <div class="col-sm-4">
                <a href="~/Employees.aspx" runat="server">
                    <div class="box">
                        <img runat="server" src="~/assets/employee.png" alt="Employees" class="img-icon"/>
                        <p class="page-selection-title">Employees</p>
                    </div>
                </a>
            </div>
            <div class="col-sm-4">
                <a href="~/Divisions.aspx" runat="server">
                    <div class="box">
                        <img runat="server" src="~/assets/department.png" alt="Divisions" class="img-icon"/>
                        <p class="page-selection-title">Divisions</p>
                    </div>
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                <a href="~/Dependents.aspx" runat="server">
                    <div class="box">
                        <img runat="server" src="~/assets/dependent.png" alt="Dependents" class="img-icon"/>
                        <p class="page-selection-title">Dependents</p>
                    </div>
                </a>
            </div>
            <div class="col-sm-4">
                <a href="~/Skills.aspx" runat="server">
                    <div class="box">
                        <img runat="server" src="~/assets/skill.png" alt="Skills" class="img-icon"/>
                        <p class="page-selection-title">Skills</p>
                    </div>
                </a>
            </div>
            <div class="col-sm-4">
                <a href="~/Tasks.aspx" runat="server">
                    <div class="box">
                        <img runat="server" src="~/assets/task.png" alt="Tasks" class="img-icon"/>
                        <p class="page-selection-title">Tasks</p>
                    </div>
                </a>
            </div>
        </div>
    </div>
        
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
</body>
</html>
