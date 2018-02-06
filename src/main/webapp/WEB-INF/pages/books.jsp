<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<%--
  Created by IntelliJ IDEA.
  User: Lex
  Date: 07.10.2017
  Time: 19:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta http-equiv=”Content-Type” content=”text/html; charset=UTF-8” />
<html>
<head>
    <title>Book case</title>
    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #f0f0f0;
        }
        .center {
            text-align: center;
        }
    </style>
</head>
<body>

<h1>Library</h1>


<c:if test="${!empty book.title}">
    <div align="right">Change</div>
</c:if>
<c:if test="${empty book.title}">
    <div align="right">New book add</div>
</c:if>
<c:url var="add" value="/books/add"/>
<form:form action="${add}" commandName="book">
    <table align="right">
        <c:if test="${!empty book.title}">
            <tr>
                <td>
                    <form:label path="id">
                    </form:label>
                </td>
                <td>
                    <form:input path="id" readonly="true" disabled="true" type="hidden"/>
                    <form:hidden path="id"/>
                </td>
            </tr>
        </c:if>
        <tr>
            <td>
                <form:label path="title">
                    <spring:message text="Title"/>
                </form:label>
            </td>
            <td>
                <form:input path="title"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="description">
                    <spring:message text="Description"/>
                </form:label>
            </td>
            <td>
                <form:input path="description"/>
            </td>
        </tr>
        <tr>
        <tr>
        <td>Autor</td>
        <c:if test="${!empty book.title}">
            <td><form:input path="author" readonly="true"/></td>
        </c:if>
        <c:if test="${empty book.title}">
            <td><form:input path="author"/></td>
        </c:if>
        </tr>
        <tr>
            <td>
                <form:label path="isbn">
                    <spring:message text="ISBN"/>
                </form:label>
            </td>
            <td>
                <form:input path="isbn"/>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <form:label path="printYear">
                    <spring:message text="Year"/>
                </form:label>
            </td>
            <td>
                <form:input path="printYear"/>
            </td>
        </tr>
        <tr>
            <td>Read already</td>
            <c:if test="${!empty book.title}">
                <c:if test="${book.readAlready}">
                    <td><input name="readAlready" type="checkbox"
                               checked value="true" onclick="window.event.returnValue=false"/></td>
                </c:if>
                <c:if test="${!book.readAlready}">
                    <td><input name="readAlready" type="checkbox" value="true"/></td>
                </c:if>
            </c:if>
            <c:if test="${empty book.title}">
                <td><input name="readAlready" type="checkbox" value="true"/></td>
            </c:if>

        </tr>
        <tr>
            <td>Unread</td>
            <c:if test="${!empty book.title}">
                <c:if test="${book.readAlready}">
                    <td><input name="readAlready" type="checkbox" value="false" onclick="window.event.returnValue=false"/></td>
                </c:if>
                <c:if test="${!book.readAlready}">
                    <td><input name="readAlready" type="checkbox" checked value="false"/></td>
                </c:if>
            </c:if>
            <c:if test="${empty book.title}">
                <td><input name="readAlready" type="checkbox" value="false"/></td>
            </c:if>
        </tr>
        <tr>
            <td colspan="2">
                <c:if test="${!empty book.title}">
                    <input type="submit"
                           value="<spring:message text="Change"/>"/>
                </c:if>
                <c:if test="${empty book.title}">
                    <input type="submit"
                           value="<spring:message text="Add"/>"/>
                </c:if>
            </td>
        </tr>
    </table>
</form:form>
<div align="left">Search</div>
<form action="/search/title">
    Title: <input type="text" name="title"/>
    <input type="submit" value="Search"/>
</form>
<form action="/search/author">
    Author: <input type="text" name="author"/>
    <input type="submit" value="Search"/>
</form>
<form action="/search/printYear">
    Year: <input type="text" name="printYear"/>
    <input type="submit" value="Search"/>
</form>
<form action="/search/readAlready">
    Read already: <input type="checkbox" name="readAlready" value="true"/>
    Unread: <input type="checkbox" name="readAlready" value="false"/>
    <input type="submit" value="Search"/>
</form>
<form action="/">
    <input type="submit" value="Home page"/>
</form>




<c:if test="${!empty listBooks}">
    <table class="tg">
        <tr>
            <th width="120">Title</th>
            <th width="100">Description</th>
            <th width="100">Author</th>
            <th width="50">ISBN</th>
            <th width="30">Year</th>
            <th width="30">read already</th>
            <th width="30">Change</th>
            <th width="30">Delete</th>

        </tr>
        <c:forEach items="${listBooks}" var="book">
            <tr>
                <td>${book.title}</td>
                <td>${book.description}</td>
                <td>${book.author}</td>
                <td>${book.isbn}</td>
                <td>${book.printYear}</td>
                <td>
                    <c:if test="${!book.readAlready}">
                         <input name="readAlready" type="checkbox" onclick="window.event.returnValue=false">
                    </c:if>
                    <c:if test="${book.readAlready}">
                         <input name="readAlready" type="checkbox" checked onclick="window.event.returnValue=false">

                    </c:if>
                </td>
                <td>
                    <form action="/edit/${book.id}">
                        <input type="submit" value="Change">
                    </form>
                </td>
                <td>
                    <form action="/del/${book.id}">
                        <input type="submit" value="Delete">
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</c:if>



<div class="center">
    <div id="pagination">

        <c:url value="/" var="prev">
            <c:param name="page" value="${page-1}"/>
        </c:url>
        <c:if test="${page > 1}">
            <a href="<c:out value="${prev}" />" class="pn prev">Prev</a>
        </c:if>

        <c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
            <c:choose>
                <c:when test="${page == i.index}">
                    <span>${i.index}</span>
                </c:when>
                <c:otherwise>
                    <c:url value="/" var="url">
                        <c:param name="page" value="${i.index}"/>
                    </c:url>
                    <a href='<c:out value="${url}" />'>${i.index}</a>
                </c:otherwise>
            </c:choose>
        </c:forEach>
        <c:url value="/" var="next">
            <c:param name="page" value="${page + 1}"/>
        </c:url>
        <c:if test="${page + 1 <= maxPages}">
            <a href='<c:out value="${next}" />' class="pn next">Next</a>
        </c:if>
    </div>
</div>

</body>


</html>
