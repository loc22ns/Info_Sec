<?php include("modules/classDB.php") ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard </title>
    <!-- ======= Styles ====== -->
    <link rel="stylesheet" href="assets/css/css.css">
</head>

<body>
    <!-- =============== Navigation ================ -->
    <div class="contain" style="width: 100%;">
        <div class="navigation">
            <ul>
                <li>
                    <a href="#">
                        <span class="icon">
                            <ion-icon name="logo-apple"></ion-icon>
                        </span>
                        <span class="title">Brand Name</span>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <span class="icon">
                            <ion-icon name="home-outline"></ion-icon>
                        </span>
                        <span class="title">Dashboard</span>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <span class="icon">
                            <ion-icon name="people-outline"></ion-icon>
                        </span>
                        <span class="title">Customers</span>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <span class="icon">
                            <ion-icon name="chatbubble-outline"></ion-icon>
                        </span>
                        <span class="title">Messages</span>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <span class="icon">
                            <ion-icon name="help-outline"></ion-icon>
                        </span>
                        <span class="title">Help</span>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <span class="icon">
                            <ion-icon name="settings-outline"></ion-icon>
                        </span>
                        <span class="title">Settings</span>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <span class="icon">
                            <ion-icon name="lock-closed-outline"></ion-icon>
                        </span>
                        <span class="title">Password</span>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <span class="icon">
                            <ion-icon name="log-out-outline"></ion-icon>
                        </span>
                        <span class="title">Sign Out</span>
                    </a>
                </li>
            </ul>
        </div>

        <!-- ========================= Main ==================== -->
        <div class="main" >
            <div class="topbar">
                <div class="toggle">
                    <ion-icon name="menu-outline"></ion-icon>
                </div>

                <!-- <div class="search">
                    <label>
                        <input type="text" placeholder="Search here">
                        <ion-icon name="search-outline"></ion-icon>
                    </label>
                </div> -->

                <!-- <div class="user">
                    <img src="assets/imgs/customer01.jpg" alt="">
                </div> -->
            </div>

            <!-- ======================= Cards ================== -->

            <!-- ================ Order Details List ================= -->
            <div style="padding: 20px;">
                <div class="recentOrders">
                    <div class="cardHeader">
                        <!-- <h2>Recent Orders</h2> -->
                        <a style="margin-bottom: 20px;" href="admin/themsach.php" class="btn">Thêm sản phẩm</a>
                        <br>
                    </div>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <!-- Load DataTables CSS -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/dataTables.bootstrap5.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.7/js/dataTables.bootstrap5.min.js"></script>
    <script>
        $(document).ready(function () {
  $("table").each(function (_, table) {
    $(table).DataTable();
  });
});

        
    </script>
                    <table id="allbooks" class="table table-striped" style="width:100% ;">
                        <thead>
                            <tr>
                                <td>id</td>
                                <td> Tên sách</td>
                                <td>Ảnh </td>
                                <td> Giá </td>
                                <td>Tác giả</td>
                                <td>Hoạt động</td>
                            </tr>
                        </thead>

                        <tbody>
                            <?php for ($i=0; $i < sizeof($books); $i++) { ?>
                               
                            <tr>
                                <td><?= $books[$i]->id?></td>
                                <td style="width: 20%;"><?= $books[$i]->name?></td>
                                <td><img src="assets/<?=$books[$i]->img ?>"width="40%" alt=""></td>
                                <td><?= $books[$i]->price?></td>
                                <td><?= $books[$i]->witer?></td>
                                <td><a href="admin/Xoa.php?id=<?= $books[$i]->id?>">Xóa</a></td>
                            </tr>
                                <?php }?>
                           
                    </table>
                </div>
            </div>
        </div>
    </div>

    <!-- =========== Scripts =========  -->
    <script src="assets/js/main.js"></script>

    <!-- ====== ionicons ======= -->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>

</html>