<h1 class="add">Editar Curso</h1>

	<form method="POST" class="form_loginEdit" enctype="multipart/form-data">
	
		<input class="inp_edit" type="text" name="nome" value="<?php echo $curso['nome']; ?>" placeholder="Nome do curso" /><br/><br/>

		Descrição do Curso:<br/><br/>
		<textarea name="descricao" class="txtadd"><?php echo $curso['descricao']; ?></textarea><br/><br/>

		Imagem<br/>
		<input type="file" name="imagem" /><br/><br/>
		<img src="<?php echo BASE; ?>../assets/images/cursos/<?php echo $curso['imagem']; ?>"  border="0" height="80" /><br/><br/>

		<input type="submit" value="Salvar" class="inp_edit" />

	</form><br/>
	<hr/>
	<h1 style="text-align:center">Add Módulos/Aulas</h1>
	
	<fieldset>
		<legend>Adicionar Módulo Novo</legend>
			<form method="POST">
				Título do Módulo:<br/>
				<input type="text" name="modulo" />
				<input type="submit" value="Adicionar Módulo" />
			</form>
	</fieldset>

	<fieldset>
		<legend>Adicionar Aula Nova</legend>
			<form method="POST">
				Título da Aula:<br/>
				<input type="text" name="aula" /><br/><br/>

				Módulo da Aula:<br/>
				<select name="moduloaula">
					<?php foreach($modulos as $modulo): ?>
						<option value="<?php echo $modulo['id']; ?>"><?php echo $modulo['nome']; ?></option>
					<?php endforeach; ?>
				</select><br/><br/>

				Tipo da Aula:<br/>
				<select name="tipo">
					<option value="video">Vídeo</option>
					<option value="poll">Questionário</option>
				</select><br/><br/>
				
				<input type="submit" value="Adicionar Aula" />
			</form>
	</fieldset><br/>
	
	<?php foreach($modulos as $modulo): ?>
		<h4><?php echo $modulo['nome']; ?> - <a href="<?php echo BASE; ?>home/edit_modulo/<?php echo $modulo['id']; ?>">[editar]</a> - <a href="<?php echo BASE; ?>home/del_modulo/<?php echo $modulo['id']; ?>">[excluir]</a></h4>

		<?php foreach($modulo['aulas'] as $aula): ?>
			<h5><?php echo $aula['nome']; ?> - <a href="<?php echo BASE;?>home/edit_aula/<?php echo $aula['id']; ?>">[editar]</a> - <a href="<?php echo BASE; ?>home/del_aula/<?php echo $aula['id']; ?>">[excluir]</a></h5>
		<?php endforeach; ?>
	<?php endforeach; ?>

	</body>
</html>


