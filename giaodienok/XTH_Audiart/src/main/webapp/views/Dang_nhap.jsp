<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng Nhập</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.9.1/font/bootstrap-icons.min.css">
    <style>
        .login-form {
            max-width: 700px;
            margin: auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            margin-top: 50px;
        }
        .login-form .form-group {
            margin-bottom: 15px;
        }
        .login-form .form-control {
            height: calc(2.25rem + 10px);
        }
        .login-form .btn {
            width: 100%;
        }
        .login-form .form-check {
            margin-bottom: 15px;
        }
        .login-form .text-right {
            text-align: right;
        }
        .login-form .text-center a {
            color: red;
        }
        .login-form .text-center a:hover {
            text-decoration: none;
        }
        .login-form .icon {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="login-form">
            <h2 class="text-center"></i> Đăng Nhập</h2>
            <form>
                <div class="form-group">
                    <label for="phoneNumber"><i class="bi bi-phone icon"></i>Nhập số điện thoại</label>
                    <input type="text" class="form-control" id="phoneNumber" placeholder="Số điện thoại">
                </div>
                <div class="form-group">
                    <label for="password"><i class="bi bi-lock icon"></i>Nhập mật khẩu</label>
                    <input type="password" class="form-control" id="password" placeholder="Mật khẩu">
                    <small class="form-text text-right">
                        <a href="/quenmatkhau"><i class="bi bi-key icon"></i>Quên mật khẩu?</a>
                    </small>
                </div>
                <button type="submit" class="btn btn-danger"><i class="bi bi-box-arrow-in-right"></i> Đăng nhập</button>
                <div class="text-center mt-3">
                    <p>Bạn chưa có tài khoản? <a href="/dangki"><i class="bi bi-person-plus icon"></i> Đăng ký ngay</a></p>
                </div>
            </form>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
