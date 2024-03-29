<%-- 
    Document   : ChartQuantity
    Created on : Oct 31, 2023, 9:20:10 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Statistic</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ------>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/> 



        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/bootstrap.min.css">
        <!-- Material Design Bootstrap -->
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb-pro.min.css">
        <!-- Material Design Bootstrap Ecommerce -->
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb.ecommerce.min.css">
        <!-- Your custom styles (optional) -->
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ------>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/> 
        <style>
            body {
                margin: 0;
                padding: 0;
            }
        </style>
        <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css"><link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&amp;display=swap"><link rel="stylesheet" type="text/css" href="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/css/mdb5/3.8.1/compiled.min.css"><link rel="stylesheet" type="text/css" href="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/css/mdb-plugins-gathered.min.css"><style>body {
                background-color: #fbfbfb;
            }
            @media (min-width: 991.98px) {
                main {
                    padding-left: 240px;
                }
            }

            /* Sidebar */
            .sidebar {
                position: fixed;
                top: 0;
                bottom: 0;
                left: 0;
                padding: 58px 0 0; /* Height of navbar */
                box-shadow: 0 2px 5px 0 rgb(0 0 0 / 5%), 0 2px 10px 0 rgb(0 0 0 / 5%);
                width: 240px;
                z-index: 600;
            }

            @media (max-width: 991.98px) {
                .sidebar {
                    width: 100%;
                }
            }
            .sidebar .active {
                border-radius: 5px;
                box-shadow: 0 2px 5px 0 rgb(0 0 0 / 16%), 0 2px 10px 0 rgb(0 0 0 / 12%);
            }

            .sidebar-sticky {
                position: relative;
                top: 0;
                height: calc(100vh - 48px);
                padding-top: 0.5rem;
                overflow-x: hidden;
                overflow-y: auto; /* Scrollable contents if viewport is shorter than content. */
            }</style>
    </head>
    <body >

        <!--Main Navigation-->
        <header>
            <!-- Sidebar -->
            <nav id="sidebarMenu" class="collapse d-lg-block sidebar collapse bg-white" style="padding: 0px">
                <div class="position-sticky">
                    <div class="list-group list-group-flush mx-3 mt-4">
                        <a href="home" class="list-group-item list-group-item-action py-2 ripple">
                            <i class="fas fa-chart-bar fa-fw me-3"></i><span>Home</span>
                        </a>
                        <a href="thongke" class="list-group-item list-group-item-action py-2 ripple">
                            <i class="fas fa-chart-bar fa-fw me-3"></i><span>Thống Kê</span>
                        </a>
                        
                        <a href="chart" class="list-group-item list-group-item-action py-2 ripple">
                            <i class="fas fa-chart-bar fa-fw me-3"></i><span>Doanh thu tháng</span>
                        </a>
                        <a href="chartquantity" class="list-group-item list-group-item-action py-2 ripple">
                            <i class="fas fa-chart-bar fa-fw me-3"></i><span>Doanh số bán được</span>
                        </a>
                        <a href="managerproduct" class="list-group-item list-group-item-action py-2 ripple">
                            <i href="managerproduct" class="fas fa-shoe-prints fa-fw me-3"></i><span>Quản lý sản phẩm</span>
                        </a>   
                    </div>
                </div>
            </nav>
            <!-- Sidebar -->
        </header>
            <!--Main Navigation-->

            <!--Main layout-->
            <main>
                <div class="container pt-4">



                    <!-- Section: Main chart 2 -->
                    <section class="mb-4" id="doanhThuThang">
                        <div class="card">
                            <div class="card-header py-3">
                                <h5 class="mb-0 text-center"><strong>Doanh số theo tháng</strong></h5>
                            </div>
                            <div class="card-body">
                                <canvas id="horizontalBar"></canvas>
                            </div>
                        </div>
                    </section>
                    <!-- Section: Main chart 2 -->






                </div>
            </main>

            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <!--Main layout-->
            <!-- SCRIPTS -->
            <!-- JQuery -->
            <script src="https://mdbootstrap.com/previews/ecommerce-demo/js/jquery-3.4.1.min.js"></script>
            <!-- Bootstrap tooltips -->
            <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/popper.min.js"></script>
            <!-- Bootstrap core JavaScript -->
            <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/bootstrap.js"></script>
            <!-- MDB core JavaScript -->
            <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.min.js"></script>
            <!-- MDB Ecommerce JavaScript -->
            <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.ecommerce.min.js"></script>
            <!-- MDB -->
            <script type="text/javascript" src="js/mdb.min.js"></script>
            <!-- Custom scripts -->
            <script type="text/javascript" src="js/script.js"></script>
            <script src="https://mdbootstrap.com/api/snippets/static/download/MDB5-Free_3.8.1/js/mdb.min.js"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"></script>

          <script>
    // Line Chart
    new Chart(document.getElementById("horizontalBar"), {
        type: "line",
        data: {
            labels: ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6", "Tháng 7", "Tháng 8", "Tháng 9", "Tháng 10", "Tháng 11", "Tháng 12"],
            datasets: [
                {
                    label: "Số lượng",
                    data: [${quantityMonth1}, ${quantityMonth2}, ${quantityMonth3}, ${quantityMonth4}, ${quantityMonth5}, ${quantityMonth6}, ${quantityMonth7}, ${quantityMonth8}, ${quantityMonth9}, ${quantityMonth10}, ${quantityMonth11}, ${quantityMonth12}],
                    fill: false,
                    borderColor: "rgb(75, 192, 192)",
                    borderWidth: 1,
                },
            ],
        },
        options: {
            scales: {
                xAxes: [
                    {
                        ticks: {
                            beginAtZero: true,
                        },
                    },
                ],
            },
        },
    });
</script>
        <script type="text/javascript" src="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/js/plugins/mdb-plugins-gathered.min.js"></script>
        <!-- MDB -->
        <script type="text/javascript" src="js/mdb.min.js"></script>
        <!-- Custom scripts -->
        <script type="text/javascript" src="js/script.js"></script>
    </body>
</html>