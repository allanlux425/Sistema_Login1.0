<?php 
include("conexao.php");
$nome = $_GET["nome"];
$login  = $_GET["login"];
$senha = $_GET["senha"];
$msg = array();    


                $sql = "INSERT INTO login(login,nome,senha) VALUES ('$login','$nome','$senha')";
                if(mysqli_query($conexao,$sql)){
                        $msg[] = "$nome, você foi  cadastrado com sucesso. Faça o login para acessar o sistema.";
                        if(!empty($msg)){
                            foreach($msg as $msg_cad){
                                header("location:index.php?msg=$msg_cad");
                            }
                        }
                }else{
                                    
                        echo "Erro".mysqli_connect_error($conexao);
                    }
  

?>