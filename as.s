[Versi 1 - 2205/index.html]

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Roniii</title>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Special+Elite&display=swap');
    body {
      margin: 0;
      background: pink url('https://i.ibb.co/YtYvGx1/labubu-bg.png') no-repeat center center fixed;
      background-size: cover;
      font-family: 'Special Elite', cursive;
    }
    .login-screen, .chat-screen {
      display: none;
      justify-content: center;
      align-items: center;
      height: 100vh;
      flex-direction: column;
      text-align: center;
    }
    .login-screen.active, .chat-screen.active {
      display: flex;
    }
    #messages {
      width: 90%;
      height: 400px;
      overflow-y: scroll;
      background: white;
      border-radius: 10px;
      padding: 10px;
      margin-bottom: 10px;
    }
    input, button {
      padding: 10px;
      margin: 5px;
    }
    .top-bar {
      background: #fff;
      padding: 10px;
      width: 100%;
      display: flex;
      align-items: center;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }
    .top-bar img {
      height: 40px;
      width: 40px;
      border-radius: 50%;
      margin-right: 10px;
    }
    .top-bar span {
      font-weight: bold;
      font-size: 20px;
    }
  </style>
</head>
<body>
  <div class="login-screen active">
    <h2>Masukkan Password</h2>
    <input type="password" id="passInput" placeholder="Password" />
    <button onclick="checkPass()">Masuk</button>
  </div>

  <div class="chat-screen">
    <div class="top-bar">
      <img src="https://i.ibb.co/Xp44zSh/labubu-pp.png">
      <span>Roniii</span>
    </div>
    <audio id="backsong" src="https://github.com/inggarlabs/assets/raw/main/blue-yungkai.mp3" autoplay loop></audio>
    <div id="messages"></div>
    <input type="text" id="messageInput" placeholder="Tulis pesan..." />
    <button onclick="sendMessage()">Kirim</button>
    <button onclick="sendMissU()">I Miss U</button>
    <audio id="missu" src="https://github.com/inggarlabs/assets/raw/main/missu-voice.mp3"></audio>
  </div>

  <!-- Firebase CDN -->
  <script src="https://www.gstatic.com/firebasejs/9.22.2/firebase-app-compat.js"></script>
  <script src="https://www.gstatic.com/firebasejs/9.22.2/firebase-database-compat.js"></script>

  <script>
    const firebaseConfig = {
      apiKey: "AIzaSyCciX4h6ktx12QzErdxNhaBybf1wVADCyA",
      authDomain: "chat-project-9db7a.firebaseapp.com",
      databaseURL: "https://chat-project-9db7a-default-rtdb.firebaseio.com",
      projectId: "chat-project-9db7a",
      storageBucket: "chat-project-9db7a.firebasestorage.app",
      messagingSenderId: "389148629520",
      appId: "1:389148629520:web:11c9acdec4aa30d96ac895"
    };
    firebase.initializeApp(firebaseConfig);
    const db = firebase.database();

    function checkPass() {
      const input = document.getElementById("passInput").value;
      if(input === "anakfd") {
        document.querySelector(".login-screen").classList.remove("active");
        document.querySelector(".chat-screen").classList.add("active");
      } else {
        alert("Password salah!");
      }
    }

    function sendMessage() {
      const msg = document.getElementById("messageInput").value;
      if (msg.trim() === "") return;
      db.ref("chat").push({ from: "Roniii", text: msg, time: new Date().toLocaleTimeString() });
      document.getElementById("messageInput").value = "";
    }

    function sendMissU() {
      db.ref("chat").push({ from: "Roniii", text: "[voice]", time: new Date().toLocaleTimeString(), missu: true });
    }

    const messagesDiv = document.getElementById("messages");
    const missuSound = document.getElementById("missu");

    db.ref("chat").on("child_added", (snap) => {
      const data = snap.val();
      const msgEl = document.createElement("div");
      msgEl.textContent = `${data.from} [${data.time}]: ${data.text}`;
      messagesDiv.appendChild(msgEl);
      messagesDiv.scrollTop = messagesDiv.scrollHeight;
      if(data.missu && data.from !== "Roniii") missuSound.play();
    });
  </script>
</body>
</html>

[Next step] Akan dilanjutkan: file kedua `1212/index.html`
