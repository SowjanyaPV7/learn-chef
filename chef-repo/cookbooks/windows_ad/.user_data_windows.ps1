<powershell>
	winrm set winrm/config/service/auth '@{Basic="true"}'
	winrm set winrm/config/service '@{AllowUnencrypted="true"}'
	$admin = [adsi]("WinNT://./Administrator, user")
	$admin.psbase.invoke("SetPassword", "password@123")
</powershell>