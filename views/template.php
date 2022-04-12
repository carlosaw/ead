<html>
	<head>
		<meta charset="UTF-8" />
		<title>EAD</title>
		<link href="<?php echo BASE; ?>assets/css/template.css" rel="stylesheet">
		<link href="#" rel="favicon.ico">
		<script type="text/javascript" src="<?php echo BASE; ?>assets/js/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="<?php echo BASE; ?>assets/js/script.js"></script>
	</head>
	<body>
		<div class="container">
			<div class="topo">
				<a href="<?php echo BASE; ?>login/logout">
					<div title="Logout">Sair</div>
				</a>
				<div class="topousuario">
					<?php echo $viewData['info']->getNome(); ?>
				</div>

				<div class="back" title="Voltar para Cursos">
					<a href="<?php echo BASE; ?>cursos">											
						<img src="<?php echo BASE; ?>assets/images/back.png" border="0" width="70" />								
					</a>
				</div>
				
			</div>
	
		<?php $this->loadViewInTemplate($viewName, $viewData); ?>	