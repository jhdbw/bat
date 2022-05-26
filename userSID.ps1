//Listar usuarios del dominio
net user /domain >>netuser.txt
 

//Obtener el SID del usuario
echo "--------------------------------------------------"
echo "SID DEL USUARIO:"
$objUser = New-Object System.Security.Principal.NTAccount("tudominio", "tuusuario")
$strSID = $objUser.Translate([System.Security.Principal.SecurityIdentifier])
$strSID.Value

 
//Obtener el usuario asociado al SID
echo "--------------------------------------------------"
echo "USUARIO ASOCIADO AL SID:"
$objSID = New-Object System.Security.Principal.SecurityIdentifier `
    ("Aquí-va-el-SID")
$objUser = $objSID.Translate( [System.Security.Principal.NTAccount])
$objUser.Value
echo "--------------------------------------------------"

 
//Obtener el SID de todos los usuarios del dominio
$FILE = Get-Content "C:\netuser.txt"
foreach ($LINE in $FILE)
{
$objUser = New-Object System.Security.Principal.NTAccount("tudominio", "$LINE")
$strSID = $objUser.Translate([System.Security.Principal.SecurityIdentifier])
echo "$LINE;$strSID">>SIDlist.txt
}
