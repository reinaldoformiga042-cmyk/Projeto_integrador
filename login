<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>SENAI - Sistema</title>
  <style>
    /* RESET */
    * { margin:0; padding:0; box-sizing:border-box; font-family: Arial, sans-serif; }
    body { background:#f4f4f4; }

    /* LOGIN MODAL */
    #login-modal { display:flex; justify-content:center; align-items:center; position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0,0,0,0.5); z-index:1000; }
    #login-box { background:#0d3b82; padding:40px; border-radius:20px; width:300px; text-align:center; color:white; }
    #login-box h2 { margin-bottom:20px; }
    #login-box input { width:100%; padding:10px; margin:10px 0; border-radius:10px; border:none; }
    #login-box button { width:100%; padding:10px; border:none; border-radius:20px; background:#0d3b8e; color:white; cursor:pointer; }
    #login-box a { display:block; margin-top:10px; font-size:12px; color:white; text-decoration:none; }
  </style>
</head>
<body>

<!-- LOGIN MODAL -->
<div id="login-modal">
  <div id="login-box">
    <h2>SENAI LOGIN</h2>
    <input type="text" id="usuario" placeholder="Usuário">
    <input type="password" id="senha" placeholder="Senha">
    <button onclick="login()">Entrar</button>
    <a href="#">Esqueceu a senha?</a>
  </div>
</div>

<script>
  function login() {
    const user = document.getElementById('usuario').value;
    const pass = document.getElementById('senha').value;
    if (user === "admin" && pass === "1234") {
      window.location.href = "dashboard.html"; // Redireciona para a tela do Dashboard
    } else {
      alert("Usuário ou senha incorretos!");
    }
  }
</script>

</body>
</html>
