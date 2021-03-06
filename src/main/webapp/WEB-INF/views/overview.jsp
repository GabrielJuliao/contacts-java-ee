<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="user" scope="session" type="com.gabrieljuliao.Contacts.model.User"/>
<jsp:useBean id="contacts" scope="session" type="java.util.List"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/contacts.css"/>
    <title>Contacts</title>
</head>
<body>
<div id="main-content">
    <header>
        <ul>
            <li>
                <a href="AddContact">
                    <svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" height="24px"
                         viewBox="0 0 24 24" width="24px" fill="#666666">
                        <g>
                            <rect fill="none" height="24" width="24"></rect>
                        </g>
                        <g>
                            <path d="M20,9V6h-2v3h-3v2h3v3h2v-3h3V9H20z M9,12c2.21,0,4-1.79,4-4c0-2.21-1.79-4-4-4S5,5.79,5,8C5,10.21,6.79,12,9,12z M9,6 c1.1,0,2,0.9,2,2c0,1.1-0.9,2-2,2S7,9.1,7,8C7,6.9,7.9,6,9,6z M15.39,14.56C13.71,13.7,11.53,13,9,13c-2.53,0-4.71,0.7-6.39,1.56 C1.61,15.07,1,16.1,1,17.22V20h16v-2.78C17,16.1,16.39,15.07,15.39,14.56z M15,18H3v-0.78c0-0.38,0.2-0.72,0.52-0.88 C4.71,15.73,6.63,15,9,15c2.37,0,4.29,0.73,5.48,1.34C14.8,16.5,15,16.84,15,17.22V18z"></path>
                        </g>
                    </svg>
                    Add
                </a>
            </li>
            <li>
                <a href="Account">
                    <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24" width="24px"
                         fill="#666666">
                        <path d="M0 0h24v24H0V0z" fill="none"></path>
                        <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zM7.07 18.28c.43-.9 3.05-1.78 4.93-1.78s4.51.88 4.93 1.78C15.57 19.36 13.86 20 12 20s-3.57-.64-4.93-1.72zm11.29-1.45c-1.43-1.74-4.9-2.33-6.36-2.33s-4.93.59-6.36 2.33C4.62 15.49 4 13.82 4 12c0-4.41 3.59-8 8-8s8 3.59 8 8c0 1.82-.62 3.49-1.64 4.83zM12 6c-1.94 0-3.5 1.56-3.5 3.5S10.06 13 12 13s3.5-1.56 3.5-3.5S13.94 6 12 6zm0 5c-.83 0-1.5-.67-1.5-1.5S11.17 8 12 8s1.5.67 1.5 1.5S12.83 11 12 11z"></path>
                    </svg>
                    ${user.firstName}</a>
            </li>
            <li>
                <a href="SignOut" id="btn-logout">
                    <svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" height="24px"
                         viewBox="0 0 24 24" width="24px" fill="#666666">
                        <g>
                            <path d="M0,0h24v24H0V0z" fill="none"></path>
                        </g>
                        <g>
                            <path d="M17,8l-1.41,1.41L17.17,11H9v2h8.17l-1.58,1.58L17,16l4-4L17,8z M5,5h7V3H5C3.9,3,3,3.9,3,5v14c0,1.1,0.9,2,2,2h7v-2H5V5z"></path>
                        </g>
                    </svg>
                    Sign Out</a>
            </li>
        </ul>
    </header>
    <section id="contacts">
        <div class="table">

            <div id="table-header" class="table-row">
                <div class="table-cell">Title</div>
                <div class="table-cell big-screen">Address</div>
                <div class="table-cell big-screen">Phone No.</div>
                <div class="table-cell big-screen">E-mail</div>
            </div>

            <c:forEach var="contact" items="${contacts}">

                <a href="Contact?contact_id=${contact.contactID}" class="table-row table-data">
                        <div class="table-cell">${contact.title}</div>
                        <div class="table-cell big-screen">${contact.address}</div>
                        <div class="table-cell big-screen">${contact.phoneNo}</div>
                        <div class="table-cell big-screen">${contact.email}</div>
                </a>

            </c:forEach>
        </div>
    </section>
</div>
</body>
</html>
