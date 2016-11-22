<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
	<security:authorize access="hasRole('ROLE_ADMINISTRADOR')">
		<div class="menu_section">
			<h3>Módulo Administrador</h3>
			<ul class="nav side-menu">
				<li>
					<a><i class="fa fa-user-md"></i> &nbsp;Atendimento<span class="fa fa-chevron-down"></span></a>
					<ul class="nav child_menu">
						<li><a href="${s:mvcUrl('formAtendimento').build()}">Novo</a></li>
						<li><a href="${s:mvcUrl('listarAtendimento').build()}">Pesquisar</a></li>
					</ul>
				</li>
				<li>
					<a><i class="fa fa-h-square"></i> &nbsp;Paciente<span class="fa fa-chevron-down"></span></a>
					<ul class="nav child_menu">
						<li><a href="${s:mvcUrl('formPaciente').build()}">Novo</a></li>
						<li><a href="${s:mvcUrl('listarPaciente').build()}">Pesquisar</a></li>
					</ul>
				</li>
				<li>
					<a><i class="fa fa-male"></i> &nbsp;Prestador<span class="fa fa-chevron-down"></span></a>
					<ul class="nav child_menu">
						<li><a href="${s:mvcUrl('formPrestador').build()}">Novo</a></li>
						<li><a href="${s:mvcUrl('listarPrestador').build()}">Pesquisar</a></li>
					</ul>
				</li>
				<li>
					<a><i class="fa fa-area-chart"></i>&nbsp;Relatório<span class="fa fa-chevron-down"></span></a>
					<ul class="nav child_menu">
						<li><a href="#">Atendimento</a></li>
						<li><a href="#">Diagnóstico</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</security:authorize>
	<security:authorize access="hasRole('ROLE_AUX_ADMINISTRATIVO')">
		<div class="menu_section">
			<h3>Módulo Administrativo</h3>
			<ul class="nav side-menu">
				<li>
					<a><i class="fa fa-user-md"></i> &nbsp;Atendimento<span class="fa fa-chevron-down"></span></a>
					<ul class="nav child_menu">
						<li><a href="${s:mvcUrl('formAtendimento').build()}">Novo</a></li>
						<li><a href="${s:mvcUrl('listarAtendimento').build()}">Pesquisar</a></li>
					</ul>
				</li>
				<li>
					<a><i class="fa fa-h-square"></i> &nbsp;Paciente<span class="fa fa-chevron-down"></span></a>
					<ul class="nav child_menu">
						<li><a href="${s:mvcUrl('formPaciente').build()}">Novo</a></li>
						<li><a href="${s:mvcUrl('listarPaciente').build()}">Pesquisar</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</security:authorize>
	<security:authorize access="hasRole('ROLE_ENFERMEIRO')">
		<div class="menu_section">
			<h3>Módulo Enfermeiro</h3>
			<ul class="nav side-menu">
				<li>
					<a><i class="fa fa-desktop"></i> &nbsp; Lista de Pacientes<span class="fa fa-chevron-down"></span></a>
					<ul class="nav child_menu">
						<li><a href="${s:mvcUrl('listarTipoAtendimento').arg(0,'AMBULATORIAL').build()}">Ambulatório</a></li>
						<li><a href="${s:mvcUrl('listarTipoAtendimento').arg(0,'INTERNACAO').build()}">Internação</a></li>
						<li><a href="${s:mvcUrl('listarTipoAtendimento').arg(0,'EMERGENCIA').build()}">Urgência</a></li>
					</ul>
				</li>
				<li>
					<a href="historicoPaciente"><b><i class="fa fa-archive"></i>&nbsp; Histórico de Pacientes</b></a>
				</li>
				<li>
					<a href="${s:mvcUrl('formTriagem').build()}"><iclass="fa fa-bars"></i> Triagem</a>
				</li>
			</ul>
		</div>
	</security:authorize>
	<security:authorize access="hasRole('ROLE_MEDICO')">
		<div class="menu_section">
			<h3>Módulo Médico</h3>
			<ul class="nav side-menu">
				<li>
					<a><i class="fa fa-desktop"></i> &nbsp; Lista de Pacientes<span class="fa fa-chevron-down"></span></a>
					<ul class="nav child_menu">
						<li>
							<a href="${s:mvcUrl('listarTipoAtendimento').arg(0,'AMBULATORIAL').build()}">Ambulatório</a>
						</li>
						<li>
							<a href="${s:mvcUrl('listarTipoAtendimento').arg(0,'INTERNACAO').build()}">Internação</a>
						</li>
						<li>
							<a href="${s:mvcUrl('listarTipoAtendimento').arg(0,'EMERGENCIA').build()}">Urgência</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="historicoPaciente"><b><i class="fa fa-archive"></i>&nbsp; Histórico de Pacientes</b></a>
				</li>
				<li>
					<a href="listarParecer"><b><i class="fa fa-plus-square"></i>&nbsp; Parecer</b></a>
				</li>
				<li>
					<a href="http://www.medicinanet.com.br/categorias/bulas_remedios.htm" target="_blank"><b><i class="fa fa-info-circle"></i>&nbsp; Bulário</b></a>
				</li>
			</ul>
		</div>
	</security:authorize>
	<security:authorize access="hasRole('ROLE_PACIENTE')">
		<div class="menu_section">
			<h3>Módulo do Paciente</h3>
			<ul class="nav side-menu">
				<li><a href="/paciente"><i class="fa fa-plus-square"></i>História Clínica</a></li>
				<li><a href="/atendimento"><i class="fa fa-archive"></i> Prontuário</a></li>
			</ul>
		</div>
	</security:authorize>
	<security:authorize access="hasRole('ROLE_TEC_ENF')">
		<div class="menu_section">
			<h3>Módulo dos Técnicos de Enfermagem</h3>
			<ul class="nav side-menu">
				<li>
					<a><i class="fa fa-desktop"></i> &nbsp; Lista de Pacientes<span class="fa fa-chevron-down"></span></a>
					<ul class="nav child_menu">
						<li>
							<a href="${s:mvcUrl('listarTipoAtendimento').arg(0,'AMBULATORIAL').build()}">Ambulatório</a>
						</li>
						<li>
							<a href="${s:mvcUrl('listarTipoAtendimento').arg(0,'INTERNACAO').build()}">Internação</a>
						</li>
						<li>
							<a href="${s:mvcUrl('listarTipoAtendimento').arg(0,'EMERGENCIA').build()}">Urgência</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="historicoPaciente"><b><i class="fa fa-archive"></i>&nbsp; Histórico de Pacientes</b></a>
				</li>
			</ul>
		</div>
	</security:authorize>
	<security:authorize access="hasRole('ROLE_TEC_EXAME')">
		<div class="menu_section">
			<h3>Módulo dos Técnicos de Exame</h3>
			<ul class="nav side-menu">
				<li>
					<a href="/paciente"><i class="fa fa-medkit"></i> Exames Prescritos</a>
				</li>
			</ul>
		</div>
	</security:authorize>
</div>
<div class="sidebar-footer hidden-small">
	<a data-toggle="tooltip" data-placement="top" title="Configurações">
		<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
	</a> <a data-toggle="tooltip" data-placement="top" title="Tela Cheia"
		onclick="toggleFullScreen()"> <span
		class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
	</a> <a data-toggle="tooltip" data-placement="top" title="Bloquear"> <span
		class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
	</a> <a href="/salusmedic/logout" data-toggle="tooltip"
		data-placement="top" title="Sair"> <span
		class="glyphicon glyphicon-off" aria-hidden="true"></span>
	</a>
</div>