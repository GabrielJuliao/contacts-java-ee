<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="contact" scope="request" type="com.gabrieljuliao.Contacts.model.Contact"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/form.css"/>
    <title>Contacts | ${contact.title}</title>
</head>
<body>
<section id="form-box">
    <form action="Contact" method="POST">
        <h1>Contact</h1>
        <input type="hidden" name="contact_id" value="${contact.contactID}">
        <label for="title">
            <input
                    type="text"
                    id="title"
                    name="title"
                    placeholder="Title"
                    required
                    value="${contact.title}"
            />
        </label>

        <label for="firstName">
            <input
                    type="text"
                    id="firstName"
                    name="firstName"
                    placeholder="First Name"
                    value="${contact.firstName}"
            />
        </label>

        <label for="lastName">
            <input
                    type="text"
                    id="lastName"
                    name="lastName"
                    placeholder="Last Name"
                    value="${contact.lastName}"
            />
        </label>

        <label for="address">
            <input
                    type="text"
                    id="address"
                    name="address"
                    placeholder="Address"
                    value="${contact.address}"
            />
        </label>

        <label for="phoneNo">
            <input
                    type="text"
                    id="phoneNo"
                    name="phoneNo"
                    placeholder="Phone No."
                    value="${contact.phoneNo}"
            />
        </label>

        <label for="email">
            <input
                    type="text"
                    id="email"
                    name="email"
                    placeholder="Email"
                    value="${contact.email}"
            />
        </label>
        <label for="submit">
            <input
                    class="submit btn-primary"
                    type="submit"
                    id="submit"
                    value="SAVE CHANGES"
            />
        </label>
    </form>
    <form action="DeleteContact" method="post">
        <input type="hidden" name="contact_id" value="${contact.contactID}">
        <label for="delete">
            <input class="submit btn-danger" type="submit" id="delete" value="DELETE">
        </label>
    </form>
    <a href="overview">
        Cancel
    </a>
</section>
</body>
</html>
