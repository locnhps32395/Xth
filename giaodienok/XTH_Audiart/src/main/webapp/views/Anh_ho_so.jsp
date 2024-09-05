   <%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

   <style>
        .header {
            background-color: #D3B3C2;
            color: white;
            padding: 30px 0;
            text-align: center;
            position: relative;
            width: 1300px;
        }
        .header img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
        }
        .header h1 {
            font-size: 24px;
            margin-top: 10px;
        }
        .header button {
            position: absolute;
            top: 20px;
            right: 20px;
            background: none;
            border: none;
            color: white;
            font-size: 16px;
        }
        .profile-nav {
            background-color: #f8f9fa;
            padding: 10px 0;
        }
        .profile-nav a {
            margin: 0 15px;
            color: #6c757d;
            text-decoration: none;
            font-weight: 500;
        }
        .spotlight {
            text-align: center;
            padding: 50px 0;
        }
    </style>
    
    
    
<div class="header">
    <button>Upload header image</button>
    <img src="./views/anh/album6.jpg" alt="Profile Picture">
    <h1>19_ Nguyễn Hữu Lộc</h1>
    <h2>19_ Nguyễn Hữu Lộc</h2>
</div>

<div class="profile-nav text-center">
    <a href="#">All</a>
    <a href="#">Popular tracks</a>
    <a href="#">Tracks</a>
    <a href="#">Albums</a>
    <a href="#">Playlists</a>
    <a href="#">Reposts</a>
</div>

<div class="spotlight">
    <h3>Spotlight (0/5)</h3>
    <p>Followers: 0 | Following: 3 | Tracks: 1</p>
</div>
    