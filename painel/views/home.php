<h1 style="text-align:center">Cursos</h1>

<button class="btnAdd"><a href="<?php echo BASE; ?>home/adicionar">Adicionar Curso</a><br/></button><hr/>
<table border="0" width="100%">
	<tr>
		<th>Imagem</th>
		<th>Nome</th>
		<th width="80">Qt. de Alunos</th>
		<th>Ações</th>
	</tr>
	<?php foreach($cursos as $curso): ?>
		<tr>
			<td width="150"><img src="<?php echo BASE; ?>../assets/images/cursos/<?php echo $curso['imagem']; ?>" border="0" width="200" /></td>
			
			<td align="center"><?php echo $curso['nome']; ?></td>
			
			<td align="center"><?php echo $curso['qtalunos']; ?></td>
			
			<td width="200">
			<div class="btnEdit">
				<button class="btnEdit"><a href="<?php echo BASE; ?>home/editar/<?php echo $curso['id']; ?>">Editar Curso</a></button>
			
				<button class="btnDel"><a href="<?php echo BASE; ?>home/excluir/<?php echo $curso['id']; ?>">Excluir Curso</a></button>
			</div>
			</td>
		</tr>
	<?php endforeach; ?>

</table>