<?php 
include("../modules/classDB.php"); 
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard </title>
    <!-- ======= Styles ====== -->
    <link rel="stylesheet" href="../assets/css/css.css">
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
        crossorigin="anonymous"
    />
    <script
        src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"
    ></script>

    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"
    ></script>
</head>

<body>
    <style>
        body {
            font-family: 'Lato', sans-serif;
        }

        h1 {
            margin-bottom: 40px;
        }

        label {
            color: #333;
        }

        .btn-send {
            font-weight: 300;
            text-transform: uppercase;
            letter-spacing: 0.2em;
            width: 80%;
            margin-left: 3px;
            }
        .help-block.with-errors {
            color: #ff5050;
            margin-top: 5px;

        }

        .card{
            margin-left: 10px;
            margin-right: 10px;
        }

    </style>
    <!-- =============== Navigation ================ -->
    <?php include("../header.admin.php"); ?>
    <!-- ========================= Main ==================== -->
    <div class="container-fluid">
        <div class="row justify-content-center align-items-center g-2">
            <div class="col"></div>
            <div class="col"></div>
            <div class="col"></div>
            <div class="col-9">
            <div class="container">
        <div class=" text-center mt-5 ">

            <h1 >Thêm Sách</h1>
                
            
        </div>

    
    <div class="row ">
      <div class="col-lg-7 mx-auto">
        <div class="card mt-2 mx-auto p-4 bg-light">
            <div class="card-body bg-light">
       
            <div class = "container">
        <form id="contact-form" role="form" method="post" enctype="multipart/form-data" action="xlThem.php">

            

            <div class="controls">

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="form_name">Tên sách</label>
                            <input id="form_name" type="text" name="book" class="form-control" placeholder="Sách" required="required" data-error="yêu cầu nhập tên sách">
                            
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="form_lastname">Tên tác giả</label>
                            <input id="form_lastname" type="text" name="writer" class="form-control" placeholder="Tác giả" required="required" data-error="Yêu cầu nhập tên tác giả ">
                                                            </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="gia">Giá</label>
                            <input id="gia" type="number" name="price" class="form-control" placeholder="Nhập giá thành " required="required" data-error="giá thành không được trống ">
                            
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="form_need">Thể loại</label>
                            <select id="form_need" name="type" class="form-control" required="required" data-error="Thể loại">
                                <option value="" selected disabled>--Chọn thể loại--</option>
                                <?php for ($i = 0; $i <sizeof($types);$i++) {?>
                                <option value="<?= $types[$i][0] ?>" ><?= $types[$i][1] ?></option>
                                <?php } ?>
                            </select>
                            
                        </div>
                    </div>
                </div>
                <div class="row">
                    
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="fa">Hình ảnh</label>
                            <input type="file"  name="img" accept="image/*" onchange="getImagePreview(event)">
                        </div>
                        
                        <script>
                            function getImagePreview(event) {
                                var image = URL.createObjectURL(event.target.files[0]);
                                var imagediv = document.getElementById('preview');
                                var newimg = document.createElement('img');
                                imagediv.innerHTML = '';
                                newimg.src = image;
                                newimg.width = "365";
                                imagediv.appendChild(newimg);
                            }
                        </script>
                    </div>
                    <div id="preview" class="col-6" style="width: 100%;"></div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="form_message">Thông tin</label>
                            <textarea id="form_message" name="detail" class="form-control" placeholder="Nhập chi tiết ở đây" rows="4" required="required" ></textarea>
                            </div>

                        </div>


                    <div class="col-md-12">
                        
                        <input type="submit" class="btn btn-success btn-send  pt-2 btn-block
                            " value="Thêm sách" >
                    
                </div>
          
                </div>


        </div>
         </form>
        </div>
            </div>


    </div>
        <!-- /.8 -->

    </div>
    <!-- /.row-->

</div>
</div>


            </div>
            
        </div>
        
    </div>
    
    <!-- =========== Scripts =========  -->
    <script src="../assets/js/main.js"></script>

    <!-- ====== ionicons ======= -->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>

</html>