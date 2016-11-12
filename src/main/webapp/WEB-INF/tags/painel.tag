<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ attribute name="title" required="true" %>
<%@ attribute name="fechar" %>
<%@ attribute name="md" %>
<%@ attribute name="sm" %>
<%@ attribute name="xs" %>

<div class="col-md-${md eq null || md eq '' ? '12' : md} col-sm-${sm eq null || sm eq '' ? '12' : sm} 
            col-xs-${xs eq null || xs eq '' ? '12' : xs}">
    <div class="x_panel">
        <div class="x_title">
            <h2>${title}</h2>
            <ul class="nav navbar-right panel_toolbox">
                <li>
                    <a class="collapse-link"><i class="fa fa-chevron-up" id="${fechar eq null || fechar eq '' ? '' : fechar}"></i></a>
                </li>
            </ul>
            <div class="clearfix"></div>
        </div>
        <div class="x_content" id="content" name="content">
            <jsp:doBody/>
        </div>
    </div>
</div>

