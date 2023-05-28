function valdiacionEP() {
    var apellido = document.getElementById("exampleInputName").value;
    var email = document.getElementById("exampleInputEmail").value;
    var password = document.getElementById("exampleInputPassword").value;
    var confirmPassword = document.getElementById("exampleInputConfirmPassword").value;
    var telefono = document.getElementById("exampleInputPhone").value;
    var salario = document.getElementById("exampleInputSalary").value;
    var fechaContrato = document.getElementById("exampleInputContractDate").value;
    var permisos = document.getElementById("exampleInputPermissions").value;
    var idDepartamento = document.getElementById("exampleInputDepartment").value;
    
    if (
        apellido === "" ||
        email === "" ||
        password === "" ||
        confirmPassword === "" ||
        telefono === "" ||
        salario === "" ||
        fechaContrato === "" ||
        permisos === "" ||
        idDepartamento === ""
    ) {
        alert("Todos los campos son obligatorios");
        return false;
    }

    return true;
}
