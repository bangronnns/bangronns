<!DOCTYPE html>
<html>
<head>
  <title>Chat Vany</title>
  <style>
    body { font-family: sans-serif; background: pink; padding: 20px; }
    #messages { height: 300px; overflow-y: scroll; background: white; padding: 10px; border-radius: 10px; margin-bottom: 10px; }
    input, button { padding: 10px; }
  </style>
</head>
<body>
  <h2>Hai RCS...</h2>
  <div id="messages"></div>
  <input type="text" id="messageInput" placeholder="Tulis pesan..." />
  <button onclick="sendMessage()">Kirim</button>

  <script src="https://www.gstatic.com/firebasejs/9.22.2/firebase-app-compat.js"></script>
  <script src="https://www.gstatic.com/firebasejs/9.22.2/firebase-database-compat.js"></script>

  <script>
    const firebaseConfig = {
      // PASTE FIREBASE CONFIG DI SINI
    };

    firebase.initializeApp(firebaseConfig);
    const db = firebase.database();

    function sendMessage() {
      const msg = document.getElementById("messageInput").value;
      if (msg.trim() === "") return;
      db.ref("chat").push({ from: "vany", text: msg });
      document.getElementById("messageInput").value = "";
    }

    const messagesDiv = document.getElementById("messages");
    db.ref("chat").on("child_added", (snap) => {
      const data = snap.val();
      const msgEl = document.createElement("div");
      msgEl.textContent = `${data.from}: ${data.text}`;
      messagesDiv.appendChild(msgEl);
      messagesDiv.scrollTop = messagesDiv.scrollHeight;
    });
  </script>
</body>
</html>
