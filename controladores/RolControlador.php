<?php
require "../modelo/dao/RolDAO.php";
require "../modelo/dto/RolDTO.php";
require "../modelo/Conexion.php";


if(isset($_POST['btnRegistrarRol'])){	
    $rolDAO=new RolDAO();
    $rolDTO=new RolDTO();

    $rolDTO->setIdRol($_POST['txtIdRol']);
    $rolDTO->setNombreRol($_POST['txtNombreRol']);
    $rolDAO->registrarRol($rolDTO);
}
