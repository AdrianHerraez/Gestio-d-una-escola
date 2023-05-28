function validacionEA() {
    var nombre = document.getElementById("exampleInputName").value;
    var apellido = document.getElementById("exampleInputName").value;
    var email = document.getElementById("exampleInputEmail").value;
    var password = document.getElementById("exampleInputPassword").value;
    var telefono = document.getElementById("exampleInputPhone").value;
    var cp = document.getElementById("CP").value;
    var nomTutor1 = document.getElementById("exampleInputDepartment").value;
    var nomTutor2 = document.getElementById("exampleInputDepartment").value;
    var genero = document.getElementById("exampleInputDepartment").value;

    if (nombre === "" || apellido === "" || email === "" || password === "" || telefono === "" || cp === "" || nomTutor1 === "" || nomTutor2 === "" || genero === "") {
        alert("Todos los campos son obligatorios");
        return false;
    }

    var emailRegex = /^[A-Za-z0-9._%+-]+@fje\.edu$/;
    if (!email.match(emailRegex)) {
        alert("Por favor, introduce una dirección de correo electrónico válida que termine en @fje.edu");
        return false;
    }
    
    var phoneRegex = /^\d{9}$/;
    if (!telefono.match(phoneRegex)) {
        alert("Por favor, introduce un número de teléfono válido de 9 dígitos");
        return false;
    }

    return true;
}
