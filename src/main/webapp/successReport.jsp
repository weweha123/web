<%@ page import="entity.SuccessReport" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Інформація про запис</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #333;
        }
        .button-group {
            margin-top: 20px;
        }
        .button-group button {
            background-color: #4caf50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-right: 10px;
        }
        .button-group button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Інформація про запис</h2>
    <% SuccessReport report = (SuccessReport) request.getAttribute("report"); %>
    <% if (report != null) { %>
    <p><strong>Ім'я студента:</strong> <%= report.getStudentName() %></p>
    <p><strong>По батькові студента:</strong> <%= report.getStudentPatronymic() %></p>
    <p><strong>Оцінка:</strong> <%= report.getGrade() %></p>
    <div class="button-group">
        <button onclick="window.location.href='edit-report?id=<%=report.getId()%>'">Редагувати</button>
        <button onclick="window.location.href='delete-report?id=<%=report.getId()%>'">Видалити</button>
    </div>
    <% } else { %>
    <p>Запис не знайдено.</p>
    <% } %>
</div>
</body>
</html>
