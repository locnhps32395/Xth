
<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Music Website</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.9.1/font/bootstrap-icons.min.css">
    <!-- Bootstrap CSS v5.3.2 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
        crossorigin="anonymous" />

    <!-- Custom CSS -->
    <style>
        .btn-dangnhap {
            background-color: red;
            color: #fff;
            width: 270px;
        }

        .btn-dangki {
            background-color: red;
            color: #fff;
            width: 270px;
        }.btn-dangnhap:hover{
        background-color: #b12323;
         color: white;}
        .btn-dangki:hover{
        background-color: #b12323;
        color: white;}
    </style>
    <style>
        body {
            padding-top: 70px;
        }

        .bg-banner {
            background-image: url('./views/anh/banner.png');
            background-size: cover;
            background-position: center;
            height: 455px;
        }

        .footer {
            background-color: aquamarine;
            height: 200px;
            text-align: center;
            padding-top: 80px;
        }
    </style>
</head>

<body>
       <a href="/trangchu">Đăng xuất</a>
    <!-- Fixed Header -->
    <div class="fixed-top bg-dark text-white text-center py-3">
        <div class="container d-flex justify-content-between align-items-center">
            <div class="logo" ><img src="./views/anh/logochinh.png" alt="" style="width: 150px; height: 40px;"></div>
            <div>
                <button type="button" class="btn " data-bs-toggle="modal" data-bs-target="#loginModal" style="border: 1px solid rgb(228, 111, 42); color: white;">
                    Đăng nhập
                </button>
                <a href="#" class="btn btn-danger me-3"  data-bs-toggle="modal" data-bs-target="#loginModal">Tạo tài khoản</a>
                <a href="#" class="text-white me-3">Dành cho nghệ sĩ</a>
            </div>
        </div>
    </div>

   
     <!-- Modal -->
<div class="modal fade" id="loginModal" aria-hidden="true" data-bs-backdrop="static" style="margin-top: 130px">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="text-center mb-3">
                    <a href="/dangnhap">
                        <button class="btn btn-dangnhap">
                            <i class="bi bi-box-arrow-in-right"></i> Đăng nhập
                        </button>
                    </a>
                </div>
                <div class="text-center mb-3">
                    <a href="/dangki">
                        <button class="btn btn-dangki">
                            <i class="bi bi-person-plus"></i> Đăng kí
                        </button>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

    <!-- Main Content -->
    <div class="container-fluid">
        <!-- Banner Section -->
        <div class="container bg-info text-white bg-banner">
            <div class="d-flex justify-content-center align-items-center flex-column h-100">
                <h1 class="text-center">Kết nối trên Audiart</h1>
                <h5 class="text-center mb-4">Khám phá, phát trực tuyến và chia sẻ danh sách kết hợp âm nhạc không ngừng mở rộng từ các nghệ sĩ lớn và mới nổi trên khắp thế giới.</h5>
                <a href="#" class="btn btn-danger"data-bs-toggle="modal" data-bs-target="#loginModal">Đăng ký miễn phí</a>
            </div>
        </div>

        <!-- Search Section -->
        <div class="container mt-5">
            <div class="d-flex justify-content-center align-items-center mb-4">
                <input class="form-control me-2" type="search" placeholder="Tìm kiếm nghệ sĩ, ban nhạc, bản nhạc" aria-label="Search" style="width: 600px;">
                <span>hoặc</span>
                <button class="btn btn-danger ms-2">Tải lên riêng của bạn</button>
            </div>
            <div class="text-center mb-4">
                <h4>Nghe những gì đang thịnh hành miễn phí trong cộng đồng SoundCloud</h4>
            </div>
            
            <!-- Cards Section -->
            <div class="row row-cols-1 row-cols-md-6 g-4">
                <div class="col">
                    <div class="card h-100 bg-light">
                        <div class="card-body">
                            <div class="bg-beige mb-2" style="height: 177px;"><img src="views/anh/album1.jpg" alt="" style="width: 160px; height: 170px;"></div>
                            <h5 class="card-title"> Burgundy</h5>
                            <p class="card-text text-muted"> $UICIDEBOY$</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100 bg-light">
                        <div class="card-body">
                            <div class="bg-beige mb-2" style="height: 177px;"><img src="views/anh/album2.jpg" alt="" style="width: 160px; height: 170px;"></div>
                            <h5 class="card-title">Misery In Waking</h5>
                            <p class="card-text text-muted">$UICIDEBOY$</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100 bg-light">
                        <div class="card-body">
                            <div class="bg-beige mb-2" style="height: 177px;"><img src="views/anh/album11.jpg" alt="" style="width: 160px; height: 170px;"></div>
                            <h5 class="card-title">ANGELIC</h5>
                            <p class="card-text text-muted">R2R MOE</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100 bg-light">
                        <div class="card-body">
                            <div class="bg-beige mb-2" style="height: 177px;"><img src="views/anh/album3.jpg" alt="" style="width: 160px; height: 170px;"></div>
                            <h5 class="card-title">BAND4BAND</h5>
                            <p class="card-text text-muted">Central Cee</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100 bg-light">
                        <div class="card-body">
                            <div class="bg-beige mb-2" style="height: 177px;"><img src="views/anh/album4.jpg" alt="" style="width: 160px; height: 170px;"></div>
                            <h5 class="card-title"> PICK UP</h5>
                            <p class="card-text text-muted">PAWSA</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100 bg-light">
                        <div class="card-body">
                            <div class="bg-beige mb-2" style="height: 177px;"><img src="views/anh/album5.jpg" alt="" style="width: 160px; height: 170px;"></div>
                            <h5 class="card-title"> Don Toliver</h5>
                            <p class="card-text text-muted">Don Toliver</p>
                        </div>
                    </div>
                </div>
                <!-- Add more cards as needed -->
            </div>


             <!-- Search Section -->
        <div class="container mt-5">
            <!-- Cards Section -->
            <div class="row row-cols-1 row-cols-md-6 g-4">
                <div class="col">
                    <div class="card h-100 bg-light">
                        <div class="card-body">
                            <div class="bg-beige mb-2" style="height: 177px;"><img src="views/anh/album6.jpg" alt="" style="width: 160px; height: 170px;"></div>
                            <h5 class="card-title">LUCKI-ON</h5>
                            <p class="card-text text-muted">LUCKI</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100 bg-light">
                        <div class="card-body">
                            <div class="bg-beige mb-2" style="height: 177px;"><img src="views/anh/album7.jpg" alt="" style="width: 160px; height: 170px;"></div>
                            <h5 class="card-title">Magic Johnson</h5>
                            <p class="card-text text-muted">ian</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100 bg-light">
                        <div class="card-body">
                            <div class="bg-beige mb-2" style="height: 177px;"><img src="views/anh/album8.jpg" alt="" style="width: 160px; height: 170px;"></div>
                            <h5 class="card-title"> LUCK & Lil</h5>
                            <p class="card-text text-muted">LUCKI</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100 bg-light">
                        <div class="card-body">
                            <div class="bg-beige mb-2" style="height: 177px;"><img src="views/anh/album9.jpg" alt="" style="width: 160px; height: 170px;"></div>
                            <h5 class="card-title">SportsCenter</h5>
                            <p class="card-text text-muted">BossMan Dlon</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100 bg-light">
                        <div class="card-body">
                            <div class="bg-beige mb-2" style="height: 177px;"><img src="views/anh/album1.jpg" alt="" style="width: 160px; height: 170px;"></div>
                            <h5 class="card-title">DEVIL IS A LIE</h5>
                            <p class="card-text text-muted">Tommy Richman</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100 bg-light">
                        <div class="card-body">
                            <div class="bg-beige mb-2" style="height: 177px;"><img src="views/anh/album5.jpg" alt="" style="width: 160px; height: 170px;"></div>
                            <h5 class="card-title"> Don Toliver</h5>
                            <p class="card-text text-muted">Don Toliver</p>
                        </div>
                    </div>
                </div>
                <!-- Add more cards as needed -->
            </div>

            <div class="text-center mt-4">
                <a href="#" class="btn btn-danger">Khám phá danh sách phát hành</a>
            </div>
        </div>

        <!-- Additional Section -->
        <div class="container mt-5">
            <img src="./views/anh/banner.png" alt="Banner" class="img-fluid">
        </div>

        <!-- Additional Information -->
        <div class="container mt-5 text-center">
            <h1>Cảm ơn vì đã lắng nghe.</h1>
            <h5>Bây giờ hãy tham gia. Lưu bản nhạc, theo dõi nghệ sĩ và xây dựng danh sách phát. Tất cả đều miễn phí.</h5>
            <a href="#" class="btn btn-danger me-3" data-bs-toggle="modal" data-bs-target="#loginModal" style="width: 190px; height: 40px;">Tạo tài khoản</a>
            <p></p>
            <p>Bạn có sẳn một tài khoản? <a href="../views/Trangchu" class="btn me-3" data-bs-toggle="modal" data-bs-target="#loginModal" style="width: 120px; height: 40px; border: 1px solid black; ">Đăng nhập</a></p>
            <div class="d-flex justify-content-center flex-wrap">
                <a href="#" style="text-decoration: none;">Giới thiệu về chúng tôi-</a>
                <a href="#" style="text-decoration: none;">Tài nguyên nghệ sĩ-</a>
                <a href="#" style="text-decoration: none;">Blog-</a>
                <a href="#" style="text-decoration: none;">Việc làm-</a>
                <a href="#" style="text-decoration: none;">Nhà phát triển-</a>
                <a href="#" style="text-decoration: none;">Trợ giúp-</a>
                <a href="#" style="text-decoration: none;">Pháp lý-</a>
                <a href="#" style="text-decoration: none;">Quyền riêng tư-</a>
                <a href="#" style="text-decoration: none;">Chính sách cookie-</a>
                <a href="#" style="text-decoration: none;">Trình quản lý cookie-</a>
                <a href="#" style="text-decoration: none;">Dấu ấn-</a>
                <a href="#" style="text-decoration: none;">Biểu đồ</a>
            </div>
        </div>
    </div>

            <!-- Footer -->
            <div class="fixed-footer bg-secondary text-white text-center py-3">
                <p>&copy; 2024 Music Website. All rights reserved.</p>
            </div>
        </div>

        <!-- Bootstrap JS and dependencies -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
            integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
            crossorigin="anonymous"></script>
    </body>
</html>
