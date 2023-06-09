<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>캐릭터 목록 전체 조회</h1>
    <%  String chaCode = "캐릭터 코드";
        String chaName = "캐릭터 이름";
        String ageInfo = "나이정보";%>
    <table>
        <tr>
            <th><%=chaCode%></th>
            <th><%=chaName%> </th>
            <th><%=ageInfo%> </th>
            <th>키정보(cm) </th>
            <th>직업정보 </th>
            <th>포지션코드 </th>
            <th>성별 </th>
        </tr>
        <c:forEach items="${ requestScope.chaList }" var="cha">
            <tr>
                <td>${ cha.characterCode}</td>
                <td>${ cha.characterName }</td>
                <td>${ cha.ageInfo }</td>
                <td>${ cha.statureInfo }</td>
                <td>${ cha.jobInfo }</td>
                <td>${ cha.positionCode }</td>
                <td>${ cha.genderStatus }</td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
