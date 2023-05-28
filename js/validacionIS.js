function validacionIS() {
    var campo = document.getElementById("Mail");
    if (campo.value == null || campo.value.length == 0 || isNaN(campo.value)) {
      campo.placeholder = "Debes rellenar el campo Mail";
      campo.focus();
      return false;
    }
  
    var campoPwd = document.getElementById("Pwd");
    if (campoPwd.value == null || campoPwd.value.length == 0) {
      campoPwd.placeholder = "Debes rellenar el campo contraseña";
      campoPwd.focus();
      return false;
    }
  
    return true;
  }