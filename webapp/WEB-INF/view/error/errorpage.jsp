<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>
<page:template>
    <jsp:attribute name="title">404 Not Found</jsp:attribute>
    <jsp:body>
        <!-- Page Content -->
        <div class="container">
            <div class="row">

                <div class="col-lg-12">
                    <div class="jumbotron">
                        <h1><span class="error-404">404</span>
                        </h1>
                        <p>The page you're looking for could not be found.</p>
                    </div>
                </div>

            </div>

            <hr>
        </div>
        <!-- /.container -->
    </jsp:body>
</page:template>

