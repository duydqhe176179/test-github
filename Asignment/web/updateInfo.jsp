
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thông tin tuyển sinh</title>
        <link rel="stylesheet" href="fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet"> <!-- https://fonts.google.com/ -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/UserDetailStyle.css" rel="stylesheet">
        <link href="css/UserDetail.css" rel="stylesheet" />
        <script
            src="https://code.jquery.com/jquery-3.6.0.min.js"
            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
            crossorigin="anonymous"
        ></script>
        <script
            src="https://cdn.tiny.cloud/1/no-api-key/tinymce/6/tinymce.min.js"
            referrerpolicy="origin"
        ></script>
        <script src="https://cdn.jsdelivr.net/npm/@tinymce/tinymce-jquery@2/dist/tinymce-jquery.min.js"></script>

    </head>
    <body>
        <div class="container h-100">
            <div class="row d-flex justify-content-around align-items-center h-100">
                <div class="col-xl-9 col-lg-8 col-xl-5 offset-xl-1">       
                    <form method="POST" action="updateInfo" enctype="multipart/form-data" style="margin-top: 30px" id="form">
                        <div class="card" style="border-radius: 15px;">
                            <h1 class="mb-4" style="text-align: center; margin-top: 20px">CHINH SUA THONG TIN TUYEN SINH</h1>
                            <div class="card-body">
                                <input type="text" name="id" value="${info.id}" style="display: none">
                                <div class="row align-items-center pt-4 pb-3">
                                    <div class="col-md-3 ps-5">             
                                    </div>
                                    <div class="col-md-9 pe-5">
                                        <p style="color: red; text-align: right">(*) is required</p>                                                    
                                    </div>
                                </div>
                                <div class="row align-items-center py-3">
                                    <div class="col-md-3 ps-5">
                                        <label class="form-label" for="form3Example4">Image</label><br>                                
                                    </div>
                                    <div class="col-md-9 pe-5">
                                        <input type="file" name="image" >
                                        <p style="color: red">${info.image}</p>
                                    </div>
                                </div>   
                                <div class="row align-items-center pt-4 pb-3">
                                    <div class="col-md-3 ps-5">
                                        <label class="form-label" for="form3Example4">Title <label style="color: red">(*)</label></label>                  
                                    </div>
                                    <div class="col-md-9 pe-5">
                                        <input type="text" name="title" id="form3Example4" class="form-control form-control-lg" value="${info.title}" required>
                                    </div>
                                </div>


                                <div class="row align-items-center pt-4 pb-3">
                                    <div class="col-md-3 ps-5">
                                        <label class="form-label" for="form3Example4">Content<label style="color: red">(*)</label></label>                                
                                    </div>
                                    <div class="col-md-9 pe-5">
                                        <textarea name="content"  required>
                                            ${info.content}
                                        </textarea>
                                    </div>
                                </div> 
                                <div class="row align-items-center py-3" style="display: flex;justify-content: end"> 
                                    <div class="col-md-3 ps-5">
                                        <button type="submit"  value="0"class="btn btn-primary btn-lg" onclick="confirm('Are you sure to update ')"style=" color: white; background: red">Post</button>
                                    </div>
                                </div>



                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>



        <script>
            tinymce.init({
                selector: 'textarea',
                plugins: 'ai tinycomments mentions anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount checklist mediaembed casechange export formatpainter pageembed permanentpen footnotes advtemplate advtable advcode editimage tableofcontents mergetags powerpaste tinymcespellchecker autocorrect a11ychecker typography inlinecss',
                toolbar: 'undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | link image media table mergetags | align lineheight | tinycomments | checklist numlist bullist indent outdent | emoticons charmap | removeformat',
                tinycomments_mode: 'embedded',
                tinycomments_author: 'Author name',
                mergetags_list: [
                    {value: 'First.Name', title: 'First Name'},
                    {value: 'Email', title: 'Email'},
                ],
                ai_request: (request, respondWith) => respondWith.string(() => Promise.reject("See docs to implement AI Assistant")),
            });
        </script>
    </body>
</html>
