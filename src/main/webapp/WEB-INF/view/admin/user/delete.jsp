<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="Hỏi Dân IT - Dự án laptopshop" />
                <meta name="author" content="Hỏi Dân IT" />
                <title>User Management</title>
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">User Management</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                                    <li class="breadcrumb-item"><a href="/admin/user">Users</a></li>
                                    <li class="breadcrumb-item active">Delete</li>
                                </ol>
                                <div class="row">
                                    <div class="col-6 mx-auto">
                                        <c:if test="${empty message}">
                                            <h3>Delete a user</h3>
                                            <hr>
                                            <div class="alert alert-danger">
                                                Are you sure you want to delete the user with ID = ${user.id}?
                                            </div>
                                            <form:form action="/admin/user/delete" method="post" modelAttribute="user">
                                                <div class="mb-3 d-none">
                                                    <label class="form-label">Id</label>
                                                    <form:input type="text" class="form-control" path="id" />
                                                </div>
                                                <button type="submit" class="btn btn-danger">Delete</button>
                                                <button class="btn btn-success mx-2" type="button"
                                                    onclick="window.location.href='/admin/user'">Back</button>
                                            </form:form>
                                        </c:if>
                                        <c:if test="${not empty message}">
                                            <h3>${message}</h3>
                                            <hr>
                                            <div class="alert alert-danger">
                                                You cannot delete a user who does not exist!
                                            </div>
                                            <a class="btn btn-success" href="/admin/user">Back</a>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/script.js"></script>

            </body>

            </html>