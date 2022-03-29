<h1 style="text-align:center">Cursos</h1>
<a href="<?php echo BASE; ?>home/adicionar">Add </a><br/>
	
<table border="0" width="100%">
	<tr>
		<th>Imagem</th>
		<th>Nome</th>
		<th width="80">Qt. de Alunos</th>
		<th width="100">Ações</th>
	</tr>

	<?php foreach($cursos as $curso): ?>
		<tr>
			<td width="250">
				<img src="<?php echo BASE; ?>../assets/images/cursos/<?php echo $curso['imagem']; ?>" border="0" width="200" height="120" />
			</td>
			
			<td><?php echo $curso['nome']; ?></td>
			
			<td align="center"><?php echo $curso['qtalunos']; ?></td>
			
			<td>
					<a href="<?php echo BASE; ?>home/editar/<?php echo $curso['id']; ?>">Edit</a>
				
					<a href="<?php echo BASE; ?>home/excluir/<?php echo $curso['id']; ?>">Excluir</a>
			</td>
		</tr>
	<?php endforeach; ?>

</table>
</div>