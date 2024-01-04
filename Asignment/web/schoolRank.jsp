<%-- 
    Document   : schoolRank
    Created on : Nov 9, 2023, 7:55:54 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>School Rank</title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Roboto:wght@500;700;900&display=swap" rel="stylesheet"> 

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <style>
            :root {
                --color-white: #f3f3f3;
                --color-darkblue: #1b1b32;
                --color-darkblue-alpha: rgba(27, 27, 50, 0.8);
                --color-green: #37af65;
                --color-green: #094b22;
            }

            *,
            *::before,
            *::after {
                box-sizing: border-box;
            }

            body {
                font-family: 'Raleway', sans-serif;
                font-size: 1rem;
                font-weight: 400;
                line-height: 1.4;
                color: var(--color-white);
                margin: 0;
            }


            /* mobile friendly alternative to using background-attachment: fixed */

            body::before {
                content: '';
                position: fixed;
                top: 0;
                left: 0;
                height: 100%;
                width: 100%;
                z-index: -1;
                background-size: cover;
                background-repeat: no-repeat;
                background-position: center;
            }

            h1 {
                font-weight: 400;
                line-height: 1.2;
            }

            p {
                font-size: 1.125rem;
            }

            h1,
            p {
                margin-top: 0;
                margin-bottom: 0.5rem;
            }

            label {
                display: flex;
                align-items: center;
                font-size: 1.125rem;
                margin-bottom: 0.5rem;
            }

            input,
            button,
            select,
            textarea {
                margin: 0;
                font-family: inherit;
                font-size: inherit;
                line-height: inherit;
            }

            button {
                border: none;
            }

            .container {
                width: 100%;
                margin: 3.125rem auto 0 auto;
            }

            @media (min-width: 576px) {
                .container {
                    max-width: 540px;
                }
            }

            @media (min-width: 768px) {
                .container {
                    max-width: 720px;
                }
            }

            .header {
                padding: 0 0.625rem;
                margin-bottom: 1.875rem;
            }

            .description {
                font-style: italic;
                font-weight: 200;
                text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.4);
            }

            .clue {
                margin-left: 0.25rem;
                font-size: 0.9rem;
                color: #e4e4e4;
            }

            .text-center {
                text-align: center;
            }


            /* form */

            form {
                background: #F37125;
                padding: 2.5rem 0.625rem;
                border-radius: 0.25rem;
            }

            @media (min-width: 480px) {
                form {
                    padding: 2.5rem;
                }
            }

            .form-group {
                margin: 0 auto 1.25rem auto;
                padding: 0.25rem;
            }

            .form-control {
                display: block;
                width: 100%;
                height: 2.375rem;
                padding: 0.375rem 0.75rem;
                color: #495057;
                background-color: #fff;
                background-clip: padding-box;
                border: 1px solid #ced4da;
                border-radius: 0.25rem;
                transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
            }

            .form-control:focus {
                border-color: #80bdff;
                outline: 0;
                box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
            }

            .input-radio,
            .input-checkbox {
                display: inline-block;
                margin-right: 0.625rem;
                min-height: 1.25rem;
                min-width: 1.25rem;
            }

            .input-textarea {
                min-height: 120px;
                width: 100%;
                padding: 0.625rem;
                resize: vertical;
            }

            .submit-button {
                display: block;
                width: 100%;
                padding: 0.75rem;
                background: var(--color-green);
                color: inherit;
                border-radius: 2px;
                cursor: pointer;
            }
            .nav-tabs .nav-link.active {
                background-color: #4CAF50; /* Change this to your desired color */
                color: white; /* Change this to your desired text color */
                background: #D83D13
            }
            .form-group label{
                color: white
            }
            .form_group
        </style>
    </head>
    <body>
        <div class="container">
            <header class="header " style="text-align: center">
                <a href="#"><img src="img/logo.png"  width="50%" alt="alt"/></a>
                <img src="img/5-removebg-preview.png" alt="alt"/>
                <h2 style="color: #F37125">XẾP HẠNG HỌC SINH THPT</h2>
            </header>
        </div>
        <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0 wow fadeIn" data-wow-delay="0.1s">
            
            <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                    <a href="info" class="nav-item nav-link active">Home</a>
                    <a href="about.jsp" class="nav-item nav-link">About</a>
                    <a href="#" class="nav-item nav-link">Service</a>

                    <a href="#" class="nav-item nav-link">Contact</a>
                    <a href="schoolRank.jsp" class="nav-item nav-link active">School Rank</a>
                </div>
            </div>
        </nav>


        <div class="container-fluid">
            <form method="post" action="tinh"  onsubmit="return checkAndSubmit()" >
                <h2 >${notion}</h2>
                <div class="row">

                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for>Tổ hợp môn:</label>
                            <select class="form-control" required name="to_hop" id="to_hop">
                                <option value>-- Chọn tổ hợp môn --</option>
                                <option value="1">Khoa học tự nhiên</option>
                                <option value="2">Xã hội</option>
                            </select>
                        </div>
                    </div>

                </div>
                <div class="col-12">
                    <h4>Điểm thi THPT</h4>
                    <p><i style="font-size: 14px; color: white">Nếu điểm là số thập phân, sử dụng dấu
                            chấm</i>
                    </p>
                </div>
                <div class="row">
                    <div class="col-6 col-sm-4">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-4">
                                    <label for>Toán:</label>
                                </div>
                                <div class="col-8">
                                    <input type="text" name="toan" id="float1" class="form-control number" required
                                           placeholder="0.00">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-4">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-4">
                                    <label for>Ngữ văn:</label>
                                </div>
                                <div class="col-8">
                                    <input type="text" name="van" id="float2" class="form-control number" required
                                           placeholder="0.00">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-4">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-4">
                                    <label for>Ngoại ngữ:</label>
                                </div>
                                <div class="col-8">
                                    <input type="text" name="anh" id="float3" class="form-control number" required
                                           placeholder="0.00">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" id="ban_khtn">
                    <div class="col-6 col-sm-4">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-4">
                                    <label for>Vật lý:</label>
                                </div>
                                <div class="col-8">
                                    <input type="text" name="ly" id="float4" class="form-control number" required
                                           placeholder="0.00">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-4">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-4">
                                    <label for>Hóa học:</label>
                                </div>
                                <div class="col-8">
                                    <input type="text" name="hoa" id="float5" class="form-control number" required
                                           placeholder="0.00">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-4">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-4">
                                    <label for>Sinh học:</label>
                                </div>
                                <div class="col-8">
                                    <input type="text" name="sinh" id="float6" class="form-control number" required
                                           placeholder="0.00">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" id="ban_xh">
                    <div class="col-6 col-sm-4">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-4">
                                    <label for>Lịch sử:</label>
                                </div>
                                <div class="col-8">
                                    <input type="text" name="su" id="float7" class="form-control" required
                                           placeholder="0.00">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-4">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-4">
                                    <label for>Địa lý:</label>
                                </div>
                                <div class="col-8">
                                    <input type="text" name="dia" id="float8" class="form-control number" required
                                           placeholder="0.00">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-4">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-4">
                                    <label for>GDCD:</label>
                                </div>
                                <div class="col-8">
                                    <input type="text" name="gdcd" id="float9" class="form-control number" required
                                           placeholder="0.00">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 text-center">
                    <button type="submit" class="btn btn-submit" style="color: white;background: #483D8B">Xem kết quả</button>
                </div>
        </div>
    </form><br>
    <h2 id="error" style="color: red;text-align: center"></h2>
    <br><br><br>

    <ul >
        <li style="color: black">
            Xếp hạng học sinh THPT được Trường Đại học FPT thực hiện dựa theo phương pháp ATAR và số liệu thống kê.
        </li>
        <li style="color: black">
            Xếp hạng mang tính chất tham khảo và phục vụ cho công tác tuyển sinh vào Trường Đại học FPT.
        </li>
        <li style="color: black">
            Thí sinh thuộc TOP50 THPT 2023 (thuộc 50% học sinh có kết quả học tập tốt nhất) và đã tốt nghiệp THPT đủ điều kiện nhập học vào ĐH FPT. Tham khảo Quy chế tuyển sinh Trường Đại học FPT. 
        </li>
    </ul>
</div>
</div>
</div>








<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
<script>
                function  checkAndSubmit() {
                    // Get the value from the input field
                    var input1 = document.getElementById("float1").value;
                    var input2 = document.getElementById("float2").value;
                    var input3 = document.getElementById("float3").value;
                    var input4 = document.getElementById("float4").value;
                    var input5 = document.getElementById("float5").value;
                    var input6 = document.getElementById("float6").value;
                    var input7 = document.getElementById("float7").value;
                    var input8 = document.getElementById("float8").value;
                    var input9 = document.getElementById("float9").value;
                    // Parse the input value as a float
                    var float1 = parseFloat(input1);
                    var float2 = parseFloat(input2);
                    var float3 = parseFloat(input3);
                    var float4 = parseFloat(input4);
                    var float5 = parseFloat(input5);
                    var float6 = parseFloat(input6);
                    var float7 = parseFloat(input7);
                    var float8 = parseFloat(input8);
                    var float9 = parseFloat(input9);

                    // Check if the parsed value is a valid number and not NaN
                    if (isNaN(float1) || isNaN(float2) || isNaN(float3) || isNaN(float4) || isNaN(float5) || isNaN(float6) || isNaN(float7) || isNaN(float8) || isNaN(float9)) {
                        document.getElementById("error").innerText = "Vui lòng nhập đúng định dạng điểm ( Nếu điểm là số thập phân, sử dụng dấu chấm )";
                        return false;
                    }
                    return true;
                }
</script>
</body>
</html>
