<%@ page contentType="text/html; charset=utf-8"%>
<%--
  ~ Copyright 1998-2010 Linux.org.ru
  ~    Licensed under the Apache License, Version 2.0 (the "License");
  ~    you may not use this file except in compliance with the License.
  ~    You may obtain a copy of the License at
  ~
  ~        http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~    Unless required by applicable law or agreed to in writing, software
  ~    distributed under the License is distributed on an "AS IS" BASIS,
  ~    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  ~    See the License for the specific language governing permissions and
  ~    limitations under the License.
  --%>

<%
   response.setStatus(403);
%>
<jsp:include page="/WEB-INF/jsp/head.jsp"/>

<title>Error 403</title>
<jsp:include page="header.jsp"/>

<h1>Error 403</h1>

Доступ запрещен

  <jsp:include page="footer.jsp"/>