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
            th,td{
                border: solid 1px ;
            }
            table{
                border-collapse: collapse
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
            <h3>HƯỚNG DẪN THỦ TỤC NHẬP HỌC</h3>
        </div>
        <div style="margin: 0 15rem">
            <strong>I. Nộp học phí</strong><br>
            – Nộp học phí kỳ định hướng và 1 mức Tiếng Anh chuẩn bị (xem chi tiết mức phí tại Quy định tài chính năm 2023 cho sinh viên các hệ đào tạo Trường ĐH FPT);<br>
            – Nếu thuộc diện được miễn học Tiếng Anh, học phí này sẽ chuyển vào học phí chuyên ngành cho học kỳ đầu tiên. Thí sinh nhận học  bổng chỉ nộp học phí tương ứng với mức học bổng được cấp;<br>
            – Thời gian nộp học phí: Trước 17h ngày 03/09/2023; Đối với thí sinh nhập học đợt bổ sung: Trước 17h ngày 6/9/2023.<br>
            – Thí sinh nộp các khoản phí vào tài khoản ngân hàng của Trường Đại học FPT theo hình thức chuyển khoản (xem số TK bên dưới).<br>
            <strong>II. Nộp hồ sơ nhập học</strong>
            
            <strong>1. Thí sinh gửi bản chụp/scan các hồ sơ bên dưới qua email hoặc website của trường</strong><br>
            – Chứng từ nộp tiền;<br>
            – Phiếu nhập học (theo mẫu của Trường Đại học FPT tại đây);<br>
            – Học bạ THPT (đủ 3 năm);<br>
            – Giấy chứng nhận kết quả kỳ thi tốt nghiệp THPT năm 2023;<br>
            – Bằng tốt nghiệp THPT (hoặc Giấy chứng nhận tốt nghiệp THPT tạm thời nếu chưa có Bằng tốt nghiệp THPT – Sinh viên cần nộp bổ sung bản sao chứng thực Bằng tốt nghiệp THPT trong vòng 1 năm kể từ ngày bắt đầu học);<br>
            – Giấy khai sinh;<br>
            – Đơn đề nghị tham gia chương trình tín dụng có chữ ký xác nhận của phụ huynh (áp dụng đối với diện tín dụng);<br>
            – Thoả thuận tín dụng (áp dụng đối với diện tín dụng);<br>
            – Giấy tờ, tài liệu xác thực hoàn cảnh khó khăn tài chính của gia đình (áp dụng đối với diện tín dụng);<br>
            – CMND/ CCCD của Người bảo lãnh (áp dụng đối với diện tín dụng/ Học bổng/ Ưu đãi học phí cho thí sinh có anh/ chị/ em ruột theo học FE);<br>
            – CMND/ CCCD hoặc giấy khai sinh (nếu chưa được cấp CMND/CCCD) của anh/ chị/ em ruột thí sinh theo học FE (áp dụng đối với diện Ưu đãi học phí cho thí sinh có anh/ chị/ em ruột theo học FE);<br>
            <strong>2. Thí sinh nộp bản cứng hồ sơ nhập học bên dưới qua bưu điện hoặc nộp trực tiếp khi đến trường nhập học</strong><br>
            – Chứng từ nộp tiền: Bản sao;<br>
            – Phiếu nhập học: Bản gốc có chữ ký theo mẫu của Trường Đại học FPT;<br>
            – Đơn đề nghị tham gia chương trình tín dụng: Bản gốc có chữ ký xác nhận của phụ huynh (áp dụng đối với diện tín dụng);<br>
            – Giấy xác nhận sinh viên/ học sinh của anh/ chị/ em ruột đang theo học tại các chương trình đào tạo của FE trên toàn quốc: Bản gốc (áp dụng đối với diện Ưu đãi học phí cho thí sinh có anh/ chị/ em ruột theo học FE);<br>
            
            <strong>3. Thời hạn nộp hồ sơ nhập học</strong><br>
            – Thời hạn nộp hồ sơ online: Trước 17h ngày 03/09/2023; Đối với thí sinh nhập học đợt bổ sung: Trước 17h ngày 6/9/2023.<br>
            – Thời hạn nộp hồ sơ bản cứng: Khi đến trường nhập học.<br>
            
            <br>
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
