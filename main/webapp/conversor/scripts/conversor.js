function comprobar(campo1)
{
    let field1 = document.getElementById(campo1).value;
    
    if (field1 != "")
    {
        if (field1 == parseFloat(field1))
        {
            return true;
        }
        else
        {
            alert("Por favor ingrese datos numericos");
            return false;
        }
    }
    else
    {
        alert("Por favor rellene todos los campos");
        return false;
    }
}