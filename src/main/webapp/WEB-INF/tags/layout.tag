<%@ tag language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ attribute name="module" required="true"%>
<%@ attribute name="adicionar"%>
<%@ attribute name="link"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<c:url value="/resources/" var="resourcesPath" />
<c:url value="/resources/gentelella-master" var="stylePath" />
<link rel="shortcut icon" href="${resourcesPath }/imagens/Icone.ico">

<title>${module} | Salus Medic</title>
<script> window.onload = function(){ document.getElementById("fechar").click();};</script>

<link href="${stylePath}/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="${stylePath}/vendors/font-awesome/css/font-awesome.min.css"	rel="stylesheet">
<link href="${stylePath}/vendors/nprogress/nprogress.css" rel="stylesheet">
<link href="${stylePath}/vendors/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet" />

<!-- Pnotify -->
<link href="${stylePath}/vendors/pnotify/dist/pnotify.css" rel="stylesheet">
<link href="${stylePath}/vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet">
<link href="${stylePath}/vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet">

<!-- Select2 -->
<link href="${stylePath}/vendors/select2/dist/css/select2.min.css" rel="stylesheet">

<!-- Datatables -->
<link href="${stylePath}/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
<link href="${stylePath}/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
<link href="${stylePath}/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
<link href="${stylePath}/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">

<link href="${stylePath}/build/css/custom.min.css" rel="stylesheet">
<link href="${resourcesPath}/site.css" rel="stylesheet">
</head>

<body class="nav-md footer_fixed">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col menu_fixed">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="#" class="site_title">&nbsp;<i
							class="fa fa-stethoscope"></i><span>&ensp;Salus Medic</span></a>
					</div>
					<div class="clearfix"></div>
					<div class="profile">
						<div class="profile_pic">
							<img src="${resourcesPath}/imagens/user.png" alt="..."
								class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<span>Bem Vindo,</span>
							<h2>Nome do Médico</h2>
						</div>
					</div>
					<br />
					<%@include file="menuAdministrador.jsp"%>
				</div>
			</div>
			<%@include file="topo.jsp"%>
			<div class="right_col" role="main">
				<div class="">
					<div class="page-title">
						<c:if test="${adicionar eq null || adicionar eq ''}">
						<div class="title_left">
							<h3>${module}</h3>
							<br/>
						</div>
						</c:if>
						<c:if test="${adicionar eq 'mostrar'}">
						<div class="title_left">
						<h3>${module}</h3>
						</div>
						<div class="title_right">
                			<div class="col-xs form-group pull-right top_search">
                  				<div class="input-group">
                    				<a href="${link}" class="btn btn-success btn-sm"><i class="fa fa-plus"></i> Adicionar </a>
                  				</div>
                			</div>
              			</div>
						</c:if>
					</div>
					<div class="clearfix"></div>
					<jsp:doBody />
					<%@include file="modal.jsp"%>
					<br/><br/><br/>
				</div>
			</div>
			<footer>
				<div class="pull-right">
					Salus Medic - Prontuário Eletrônico do Paciente, desenvolvido por <strong>HAW
						IT Solutions</strong>
				</div>
				<div class="clearfix"></div>
			</footer>
		</div>
	</div>	
	<script src="${stylePath}/vendors/jquery/dist/jquery.min.js"></script>
	<script src="${stylePath}/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="${stylePath}/vendors/fastclick/lib/fastclick.js"></script>
	<script src="${stylePath}/vendors/nprogress/nprogress.js"></script>
	<script src="${stylePath}/vendors/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
	
	<script src="${stylePath}/vendors/jquery.inputmask/dist/min/jquery.inputmask.bundle.min.js"></script>
	
	 <!-- pnotify -->
	<script src="${stylePath}/vendors/pnotify/dist/pnotify.js"></script>
	<script src="${stylePath}/vendors/pnotify/dist/pnotify.buttons.js"></script>
	<script src="${stylePath}/vendors/pnotify/dist/pnotify.nonblock.js"></script>
	
	<script src="${stylePath}/vendors/select2/dist/js/select2.full.min.js"></script>
	
     <!-- Datatables -->
    <script src="${stylePath}/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="${stylePath}/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="${stylePath}/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="${stylePath}/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="${stylePath}/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="${stylePath}/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="${stylePath}/vendors/datatables.net-scroller/js/datatables.scroller.min.js"></script>
    <script src="${stylePath}/vendors/jszip/dist/jszip.min.js"></script>
    <script src="${stylePath}/vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="${stylePath}/vendors/pdfmake/build/vfs_fonts.js"></script>
    
    
    <script src="${stylePath}/build/js/custom.min.js"></script>
    
    <script>
      $(document).ready(function() {
        $(".select2_single").select2({
          allowClear: true
        });
        $(".select2_multiple").select2({
          allowClear: true
        });
      });
    </script>
	<script src="${resourcesPath}/cep.js"></script>
	<script src="${resourcesPath}/site.js"></script>	
	
>
</body>
</html>