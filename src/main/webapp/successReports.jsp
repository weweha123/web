<%@ page import="entity.SuccessReport" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Звіти</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
    </style>
</head>
<body>
<h2>Успішність студентів</h2>
<a href="about.jsp">Про сайт</a>
<a href="addSuccessReport.jsp">Додати звіт</a>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Імʼя студента</th>
        <th>По батькові студента</th>
        <th>Оцінка</th>
        <th>Дата</th>
    </tr>
    </thead>
    <tbody>
    <%
        List<SuccessReport> reports = (List<SuccessReport>) request.getAttribute("reports");
        if (reports != null) {
            for (SuccessReport report : reports) {
    %>
    <tr onclick="window.location.href = 'get-report?id=<%= report.getId() %>'">
        <td><%= report.getId() %></td>
        <td><%= report.getStudentName() %></td>
        <td><%= report.getStudentPatronymic() %></td>
        <td><%= report.getGrade() %></td>
        <td><%= report.getReportDate() %></td>
    </tr>
    <%
            }
        }
    %>
    </tbody>
</table>
</body>
</html>
