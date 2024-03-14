<%-- 
    Document   : Cart
    Created on : Oct 31, 2020, 9:42:21 PM
    Author     : trinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    </head>
    <nav class="navbar navbar-expand-md  btn-dark btn-secondary">
        <div class="container">

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <c:choose>
                <c:when test="${sessionScope.account == null}">
                    <ul class="navbar-nav m-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="login">Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="register">Register</a>
                        </li>
                    </ul>
                </c:when>
                <c:otherwise>
                    <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
                        <ul class="navbar-nav m-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="profile">Profile Account</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Hello ${sessionScope.account.username}</a>
                            </li>
                             <li class="nav-item">
                                        <a class="nav-link" href="home">Home</a>
                                    </li>
                            <c:choose>
                                <c:when test="${sessionScope.account.role == 1}">
                                    <li class="nav-item">
                                        <a class="nav-link" href="managerproduct">Manager Product</a>
                                    </li>
                                </c:when>
                            </c:choose>
                            <li class="nav-item">
                                <a class="nav-link" href="logout">Logout</a>
                            </li>
                        </ul>
                    </div>
                </c:otherwise>
            </c:choose>

        </div>

    </nav>
    <body>

        <%--<jsp:include page="Menu.jsp"></jsp:include>--%>
        <div class="shopping-cart">
            <div class="px-4 px-lg-0">

                <div class="pb-5">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

                                <!-- Shopping cart table -->
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="p-2 px-3 text-uppercase">Sản Phẩm</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Đơn Giá</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Số Lượng</div>
                                                </th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${sessionScope.cart}" var="o">
                                                <tr>
                                                    <th scope="row">
                                                        <div class="p-2">
                                                            <img src="${o.product.getImage_url()}" alt="" width="70" class="img-fluid rounded shadow-sm">
                                                            <div class="ml-3 d-inline-block align-middle">
                                                                <h5 class="mb-0"> <a href="#" class="text-dark d-inline-block">${o.product.getName()}</a></h5><span class="text-muted font-weight-normal font-italic"></span>
                                                            </div>
                                                        </div>
                                                    </th>
                                                    <td class="align-middle"><strong>${o.price}</strong></td>
                                                    <td class="align-middle">
                                                        <a href="editQuantity?action=minus&pid=${o.product.getId()}"><button class="btnSub">-</button></a> 
                                                        ${o.quantity}
                                                        <a href="editQuantity?action=plus&pid=${o.product.getId()}"><button class="btnAdd">+</button></a>
                                                    </td>

                                                </tr> 
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- End -->
                            </div>
                        </div>

                        <div class="row py-5 p-4 bg-white rounded shadow-sm">
                            <div class="col-lg-6">


                            </div>
                        </div>
                        <form action="checkout" method="post">
                            <h3 style="color:red">${requestScope.success}</h3>
                        <div class="col-lg-6">
                            <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Thành tiền</div>
                            <div class="p-4">
                                <ul class="list-unstyled mb-4">
                                    <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tổng tiền hàng</strong><strong>${sessionScope.totalMoney} VND</strong></li>
                                </ul>
                                <input class="btn btn-dark rounded-pill py-2 btn-block" type="submit" value="MUA">
                                </form>
                                <a href="order" class="btn btn-dark rounded-pill py-2 btn-block">Thông tin đơn hàng</a>
                            </div>
                        </div>


                    </div>

                </div>
            </div>
        </div>
    </div>
    <a href="home" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>

</html>

