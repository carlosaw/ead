	<div class="title">
		<h1>Meus Cursos</h1>
	</div>
	<div class="cursos">
		<!--Pegas os cursos do aluno dos dados do homeController-->	
		<?php foreach($cursos as $curso): ?>
		<div class="curse">
			<!--Link para entrar no curso-->
			<a href="<?php echo BASE; ?>cursos/entrar/<?php echo $curso['id_curso']; ?>">
				<div class="cursoitem">
					<img src="<?php echo BASE; ?>assets/images/cursos/<?php echo $curso['imagem']; ?>" border="0" width="260" height="150" /><br/><br/>

					<strong><?php echo $curso['nome']; ?></strong><br/><br/>
					<?php echo $curso['descricao']; ?>
				</div>
			</a>
		</div>
		<?php endforeach; ?>
	</div>