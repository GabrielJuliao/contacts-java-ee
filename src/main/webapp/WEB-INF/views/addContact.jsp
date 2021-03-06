<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/form.css" />
    <title>Contacts | Add Contact</title>
</head>
<body>
<section id="form-box">
    <form action="AddContact" method="POST">
        <h1>Add Contact</h1>
        <label for="title">
            <input
                    type="text"
                    id="title"
                    name="title"
                    placeholder="Title"
                    required
            />
        </label>

        <label for="firstName">
            <input
                    type="text"
                    id="firstName"
                    name="firstName"
                    placeholder="First Name"
            />
        </label>

        <label for="lastName">
            <input
                    type="text"
                    id="lastName"
                    name="lastName"
                    placeholder="Last Name"
            />
        </label>

        <label for="address">
            <input
                    type="text"
                    id="address"
                    name="address"
                    placeholder="Address"
            />
        </label>

        <label for="phoneNo">
            <input
                    type="text"
                    id="phoneNo"
                    name="phoneNo"
                    placeholder="Phone No."
            />
        </label>

        <label for="email">
            <input
                    type="text"
                    id="email"
                    name="email"
                    placeholder="Email"
            />
        </label>
        <label for="submit">
            <input
                    class="submit btn-primary"
                    type="submit"
                    id="submit"
                    value="ADD+"
            />
        </label>
    </form>
    <a href="overview">
        Cancel</a>
</section>
</body>
</html>
