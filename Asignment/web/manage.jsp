<%-- 
    Document   : manage
    Created on : Nov 5, 2023, 10:35:45 PM
    Author     : Admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        <script src="https://cdn.tiny.cloud/1/v2saiqx68nn924zq9xagmn8galaqifhtnlhjbr6jeofrd8n1/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <script src="https://kit.fontawesome.com/4c292f6960.js" crossorigin="anonymous"></script>
        <style>
            td{
                text-align: center;
            }
            th{
                padding: 10px;
            }
            .refresh{
                padding-left: 20px;
                padding-bottom: 10px;
            }
            .refresh input{
                background: #0354D5;
                color: white;
                border: none;
                padding: 5px 10px;
            }
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
            }

            header {
                background-color: #F37125;
                color: white;
                padding: 10px;
                text-align: center;
            }
            th{
                text-align: center
            }



            section {
                padding: 20px;
            }
            .logout-container {
                text-align: center;
                margin-top: 100px;
            }

        </style>
    </head>
    <body >
        <header>
            <div class="row">
                <div class="col-sm-3">
                    <img src="img/logo.png" width="100%" " alt="alt"/> 
                </div>
                <div class="col-sm-7">
                    <h1>Admin Page</h1>
                </div>
            </div>
        </header>

        <div class="container">
            <section class=" row">
                <!-- Admin content goes here -->
                <h2 class="col-sm-11">Welcome, ${account.user}!</h2>
                <div class="col-sm-1">
                    <a class="btn btn-danger" href="logout" style="width: 100%">Log out</a>
                </div>
            </section>



            <br><br>
            <h3>Danh sách cần tư vấn</h3><br>
            <form  class="refresh" action="displayRegister" method="post">
                <button type="submit" value="Refresh" class="btn btn-primary">
                    <i class="fa-solid fa-rotate-right"></i> Refresh
                </button>
            </form>

            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Tên</th>
                            <th>Điện thoại</th>
                            <th>Email</th>
                            <th>Ngày sinh</th>
                            <th>Nơi sinh sống</th>
                            <th>Trường</th>
                            <th>Facebook</th>
                            <th>Tư vấn</th>
                            <th>Tuyển sinh</th>
                            <th>Xét học bổng</th>
                            <th>Thi học bổng</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="e" items="${list}" >
                            <tr>
                                <td>${e.name}</td>
                                <td>${e.mobile}</td>
                                <td>${e.email}</td>
                                <td>${e.birthday}</td>
                                <td>${e.city}</td>
                                <td>${e.thpt}</td>
                                <td>${e.face}</td>
                                <td>${e.tu_van}</td>
                                <td>${e.tuyen_sinh}</td>
                                <td>${e.xet}</td>
                                <td>${e.thi}</td>
                                <td><a href="delete?id=${e.id}" onclick="return confirmAccess('${link.url}')"><i class="fa-solid fa-trash"></i></a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <br><br><br>

            <h3>Danh sách thông tin tuyển sinh <a href="addInfo"><i class="fa-solid fa-plus"></i></a></h3><br>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Title</th>
                            <th></th>
                            <th></th>

                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="l" items="${listInfo}" >
                            <tr>
                                <td>${l.title}</td>
                                <td><a href="updateInfo?id_info=${l.id}"  ><i class="fa-solid fa-pen-to-square"></i></a></td>
                                <td><a href="deleteInfo?id_info=${l.id}" onclick="return confirmAccess('${link.url}')"><i class="fa-solid fa-trash"></i></a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <br><br><br>

            <h3>Danh sách cựu sinh viên <a href="addOldStudent"><i class="fa-solid fa-plus"></i></a></h3><br>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Title</th>
                            <th></th>
                            <th></th>

                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="o" items="${listO}" >
                            <tr>
                                <td>${o.name}</td>
                                <td><a href="updateOldStudent?id_old=${o.id}"><i class="fa-solid fa-pen-to-square"></i></a></td>
                                <td><a href="deleteOldStudent?id_old=${o.id}" onclick="return confirmAccess('${link.url}')"><i class="fa-solid fa-trash"></i></a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <br><br>

        <footer >
            @Admin
            <p>&copy; 2023 Your Company. All rights reserved. | <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a></p>

        </footer>
        <script>
            function confirmAccess(url) {
                var confirmation = confirm("Do you want to delete ?");
                if (confirmation) {
                    // User confirmed, access the link
                    window.location.href = url;
                } else {
                    // User canceled, do nothing
                    return false;
                }
            }
        </script>

    </body>
</html>
