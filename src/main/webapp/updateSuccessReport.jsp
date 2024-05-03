<%@ page import="entity.SuccessReport" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Оновлення Звіту</title>
</head>
<style>
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
    }
    h2 {
        color: #333;
    }
    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        margin: 20px auto;
    }
    label {
        font-weight: bold;
    }
    input[type="text"],
    input[type="number"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        background-color: #4caf50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
<body>
<h2>Оновлення Звіту</h2>
<%
    SuccessReport report = (SuccessReport) request.getAttribute("report");
    if (report != null) {
%>
<form action="edit-report" method="post">
    <input type="hidden" name="id" value="<%= report.getId() %>">
    <label for="studentName">Ім'я студента:</label>
    <input type="text" id="studentName" name="studentName" value="<%= report.getStudentName() %>" required><br><br>

    <label for="studentPatronymic">По батькові студента:</label>
    <input type="text" id="studentPatronymic" name="studentPatronymic" value="<%= report.getStudentPatronymic() %>" required><br><br>

    <label for="grade">Оцінка:</label>
    <input type="number" id="grade" name="grade" min="0" max="100" step="0.01" value="<%= report.getGrade() %>" required><br><br>

    <input type="submit" value="Оновити">
</form>
<%
} else {
%>
<p>Звіт не знайдено.</p>
<%
    }
%>
</body>
</html>
