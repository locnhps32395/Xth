  <%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

    
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.9.1/font/bootstrap-icons.min.css">
    <style>
        .trending-card {
            width: 170px; /* Giảm kích thước thẻ */
            border: 1px solid #ddd;
            border-radius: 10px;
            overflow: hidden;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 13px; /* Giảm khoảng cách */
            position: relative;
            transition: transform 0.3s;
            
        }
        .trending-card:hover {
            transform: scale(1.05);
        }
        .trending-card img {
            width: 100%;
            height: auto;
        }
        .trending-card .card-body {
            padding: 12px; /* Giảm padding */
        }
        .trending-card .play-icon {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: white;
            font-size: 32px; /* Giảm kích thước nút */
            background: rgba(255, 0, 0, 0.7); /* Màu đỏ */
            border-radius: 50%;
            padding: 4px; /* Giảm padding */
            opacity: 0;
            transition: opacity 0.3s;
            width: 55px;
        }
        .trending-card .overlay {
            position: relative;
        }
        .trending-card:hover .play-icon {
            opacity: 1;
        }
        .trending-card .icon-bar {
            display: flex;
            justify-content: space-around;
            padding: 8px; /* Giảm padding */
            background: #f8f9fa;
        }
        .trending-card .icon-bar i {
            cursor: pointer;
            transition: color 0.3s;
        }
        .trending-card .icon-bar i:hover {
            color: red;
        }
    </style>
</head>
<body>

<div class="container">
    <h2 class="mt-4">Thịnh hành</h2>
    <div class="d-flex flex-wrap">
        <div class="trending-card">
            <div class="overlay">
                <img src="./views/anh/album9.jpg" alt="Trending Music">
                <i class="bi bi-play-circle-fill play-icon"></i>
            </div>
            <div class="card-body">
                <h5 class="card-title">Folk</h5>
                <p class="card-text">Trending Music</p>
            </div>
            <div class="icon-bar">
                <i class="bi bi-heart"></i>
                <i class="bi bi-person-plus"></i>
                <i class="bi bi-three-dots"></i>
            </div>
        </div>
         <div class="trending-card">
            <div class="overlay">
                <img src="./views/anh/album8.jpg" alt="Trending Music">
                <i class="bi bi-play-circle-fill play-icon"></i>
            </div>
            <div class="card-body">
                <h5 class="card-title">Folk</h5>
                <p class="card-text">Trending Music</p>
            </div>
            <div class="icon-bar">
                <i class="bi bi-heart"></i>
                <i class="bi bi-person-plus"></i>
                <i class="bi bi-three-dots"></i>
            </div>
        </div>
         <div class="trending-card">
            <div class="overlay">
                <img src="./views/anh/album7.jpg" alt="Trending Music">
                <i class="bi bi-play-circle-fill play-icon"></i>
            </div>
            <div class="card-body">
                <h5 class="card-title">Folk</h5>
                <p class="card-text">Trending Music</p>
            </div>
            <div class="icon-bar">
                <i class="bi bi-heart"></i>
                <i class="bi bi-person-plus"></i>
                <i class="bi bi-three-dots"></i>
            </div>
        </div>
         <div class="trending-card">
            <div class="overlay">
                <img src="./views/anh/album6.jpg" alt="Trending Music">
                <i class="bi bi-play-circle-fill play-icon"></i>
            </div>
            <div class="card-body">
                <h5 class="card-title">Folk</h5>
                <p class="card-text">Trending Music</p>
            </div>
            <div class="icon-bar">
                <i class="bi bi-heart"></i>
                <i class="bi bi-person-plus"></i>
                <i class="bi bi-three-dots"></i>
            </div>
        </div>
        <!-- Thêm các thẻ .trending-card khác ở đây -->
    </div>

    <h2 class="mt-4">Nhẹ nhàn</h2>
    <div class="d-flex flex-wrap">
        <div class="trending-card">
            <div class="overlay">
                <img src="./views/anh/album3.jpg" alt="Chill Music">
                <i class="bi bi-play-circle-fill play-icon"></i>
            </div>
            <div class="card-body">
                <h5 class="card-title">Decompress Jazz</h5>
                <p class="card-text">Discovery Playlists</p>
            </div>
            <div class="icon-bar">
                <i class="bi bi-heart"></i>
                <i class="bi bi-person-plus"></i>
                <i class="bi bi-three-dots"></i>
            </div>
        </div>
          <div class="trending-card">
            <div class="overlay">
                <img src="./views/anh/album2.jpg" alt="Chill Music">
                <i class="bi bi-play-circle-fill play-icon"></i>
            </div>
            <div class="card-body">
                <h5 class="card-title">Decompress Jazz</h5>
                <p class="card-text">Discovery Playlists</p>
            </div>
            <div class="icon-bar">
                <i class="bi bi-heart"></i>
                <i class="bi bi-person-plus"></i>
                <i class="bi bi-three-dots"></i>
            </div>
        </div>
          <div class="trending-card">
            <div class="overlay">
                <img src="./views/anh/album1.jpg" alt="Chill Music">
                <i class="bi bi-play-circle-fill play-icon"></i>
            </div>
            <div class="card-body">
                <h5 class="card-title">Decompress Jazz</h5>
                <p class="card-text">Discovery Playlists</p>
            </div>
            <div class="icon-bar">
                <i class="bi bi-heart"></i>
                <i class="bi bi-person-plus"></i>
                <i class="bi bi-three-dots"></i>
            </div>
        </div>
          <div class="trending-card">
            <div class="overlay">
                <img src="./views/anh/album11.jpg" alt="Chill Music">
                <i class="bi bi-play-circle-fill play-icon"></i>
            </div>
            <div class="card-body">
                <h5 class="card-title">Decompress Jazz</h5>
                <p class="card-text">Discovery Playlists</p>
            </div>
            <div class="icon-bar">
                <i class="bi bi-heart"></i>
                <i class="bi bi-person-plus"></i>
                <i class="bi bi-three-dots"></i>
            </div>
        </div>
        <!-- Thêm các thẻ .trending-card khác ở đây -->
    </div>
      <h2 class="mt-4">Chữa lành</h2>
    <div class="d-flex flex-wrap">
        <div class="trending-card">
            <div class="overlay">
                <img src="./views/anh/album9.jpg" alt="Chill Music">
                <i class="bi bi-play-circle-fill play-icon"></i>
            </div>
            <div class="card-body">
                <h5 class="card-title">Decompress Jazz</h5>
                <p class="card-text">Discovery Playlists</p>
            </div>
            <div class="icon-bar">
                <i class="bi bi-heart"></i>
                <i class="bi bi-person-plus"></i>
                <i class="bi bi-three-dots"></i>
            </div>
        </div>
          <div class="trending-card">
            <div class="overlay">
                <img src="./views/anh/album2.jpg" alt="Chill Music">
                <i class="bi bi-play-circle-fill play-icon"></i>
            </div>
            <div class="card-body">
                <h5 class="card-title">Decompress Jazz</h5>
                <p class="card-text">Discovery Playlists</p>
            </div>
            <div class="icon-bar">
                <i class="bi bi-heart"></i>
                <i class="bi bi-person-plus"></i>
                <i class="bi bi-three-dots"></i>
            </div>
        </div>
          <div class="trending-card">
            <div class="overlay">
                <img src="./views/anh/album3.jpg" alt="Chill Music">
                <i class="bi bi-play-circle-fill play-icon"></i>
            </div>
            <div class="card-body">
                <h5 class="card-title">Decompress Jazz</h5>
                <p class="card-text">Discovery Playlists</p>
            </div>
            <div class="icon-bar">
                <i class="bi bi-heart"></i>
                <i class="bi bi-person-plus"></i>
                <i class="bi bi-three-dots"></i>
            </div>
        </div>
          <div class="trending-card">
            <div class="overlay">
                <img src="./views/anh/album5.jpg" alt="Chill Music">
                <i class="bi bi-play-circle-fill play-icon"></i>
            </div>
            <div class="card-body">
                <h5 class="card-title">Decompress Jazz</h5>
                <p class="card-text">Discovery Playlists</p>
            </div>
            <div class="icon-bar">
                <i class="bi bi-heart"></i>
                <i class="bi bi-person-plus"></i>
                <i class="bi bi-three-dots"></i>
            </div>
        </div>
        <!-- Thêm các thẻ .trending-card khác ở đây -->
    </div>
       <h2 class="mt-4">Tâm trạng</h2>
    <div class="d-flex flex-wrap">
        <div class="trending-card">
            <div class="overlay">
                <img src="./views/anh/album4.jpg" alt="Chill Music">
                <i class="bi bi-play-circle-fill play-icon"></i>
            </div>
            <div class="card-body">
                <h5 class="card-title">Decompress Jazz</h5>
                <p class="card-text">Discovery Playlists</p>
            </div>
            <div class="icon-bar">
                <i class="bi bi-heart"></i>
                <i class="bi bi-person-plus"></i>
                <i class="bi bi-three-dots"></i>
            </div>
        </div>
          <div class="trending-card">
            <div class="overlay">
                <img src="./views/anh/album6.jpg" alt="Chill Music">
                <i class="bi bi-play-circle-fill play-icon"></i>
            </div>
            <div class="card-body">
                <h5 class="card-title">Decompress Jazz</h5>
                <p class="card-text">Discovery Playlists</p>
            </div>
            <div class="icon-bar">
                <i class="bi bi-heart"></i>
                <i class="bi bi-person-plus"></i>
                <i class="bi bi-three-dots"></i>
            </div>
        </div>
          <div class="trending-card">
            <div class="overlay">
                <img src="./views/anh/album8.jpg" alt="Chill Music">
                <i class="bi bi-play-circle-fill play-icon"></i>
            </div>
            <div class="card-body">
                <h5 class="card-title">Decompress Jazz</h5>
                <p class="card-text">Discovery Playlists</p>
            </div>
            <div class="icon-bar">
                <i class="bi bi-heart"></i>
                <i class="bi bi-person-plus"></i>
                <i class="bi bi-three-dots"></i>
            </div>
        </div>
          <div class="trending-card">
            <div class="overlay">
                <img src="./views/anh/album7.jpg" alt="Chill Music">
                <i class="bi bi-play-circle-fill play-icon"></i>
            </div>
            <div class="card-body">
                <h5 class="card-title">Decompress Jazz</h5>
                <p class="card-text">Discovery Playlists</p>
            </div>
            <div class="icon-bar">
                <i class="bi bi-heart"></i>
                <i class="bi bi-person-plus"></i>
                <i class="bi bi-three-dots"></i>
            </div>
        </div>
        <!-- Thêm các thẻ .trending-card khác ở đây -->
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
