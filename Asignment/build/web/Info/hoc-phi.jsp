<%-- 
    Document   : quy-che-tuyen-sinh
    Created on : Nov 6, 2023, 12:52:34 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                padding: 0;
                margin: 0;
            }
            table {
                border-collapse: collapse;
            }

            th, td {
                border: 1px solid black;
            }
            form{
                background: white
            }
        </style>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css
              " rel="stylesheet">
    </head>
    <body>
        <h1 style=" text-align: center;color: #F27125">TRƯỜNG ĐẠI HỌC FPT</h1>
        <img src="img/header-page.jpg" style="width: 100%">

        <div style="text-align: center">
            <h3>HỌC PHÍ</h3>
        </div>
        <div style="margin: 0 15rem">
            <strong>PHẦN 1: HỌC PHÍ</strong><br>
            <strong>1. Tôi có mong muốn theo học Trường ĐH FPT. Có thể cho tôi biết điều kiện tuyển sinh của Trường là gì?  </strong><br>
            Năm 2023, Trường Đại học FPT quy định về đối tượng tuyển sinh và phương thức tuyển sinh như sau:<br>
            <ul>
                <li>Đối tượng tuyển sinh: Các thí sinh đã được công nhận tốt nghiệp trung học phổ thông (THPT) của Việt Nam hoặc có bằng tốt nghiệp của nước ngoài được công nhận trình độ tương đương tính đến thời điểm nhập học, có nguyện vọng theo học tại Trường Đại học FPT.</li>
                <li>Phương thức tuyển sinh:</li>
            </ul>


            
            <strong>Lưu ý:</strong><br>
            – Chỉ áp dụng với cuộc thi được tổ chức gần nhất hoặc cách thời gian nhập học không quá 3 năm.<br>            Các thí sinh đã được công nhận tốt nghiệp trung học phổ thông (THPT) của Việt Nam hoặc có bằng tốt nghiệp của nước ngoài được công nhận trình độ tương đương tính đến thời điểm nhập học, có nguyện vọng theo học tại Trường Đại học FPT.<br>
            – Các trường hợp đặc biệt sẽ do Chủ tịch Hội đồng tuyển sinh Trường Đại học FPT phê duyệt.<br>
            <strong>b. Thi giành học bổng</strong><br>
            Thí sinh đủ điều kiện trúng tuyển Đại học FPT, tốt nghiệp THPT năm 2023, chưa từng đạt học bổng trong các kì thi học bổng của Đại học FPT và đạt một trong các tiêu chí sau sẽ đủ điều kiện tham gia kỳ thi học bổng của Đại học FPT để nhận các mức học bổng 10% – 100% (học phí toàn khoá học):<br>
            – Có tên trong danh sách đội tuyển thi Học sinh giỏi Quốc Gia (các môn: Toán, Vật lý, Hóa học, Tin học, Tiếng Anh);<br>
            – Đạt xếp hạng Top30 theo học bạ THPT 2023 (chứng nhận thực hiện trên trang https://SchoolRank.fpt.edu.vn);<br>
            – Điểm GPA từ mức A (hoặc tương đương) trở lên (đối với các thí sinh tốt nghiệp phổ thông với văn bằng do nước ngoài cấp)<br>
            <strong>4. Lịch trình thi học bổng, xét cấp học bổng</strong><br>
            – Lịch trình thi học bổng: Tổ chức thi vào ngày 07/05/2023<br>
            – Lịch trình xét cấp học bổng: Nhà trường sẽ ưu tiên cho những hồ sơ đăng ký sớm cho tới khi hết học bổng.<br>
            <div class="wow fadeInUp" data-wow-delay="0.5s">
                <h4 style="text-align: center">Đăng Ký Tư Vấn</h4>
                <div class="bg-light rounded h-100 d-flex align-items-center p-5">
                    <form action="add"  onsubmit="return validateForm()" method="post">
                        <div class="row g-3">
                            <div class="col-12 col-sm-6">
                                <input type="text" class="form-control border-0" placeholder="Your Name*" style="height: 55px;" name="name" required>
                            </div>
                            <div class="col-12 col-sm-6">
                                <input type="text" class="form-control border-0"  placeholder="Your Phone*" id="telephone" style="height: 55px;" name="phone" required pattern="[0-9]{10}">
                            </div>
                            <div class="col-12 col-sm-6">
                                <input type="email" class="form-control border-0" placeholder="Email*" style="height: 55px;" name="email" required>
                            </div>
                            <div class="col-12 col-sm-6">
                                <input type="date" class="form-control border-0" placeholder="Birthday" style="height: 55px;" name="birth" required>
                            </div>
                            <div class="col-12 col-sm-6">
                                <input type="text" class="form-control border-0" placeholder="Province/city*" style="height: 55px;" name="city" required>
                            </div>
                            <div class="col-12 col-sm-6">
                                <input type="text" class="form-control border-0" placeholder="THPT" style="height: 55px;"name="thpt" required>     
                            </div>
                            <div class="col-12">
                                <input type="text" class="form-control border-0" placeholder="Facebook link" style="height: 55px;" name="face" required>     
                            </div>

                            <p style="color: black">register*</p>
                            <div class="row">
                                <div class="col-3">
                                    <input type="checkbox" value="1" name="tu_van" >tư vấn
                                </div>
                                <div class="col-3">
                                    <input type="checkbox" value="1" name="tuyen_sinh" >tuyển sinh
                                </div>
                                <div class="col-3">
                                    <input type="checkbox" value="1" name="xet" >xét học bổng
                                </div>
                                <div class="col-3">
                                    <input type="checkbox" value="1" name="thi" >thi học bổng
                                </div>
                            </div>
                            <button class="btn btn-primary w-100 py-3" type="submit">Register</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
