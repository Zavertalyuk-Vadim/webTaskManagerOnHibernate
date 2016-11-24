<%--<jsp:useBean id="ListTasks" scope="request" type="interlink.model.ListTask"/>--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link rel="stylesheet" href="../css/mystyle.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
<div class="allTasks">
    <input type="submit" value="Add Task" onclick="window.location='/add_task'" style="font-size:12px"><br>


    <c:forEach items="${ListTasks}" var="list">
        <div class="Task">
            <h2>${list.list_name}</h2>
            <h3>TO DO</h3>
            <div class="list">
                <table>
                    <c:forEach items="${list.task}" var="task">
                        <tr>
                            <c:if test="${!task.view}">
                                <td>
                                        ${task.title}
                                </td>
                                <td>
                                    <a href="/about?task=${task.id}">
                                        <i class="material-icons" style="font-size:32px; color: blue;">pageview</i>
                                    </a>
                                </td>
                                <td>
                                    <a href="/delete?task=${task.id}">
                                        <i class="material-icons" style="font-size:32px;color: red">gavel</i>
                                    </a>
                                </td>
                                <td>
                                    <a href="/view?task=${task.id}">
                                        <i class="material-icons" style="font-size:32px;color: black">indeterminate_check_box</i>
                                    </a>
                                </td>
                            </c:if>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <h3>Done Tasks</h3>
            <div class="toDo">
                <table>
                    <c:forEach items="${list.task}" var="task">
                        <tr>
                            <c:if test="${task.view}">
                                <td>
                                        ${task.title}
                                </td>
                                <td>
                                    <a href="/about?task=${task.id}">
                                        <i class="material-icons" style="font-size:32px; color: blue;">pageview</i>
                                    </a>
                                </td>
                                <td>
                                    <a href="/delete?task=${task.id}">
                                        <i class="material-icons" style="font-size:32px;color: red">gavel</i>
                                    </a>
                                </td>
                                <td>
                                    <a href="/view?task=${task.id}">
                                        <i class="material-icons" style="font-size:32px;color: black">check_box</i>
                                    </a>
                                </td>
                            </c:if>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </c:forEach>
</div>
<h2>Hello world!</h2>
</body>
</html>
