<html>
	<head>
		<meta charset="UTF-8" />
		<title>EAD</title>
		<link href="<?php echo BASE; ?>assets/css/template.css" rel="stylesheet">
		<script type="text/javascript" src="<?php echo BASE; ?>assets/js/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="<?php echo BASE; ?>assets/js/script.js"></script>
	</head>
	<body>
		<div class="container">
			<div class="topo">
				<a href="<?php echo BASE; ?>login/logout">
					<div>Sair</div>
				</a>
				<div class="topousuario">
					<?php echo $viewData['info']->getNome(); ?>
				</div>

				
				<div id="back" style="display: none;">
					<a href="<?php echo BASE; ?>cursos">					
						<img src="<?php echo BASE; ?>assets/images/back.png" border="0" width="80"/>		
					</a>
				</div>
				
			</div>
	
		<?php $this->loadViewInTemplate($viewName, $viewData); ?>	