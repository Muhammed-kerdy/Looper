<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>تنين يرقص مع موسيقى</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f0f0;
            margin: 0;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .dragon {
            position: relative;
            width: 100px;
            height: 100px;
            background-color: green;
            animation: dance 1s infinite;
        }

        .head, .body, .tail {
            position: absolute;
        }

        .head {
            width: 30px;
            height: 30px;
            background-color: darkgreen;
            border-radius: 50%;
            top: 10px;
            left: 35px;
        }

        .body {
            width: 50px;
            height: 70px;
            background-color: green;
            top: 30px;
            left: 25px;
            border-radius: 0 0 50% 50%;
        }

        .tail {
            width: 20px;
            height: 50px;
            background-color: darkgreen;
            top: 60px;
            left: 70px;
            border-radius: 0 50% 50% 0;
        }

        @keyframes dance {
            0%, 100% {
                transform: rotate(0deg);
            }
            50% {
                transform: rotate(10deg);
            }
        }

        audio {
            display: block;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="dragon">
            <div class="head"></div>
            <div class="body"></div>
            <div class="tail"></div>
        </div>
    </div>
    <audio controls autoplay loop>
        <source src="https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3" type="audio/mpeg">
        Your browser does not support the audio element.
    </audio>
</body>
</html>
