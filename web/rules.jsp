<%@ page pageEncoding="koi8-r" contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.File" errorPage="/error.jsp"%>
<%@ page import="java.io.IOException" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.logging.Logger" %>
<%@ page import="javax.mail.Session" %>
<%@ page import="javax.mail.Transport" %>
<%@ page import="javax.mail.internet.InternetAddress" %>
<%@ page import="javax.mail.internet.MimeMessage" %>
<%@ page import="javax.servlet.http.Cookie" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ page import="org.apache.commons.fileupload.FileItem" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="org.apache.commons.lang.StringUtils" %>
<%@ page import="ru.org.linux.boxlet.BoxletVectorRunner" %>
<%@ page import="ru.org.linux.site.*" %>
<%@ page import="ru.org.linux.storage.StorageNotFoundException" %>
<%@ page import="ru.org.linux.util.*" %>
<% Template tmpl = new Template(request, config, response); %><%= tmpl.head() %>
<title>������� LOR</title>
<%= tmpl.DocumentHeader() %>
<div class=text>
<h1>������� ��������� � ������������� ������������</h1>
Linux.org.ru - ���� ������������� ������������ ������� Linux �
������ Unix-������, ��������������� ��� ������ ����������
����������� �� �������� �����.
����������� � ������ Linux.org.ru ���������������,
������������� � ���������� ����� ��������� �� ����� ����� ������� ���������
� ������������ � �������������� ���������.
<p>
������� ������������� ���
����������� ���������� �������� ��������� � ������������ � ��������
� � �������.
<p>
� ������������ � �������� ����� ��������� ���, ��� ����� ���������
� �������� �������.  ����������, ��������������� ��������� ������.
<ul>
<li>������������ �� �������� ��������� ��� ����������� ����.
<li>������������ �� ������ ��������� � ����������� ���������,
�� ���������� ��������� �� ����������
<li>������������ �� ����������� ���������� ��������� � ����������
����������� ���������
<li>������������ �� �����������, ������������ � ������������
������
<li>������������ �� ���������� �������� � ����������� �����������
� ������������, ����������� ���������� ��������������� ���
����� <a href="group.jsp?group=4068">������ ������</a>.
����������� ����� ����� �������� � ����������� ������� �� ������
���� ���������. ������, ��� �� ������ ������� � ������, ����
�� ���������� �� �������� ��������� ������, - <a href="mailto:webmaster@linux.org.ru">�������� ���</a>
<li>������������ �� ������� �� ������������ ��������� � ���������
��� ����. ��������� ������������ ���������, �� �������������
�������� ������������ ���������. �� ��������� � ���������
��������� � ������������� ��� (��� ������ ����������)
����������� ��� �����������, ����������� �����������
��������� - ����� <a href="mailto:webmaster@linux.org.ru">�������� ���</a>
� �� ������ ��
</ul>
<p>
���� �� ������ �������� �������� �����������, �������� ����������� ���
����������� �� ������ ����� - �������������� ���������� ���������������
��� ����� <a href="group.jsp?group=4068">�������� ������</a>.

<h2>�����������</h2>
��� ����������� �� ����� �����������:
<ul>
<li>������������� ����������� ���� � ����� ������������,
<li>������������� ����� ������ ������ ����� �������������. ����������� �����
������ �������������, ��� ���� ������ ��� �� ������ ����� ��������������. ����� ������ ����������� �� ���� ������ ���� � �����.
<li>������������� ������ ������ ����� ��� ����� �������������. 
</ul>

<h2>������� �������������</h2>

<h3>1. ��������������</h3>
<ol>
<li>������� ������������� ��� ������������� ������ � ������� ����� �����
����� ����������� ���������� �������� ��������� � ������������ � ��������
� � �������. 
������� '��������' ��������� ������������
���������� ��������� � ������ ������� �����������, ���������� �� �����
���������� ��������.
</ol>
<h3>2. ��������</h3>
<ol>
<li>��������� �������� �����������������, � ������ ������� �����������
��������� �� ����� �� �������� ��� ������������ ��������.
<li>� ������ �������������� �������� ��������� ����� ���� �������.
�����-���� ����������� ��������� �� ������������. ����� �������� � ������� �
���������� ����� ���� ��������������� ������������, � ������ ������������ ��������� ��������� ��������� ������� �� ����� ������ � ����� �������������� � ������
���������.
<li>������������� ���������� ��� ������������ ������ ������ ��������
����������� ����� � ������ ���������� ������.
<li>� ��� �� ������ ���������� ������� ���������� ������������� ���������.
���� �� ��������, ��� �����-�� ���������� ��������� �������� �������
� ������ ���� �������, �������� ���.
</ol>
<h3>3. ���������� ������������ ���������</h3>
���������� ������������� ���������� ��������� � ��������� �������:
<ol>
<li>������ ��������� ������ ���������
<li>�������������� ��������� ��������� ��������� �����
<li>���������, ���������� ������ �����, �������� ������� ������� ��������� �
������ ������������������� ������.
<li>������ ���������
</ol>
<h3>4. ��������� ��� ���� ���������� � ������</h3>
<ol>
<li>���������, �� ��������� ������� � ����� ���������� � ������� �������������.
���������, ��������� ������� � ������� �������������, �� �� ���������
� ����� ���������� ����� ���� ������� �� ���������� ����������.
<li>���������, ���������� ��������� �������� ���� 
��������� ������� ������������������
����������, ��������� �������� � �������� ���������� ���������.
�� ������� ����� ������, �� ��������� �� ����� ����� �������
���������, ��������������� ���������� ��������� �������� �����.
<li>���������, ������������� ���������� ���������.
<li>����������� ���������� �������� ��� ����������� �����������,
�� ����������� ������ 'Linux-org-ru'. �������� �������������
�����������, � ������ �� ����������� ����������� email.
<li>�������� ���������
<li>����
<li>���� - ���������� �������� ������������� �������
</ol>
<h3>5. �������������� � ������ ���������</h3>
<ol>
<li>���������, ���������� ����������� �����
<li>���������, ���������� ���������������� ����������� ���������� ����������
��������� ��� ����� ����������
<li>���������, ������������� ������������ � ������������ �����.
<li>���������, ������������ ������ ���������� ���������� �� ����������� 2-3 �������,
�.�. ������ ������ ���������, �� ���������� �������� ���������� ��� ������
���������� ������.
<li>�������������� ��������� ����, ������ ���� �� ������� �� ��������� ������� � ����� ������ ������. �������������� ��������� ������ �������� �����. ����� ������ ��������� � ������, ����� ���������� ����� ����������� � ���������. ����� �� ���������������� �� ���������, ������� ���������� � ���������� "���������".
</ol>

<h3>6. ��������� copyright</h3>
���������, ���������� ����������, ���������� ������� �� ����� ����������
��-�� �����������, ���������� �� ��������, � ���������:
<ol>
<li>������� � ������ ������, ����� ������� �� ����������� �� �����������.
���� �� ������ ���������� ��������� ���� ��������, �����������
�� ������ �������.
<li>������ �� ����� ������������ ���������� ����������������� ��.
<li>������ �� ��������, ���������������� ������ �� ������� ��������� ��
��������.
</ol>

<h3>7. ������ ������</h3>
<ol>
<li>�� ���������� ����������� ������ � ������������� ����������� �����
���� ������� ��������� �� ��� �����������. ������������ ������������ ��
������ �� ������������ ���������.
</ol>
<p>

<h1>������</h1>
� ��� 2004 ���� �� ����� ������ ������ �������� ���������� ������������. ������� ������������ ������ ��� ������� ������������ � ���������� ����� � ����������� ��� ��������� ������ ������. <p>
������� ������������ ����� ����� ������������ � ���� "�����". ����� ����������� ������������ ����� ������� �������. ����������� ��������� ������� ������������ - 5 �����. ���������� ������������� �������� 4 ������, ������ ����� ������������ ����� �������� ������� ������ �� 5 �����.<p>
��� ������������� ������������� �������������� ��� �������� - <i>������� �������</i> � <i>������������</i>. ������������ ������� - �������� �������� �������� �� ����� ������������� ������������. ��������� ������������ ������� ������ ���������� �����, ������� - �� ����. ������� ������� ������������ ������� ������, ����������� ������ ����������� ������.<p>
���������� ��������, ��� �� � ���� ������ �� ������� ������������� ������� ��� ���������� ����� ������ ��������. ��� ���� ���������� ���������� �������� �� ������.
<p>

<h1>��������� ������ �����������</h1>
������� ����������� � ������� ������������ ����� ����� �����������. ��������� ������:

<ul>
<li>�������� ������ �������� � ����� ������� �� e-mail (������ �� maxcom &lt;������&gt; linux.org.ru)
<li>������� ������ ���� ������� ��� (�������) ������, � ����� ���
<li>� ������� ��������� ������������ �� ������ ���� ������� 5.2 � 5.3. �������� �� ��������� ������� (� � ����������� 5.1) ��������������� �������� �� ������� ������� ���������. ������� ��������������� �� ��������� �������.
<li>����� ����������� ����������� � ������ �������� ��� ����������� � ���������� ����������� ����� �����������. ������������� ������� ����������� � ������
������� ��� ������� ���� ������� "��" � ��� ���������� ������� ������ (�.�.
������ ��������� �������� ������ "����"). ����������� ������ �������������� 
������.
</ul>

<h1>���������� �������������</h1>
� ������ ��������������� ��������� ������������ ����� ���� ������������:
<ul>
<li>������������ � ������� ��������� (��� ����� ������ �����) ����� ���� ������������ ������������� ��� ���������� ������������� ������, � ����� �� ������� ����������
<li>������������ � ��������� "���� ������ ������ �����" ����� ���� ������������ ������������� ��� ���������� ������������� ������, � ����� �� ����������� ����������� �����������
<li>������������ � ��������� "��� � ����� ������ ������ �����" ����� ���� ������������ �� ����������� ����������� �����������, �������������� ������������ �� ������������.
</ul>

<h1>���������� � �������</h1>
������������ ����� ����������� ���������� ���� ���������� ��� ������.
����������� �������� ����� �����������, �����:
<ul>
<li>���������� ����������� ������� � �����������</li>
<li>���������� ���������, ������������ ���������� ���������</li>
<li>������������� ������������ � ������������ �����</li>
<li>���������� ��������</li>
<li>���������� copyright ������ �����������</li>
</ul>

� ������ ��������� ����������� ����� ���� �������. � ������ ��������������� ���������
������������ ����� ���� ������������ � ������������ � ������� "���������� �������������".

<h1>���������� IP-�������</h1>
������� ��������� � IP-������ ����� ���� ������ ������������ ����� �� ������������ ���� �� ���������
��������:
<ul>
  <li>
    �������������� ��� ������ �������� ������� ������������� ��������� (����).
    ������� ����� ���� �������� �� ����� ����, ������ �� ������������ ����������.
    � �������������� ������� (���� ��� �� ������� ��������� ����� �������
    ����������� �����, ��� ��� ������ �����) ����� ����� ���� ������������
    �� ����� ����.
  </li>
  <li>
    ������� �������� ���������� ���������� ������� ���������. ������� �����
    ���� ������������ �� ���� �� ����� ������. ��� ������� ������ ��������� �������
    ������ ���� ��������� ��������, ������������ �� ��������� �����.
  </li>
</ul>
<p>
  ������� �� ���� ����� ����� ����� ���� ������������ ������ ��� ������� �����������,
  ��� ������ IP-����� �������� ����������. ������������ ����������� ������� ������������
  ������ � ��������� ������-��������, �������, ��� �������, �� ������ ����� IP �������.
  ��� ���������� ������ ����������� ������ ���� ������� ������� ������������.
</p>
<p>
$Id$

</div>
<%= tmpl.DocumentFooter() %>
