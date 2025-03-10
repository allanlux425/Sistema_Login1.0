
<?php 
   //conexao
   include("conexao.php");
   $id_categoria = $_GET['categoria'];
   
    $sql = "SELECT  * FROM cad_livro  WHERE id_livro = $id_categoria";
    $resultados_db = mysqli_query($conexao,$sql);
    mysqli_close($conexao);
    
    while($dados = mysqli_fetch_assoc($resultados_db)){
    ?>    
        <ul>
            <li>Livro:<?php echo $dados["livro"] ?></li>
            <li>Autor:<?php echo $dados["autor"] ?></li>
            <li>Categoria: <?php echo $dados["categoria"] ?></li>
        </ul> 
    <?php }

                
?>
