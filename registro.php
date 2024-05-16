<!-- importamos el header -->
<?php include ("INCLUDES/header.php") ?>

<!-- NavBar -->
<?php include ("INCLUDES/NavBar.php") ?>

<div class="container text-center vh-75 pb-4">
    <div id="particles-js"></div>
    <div id="overlay">
        <img src="IMG/Logo.png" alt="" class="w-75">
    </div>
</div>
<div class="container mt-5 mb-5">
                  <div class="row justify-content-center">
                    <div class="col-12 col-md-5">
                      <div class="card">
                        <div class="card-header bg-dark">
                          <h3 class="card-title text-center text-light">Crea Tu Registro</h3>
                        </div>
                        <div class="card-body"></div>
<form action="controladores/ControladorUsuario.php" method="POST">
                            <dv class="row">
                             <div class="col-12">
                              <label for="numeroDoc">Correo de Usuario</label>
                              <input type="email" id="txtEmail" name="txtEmail" class="form-control" required placeholder="Ingresa tu correo" 
                                pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" 
                                maxlength="255" 
                                required/>
                            </div>
                            <div class="col-12">
                              <label  for="contrasena">Contraseña</label>
                              <input type="password" id="txtClave" name="txtClave" class="form-control" minlength="6" 
                                pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,}$" 
                                placeholder="Contraseña segura" 
                                required />
                                <span style="font-size: 70%;" class="password-hint">Al menos 6 caracteres, mayúsculas, minúsculas, números y símbolos</span>
                                <div class="col-12">
                              <label  for="Nombres">Nombres</label>
                              <input type="text" id="txtNombres" name="txtNombres" class="form-control" minlength="1" 
                                placeholder="Nombre Completo" 
                                required />
                                <label  for="Apellidos">Apellidos</label>
                              <input type="text" id="txtApellidos" name="txtApellidos" class="form-control" minlength="1" 
                                placeholder="Apellidos Completos" 
                                required />
                                  

                              <input type="submit" id="btnRegistro" name="btnRegistro" class="btn btn-primary btn-block text-light mt-3" value="Registrarse"/>
                              
                              </form>
                            </div>
                            </div>
                          </dv>
                          </div>
</div>
</div>
</div>
</div>
<div class="container mt-5 mb-5"></div>
<!-- importamos el footer -->
<?php include ("INCLUDES/footer.php") ?>
