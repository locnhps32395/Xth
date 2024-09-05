<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quên Mật Khẩu</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.9.1/font/bootstrap-icons.min.css">
    <style>
        .forgot-password-form {
            max-width: 700px;
            margin: auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            margin-top: 50px;
            text-align: center;
            position: relative;
        }
        .forgot-password-form .form-group {
            margin-bottom: 15px;
        }
        .forgot-password-form .form-control {
            height: calc(2.25rem + 10px);
        }
        .forgot-password-form .btn {
            width: 100%;
        }
        .forgot-password-form .icon {
            font-size: 50px;
            color: red;
            margin-bottom: 15px;
        }
        .forgot-password-form h3 {
            margin-bottom: 15px;
        }
        .back-button {
            position: absolute;
            top: 10px;
            left: 10px;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <div class="container">
        <a href="/dangnhap" class="btn btn-link back-button">
            <i class="bi bi-arrow-left"></i> Đăng nhập
        </a>
        <div class="forgot-password-form">
            <i class="bi bi-lock icon"></i>
            <h3>Quên mật khẩu</h3>
            <p>Hãy nhập số điện thoại/email của bạn vào bên dưới để bắt đầu quá trình khôi phục mật khẩu.</p>
            <form>
                <div class="form-group">
                  
                    <input type="text" class="form-control" id="phoneEmail" placeholder="Số điện thoại/ Email">
                </div>
                <button type="submit" class="btn btn-danger"><i class="bi bi-arrow-right-circle"></i> Tiếp tục</button>
            </form>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
