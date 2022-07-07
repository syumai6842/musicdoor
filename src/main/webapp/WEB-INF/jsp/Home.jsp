<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*" %>
<%@ page import="com.example.service.Model.Beans.PostBeans" %>

<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="share music you like!!" />
        <meta name="author" content="syumai" />
        <title>musicdoor</title>
        
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!--google fonts-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500&display=swap" rel="stylesheet">
        <!--BootStrap CSS-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <!-- Core theme CSS (includes Bootstrap)-->
        <link rel="stylesheet" href="styles/style.css">
    </head>
    <body style="padding-top:4rem;">
        <!-- Navigation-->
        <jsp:include page="Header.jsp" />
        

        <!--Objects-->
        <div class="container border-end pt-3">
            <div class="row">
                <!--POST contents-->
                <div class="col border-end">
                    <form action="#" method="post" class="form-inline">
                        
                        <input type="text" class=" form-control form-control-sm" placeholder="曲名" name="musictitle">
                        <input type="text" class=" form-control form-control-sm" placeholder="アーティスト名" name="artistname">
                        <textarea name="comment" id="" cols="50" rows="15" placeholder="コメント"></textarea>
                        <input type="text" class=" form-control form-control-sm" placeholder="URL" name="url">
                        <input class="btn" type="submit" value="投稿">
                    </form>
                </div>

                
                <!--show contents-->
                <div class="col">
                    <c:forEach var="obj" items="${posts}" varStatus="status">
                            <div class="row border-bottom">
                                <p class="fs-3 fw-bolder"><c:out value="${obj.getFrom()}"/></p>
                                <p class="fs-6 fw-lighter"><c:out value="${obj.getDate()}"/></p>
                                <p class="fs-5">返信：<c:out value="${obj.getTo()}"/></p>
                                <p class="fs-4 fw-bold">曲名:<c:out value="${obj.getName()}"/></p>
                                <p class="fs-4">アーティスト：<c:out value="${obj.getArtist()}"/></p>
                                <p><c:out value="${obj.getComment()}"/></p>
                                <c:out value="<a href=\"" + ${obj.getUrl()} + "\""/><p>URL</p></a>
                            </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <!-- Optional JavaScript; choose one of the two! -->

        <!-- Option 1: Bootstrap Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

        <!-- Option 2: Separate Popper and Bootstrap JS -->
        <!--
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        -->
    </body>
</html>
