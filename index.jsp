<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MeTA DevOps Project</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; background-color: #f4f4f9; }
        .container { background: white; padding: 20px; border-radius: 8px; box-shadow: 0 0 10px rgba(0,0,0,0.1); max-width: 400px; }
        .input-group { margin-bottom: 15px; }
        input[type="text"] { width: 100%; padding: 8px; margin-top: 5px; }
        button { background-color: #007bff; color: white; padding: 10px 15px; border: none; border-radius: 4px; cursor: pointer; }
        button:hover { background-color: #0056b3; }
        .result { margin-top: 20px; color: green; font-weight: bold; }
    </style>
</head>
<body>

<div class="container">
    <h2>DevOps Final Project</h2>
    <p>Welcome to my Tomcat deployed application.</p>
    
    <p><a id="info-link" href="https://github.com" target="_blank">Visit GitHub Website</a></p>

    <form method="POST" action="index.jsp">
        <div class="input-group">
            <label for="username">Enter your Name:</label>
            <input type="text" id="username" name="username" placeholder="Type something..." required>
        </div>
        <button type="submit" id="submit-btn">Submit to Server</button>
    </form>

    <% 
        String name = request.getParameter("username");
        if (name != null && !name.trim().isEmpty()) {
    %>
        <div id="greeting-message" class="result">
            Hello, <%= name %>! Data processed successfully.
        </div>
    <% 
        } 
    %>
</div>

</body>
</html>