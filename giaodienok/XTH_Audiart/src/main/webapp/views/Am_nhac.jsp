<%@ page pageEncoding="utf-8"%>

   
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <title>LAB_8 Bài_3 Fpoly WEB1043</title>
    <style>
        #seek-bar {
            width: 100%;
            /* Đảm bảo thanh seek bar mở rộng đầy đủ */
            margin: 0 10px;
            /* Khoảng cách giữa các phần tử */
        }

        .music-player-controls {
            padding: 0.5rem;
            background-color: #f8f9fa;
            color: #343a40;
            border-top: 1px solid #dee2e6;
            display: flex;
            justify-content: space-between;
            /* Căn chỉnh các phần tử vào giữa và tạo khoảng trống ở hai đầu */
            align-items: center;
            flex-wrap: wrap;
        }

        .control-section,
        .time-info,
        .volume-section,
        .favorite-section {
            display: flex;
            align-items: center;

            flex-grow: 1;
            /* Cho phép mở rộng tối đa trong không gian còn lại */
        }

        .control-button {
            background: none;
            border: none;
            cursor: pointer;

        }

        .control-button i {
            font-size: 1.2rem;
        }

        .mix-buttons i,
        .icon-clickable {
            cursor: pointer;

        }

        .time-info {
            display: flex;
            align-items: center;
        }

        .time-text {
            margin: 0 0.3rem;
        }

        .seek-bar {
            width: 100%;
            /* Đảm bảo thanh seek bar mở rộng đầy đủ */
        }

        .volume-section {
            display: flex;
            align-items: center;
            flex: 1;
            /* Mở rộng theo chiều ngang */
        }

        .volume-slider {
            width: 70px;
            /* Độ dài của thanh trượt âm lượng */
        }

        .song-info {

            align-items: center;
            text-align: center;
        }

        .song-info img {
            width: 60px;
            margin-right: 10px;
        }

        .favorite-section i {
            font-size: 1.5rem;
            /* Đảm bảo kích thước của biểu tượng trái tim */
        }

        #player-container {
            position: fixed;
            bottom: 0;
            width: 100%;
            z-index: 1000;
        }
    </style>
</head>

<body>
    <div id="container">
        <div id="player-container">
            <video id="myplayer" width="640" height="360">
                <source src="./video/NguMotMinhtinhRatTinh-HIEUTHUHAINegavKewtiie-8397765.mp3" type="audio/mp3" />
            </video>
            <div id="controls" class="music-player-controls">
                <div class="control-section d-flex align-items-center">
                    <div class="song-info d-flex align-items-center col-3">
                        <div class="album-art">
                            <img src="./views/anh/album5.jpg" width="80px" alt="Album Art">
                        </div>
                        <div class="song-details">
                            <p class="title mb-0">Tên bài hát - Tên ghệ sĩ</p>
                        </div>
                        <div class="favorite-section d-flex justify-content-end">
                            <i class="bi bi-heart icon-clickable px-3" onclick="changeHeart(this)"></i>
                            <i class="bi bi-heart-fill icon-clickable" style="display: none;" onclick="changeHeart(this)"></i>
                        </div>
                    </div>
                    <div class="control-container col-6">
                        <div class="control-buttons d-flex align-items-center justify-content-center">
                            <button class="control-button"><i class="bi bi-skip-start-fill fs-2"></i></button>
                            <button id="play-pause-button" class="control-button" onclick="playPause()">
                                <i class="bi bi-play-fill icon-clickable fs-2"></i>
                            </button>
                            <button class="control-button"><i class="bi bi-skip-end-fill fs-2"></i></button>
                            <i class="bi bi-shuffle fs-2 icon-clickable" onclick="changeMix(this)"></i>
                            <i class="bi bi-repeat fs-2 icon-clickable" style="display: none;" onclick="changeMix(this)"></i>
                            <i class="bi bi-repeat-1 fs-2 icon-clickable" style="display: none;" onclick="changeMix(this)"></i>
                        </div>
                        <div id="time-info" class="time-info d-flex align-items-center justify-content-center">
                            <span id="current-time" class="time-text">0:00</span>
                            <input id="seek-bar" class="seek-bar" type="range" value="0" min="0" max="100" step="1">
                            <span id="duration" class="time-text">0:00</span>
                        </div>
                    </div>
                    <div class="volume-control d-flex align-items-center justify-content-end col-3">
                        <i class="bi bi-volume-up-fill fs-2 icon-clickable" onclick="toggleMute()"></i>
                        <i class="bi bi-volume-down-fill fs-2 icon-clickable" style="display: none;" onclick="toggleMute()"></i>
                        <i class="bi bi-volume-mute-fill fs-2 icon-clickable" style="display: none;" onclick="toggleMute()"></i>
                        <input type="range" id="volumeSlider" class="volume-slider" min="0" max="100" value="100" oninput="updateVolume(this.value)">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        const video = document.querySelector('video');
        const currentTimeDisplay = document.getElementById('current-time');
        const durationDisplay = document.getElementById('duration');
        const seekBar = document.getElementById('seek-bar');
        const playPauseButton = document.getElementById('play-pause-button');
        const volumeSlider = document.getElementById('volumeSlider');
        let lastVolume = 100; // Giá trị âm lượng cuối cùng trước khi tắt tiếng

        video.addEventListener('loadedmetadata', () => {
            durationDisplay.textContent = formatTime(video.duration);
            seekBar.max = video.duration;
        });

        video.addEventListener('timeupdate', () => {
            currentTimeDisplay.textContent = formatTime(video.currentTime);
            seekBar.value = video.currentTime;
        });

        seekBar.addEventListener('input', () => {
            video.currentTime = seekBar.value;
        });

        volumeSlider.addEventListener('input', (event) => {
            updateVolume(event.target.value);
        });

        function playPause() {
            if (video.paused) {
                video.play();
                playPauseButton.innerHTML = '<i class="bi bi-pause-fill icon-clickable fs-2 "></i>';
            } else {
                video.pause();
                playPauseButton.innerHTML = '<i class="bi bi-play-fill icon-clickable fs-2 "></i>';
            }
        }

        function stopVideo() {
            video.pause();
            if (video.currentTime) {
                video.currentTime = 0;
            }
        }

        function replayVideo() {
            video.currentTime = 0;
            video.play();
        }

        function updateVolume(value) {
            video.volume = value / 100;
            video.muted = value == 0;
            updateVolumeIcons(value);
        }

        function updateVolumeIcons(value) {
            const volumeUpIcon = document.querySelector('.bi-volume-up-fill');
            const volumeDownIcon = document.querySelector('.bi-volume-down-fill');
            const volumeMuteIcon = document.querySelector('.bi-volume-mute-fill');

            volumeUpIcon.style.display = 'none';
            volumeDownIcon.style.display = 'none';
            volumeMuteIcon.style.display = 'none';

            if (value == 0) {
                volumeMuteIcon.style.display = 'inline-block';
            } else if (value > 0 && value <= 66) {
                volumeDownIcon.style.display = 'inline-block';
            } else {
                volumeUpIcon.style.display = 'inline-block';
            }
        }

        function formatTime(time) {
            const minutes = Math.floor(time / 60);
            const seconds = Math.floor(time % 60);
            return `${minutes}:${seconds < 10 ? '0' : ''}${seconds}`;
        }

        function changeMix(icon) {
            const shuffleIcon = document.querySelector('.bi-shuffle');
            const repeatIcon = document.querySelector('.bi-repeat');
            const repeat1Icon = document.querySelector('.bi-repeat-1');

if (icon === shuffleIcon) {
    shuffleIcon.style.display = 'none';
    repeatIcon.style.display = 'inline-block';
} else if (icon === repeatIcon) {
    repeatIcon.style.display = 'none';
    repeat1Icon.style.display = 'inline-block';
} else if (icon === repeat1Icon) {
    repeat1Icon.style.display = 'none';
    shuffleIcon.style.display = 'inline-block';
}
}

function changeHeart(icon) {
const heartIcon = document.querySelector('.bi-heart');
const heartFillIcon = document.querySelector('.bi-heart-fill');

if (icon === heartIcon) {
    heartIcon.style.display = 'none';
    heartFillIcon.style.display = 'inline-block';
} else {
    heartIcon.style.display = 'inline-block';
    heartFillIcon.style.display = 'none';
}
}

function toggleMute() {
if (video.muted) {
    video.muted = false;
    updateVolume(lastVolume);
    volumeSlider.value = lastVolume;
} else {
    lastVolume = volumeSlider.value;
    video.muted = true;
    updateVolume(0);
    volumeSlider.value = 0;
}
}
</script>
</body>

</html>
