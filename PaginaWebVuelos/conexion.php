<?php

    require 'setting.php';
    class conexion{
        private $conector = null;
        public function getConexion()
        {
        $this->conector = new PDO("sqlsrv:server=".SERVIDOR.";database=".DATABASE, USUARIO, PASSWORD);
        return $this->conector;
        }

 }
 $con = new conexion();
if( $con->getConexion ()!=null)
{

    $pps = $con->getConexion()->prepare("SELECT *FROM usuarios");
    $pps->execute();
    return json_encode(['usuarios'=>$pps->fetchAll(PDO::FETCH_ASSOC)]);}

?>