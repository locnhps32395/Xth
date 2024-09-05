<%@ page pageEncoding="utf-8"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

    <style>
        body {
            display: flex;
            min-height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
        }
        .sidebar {
            width: 250px;
            background-color: #343a40;
            color: #fff;
            height: 100vh;
            position: fixed;
            padding-top: 20px;
        }
        .sidebar a {
            color: #fff;
            text-decoration: none;
            display: block;
            padding: 10px 20px;
            margin-bottom: 5px;
        }
        .sidebar a:hover {
            background-color: #495057;
        }
        .sidebar .active {
            background-color: #28a745;
        }
        .content {
            margin-left: 250px;
            padding: 20px;
            width: 100%;
        }
        .navbar {
            background-color: #f8f9fa;
        }
        .navbar .navbar-brand {
            margin-left: 250px;
        }
        .card {
            margin-bottom: 20px;
        }
        .header-icons {
            display: flex;
            align-items: center;
        }
        .header-icons a, .header-icons button {
            color: #495057;
            margin-right: 10px;
        }
        .header-icons a:hover, .header-icons button:hover {
            color: #007bff;
        }
    </style>
</head>
<body>
    <div class="content">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand" href="/admin">Quản lý</a>
            <form class="form-inline ml-auto">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            </form>
            <div class="header-icons">
                <a href="/trangchu"><i class="fas fa-home"></i> Trang chủ</a> <!-- Nút Trở về Trang chủ -->
                <a href="#"><i class="fas fa-star"></i> Tải xuống .zip</a>
                <a href="#"><i class="fas fa-bell"></i></a>
                <a href="#"><i class="fas fa-user"></i></a>
            </div>
        </nav>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">Stats</div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-4">
                                    <p><strong>5407</strong></p>
                                    <p>Active items</p>
                                </div>
                                <div class="col-md-4">
                                    <p><strong>$80.560</strong></p>
                                    <p>Monthly income</p>
                                </div>
                                <div class="col-md-4">
                                    <p><strong>59</strong></p>
                                    <p>Tickets closed</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <p><strong>78464</strong></p>
                                    <p>Items sold</p>
                                </div>
                                <div class="col-md-4">
                                    <p><strong>359</strong></p>
                                    <p>Total users</p>
                                </div>
                                <div class="col-md-4">
                                    <p><strong>$780.064</strong></p>
                                    <p>Total income</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">History</div>
                        <div class="card-body">
                            <canvas id="historyChart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>