<linkdeny enabled="1">
	<time-limiting key="7979EB85-79B6-AEE7-B408-6F13BA61DB64" urlflag="protected" urlmask="P80-LINKDENY-URLMASK" cookie="p80ld" expires="60" enablepath="0">
		<mime value="text/html" matchtype="0" />
	</time-limiting>
	<logging enabled="1" path="C:\Arquivos de programas\Port80\LinkDeny\Logs\W3SVC1\" />
	<rules>
		<deny name="Apenas BR" path="/*" matchtype="1" hardreturn="0">
			<referers enabled="1">
				<referer value="http://kinggame.5forum.net" matchtype="0" />
			</referers>
			<useragents enabled="0" />
			<ipaddresses enabled="0" enablecustomip="0" enablegeoip="1">
				<countrygroup value="Africa" />
				<countrygroup value="Asia" />
				<countrygroup value="Australia" />
				<countrygroup value="Australia and Pacific Islands" />
				<countrygroup value="Caribbean Islands" />
				<countrygroup value="Central America" />
				<countrygroup value="English Speaking Countries" />
				<countrygroup value="Europe" />
				<countrygroup value="European Union" />
				<countrygroup value="Middle East" />
				<countrygroup value="North America" />
				<countrygroup value="Southeast Asia" />
			</ipaddresses>
			<http-conformance enabled="0" musthaveall="1" />
			<time-limit enabled="0" enableurl="0" enablecookie="0" />
			<on-deny error="404" />
		</deny>
		<deny name="Deny Top Countries with High Risk for Hacking or Fraud" path="/*" matchtype="1" hardreturn="0">
			<referers enabled="0" />
			<useragents enabled="0" />
			<ipaddresses enabled="1" enablecustomip="0" enablegeoip="1">
				<countrygroup value="Top Countries with High Risk for Hacking or Fraud" />
			</ipaddresses>
			<time-limit enabled="0" enableurl="0" enablecookie="0" />
			<on-deny error="404" />
		</deny>
		<deny name="Deny U.S. Embargoed Countries" path="/*" matchtype="1" hardreturn="0">
			<referers enabled="0" />
			<useragents enabled="0" />
			<ipaddresses enabled="1" enablecustomip="0" enablegeoip="1">
				<countrygroup value="U.S. Embargoed Countries" />
			</ipaddresses>
			<time-limit enabled="0" enableurl="0" enablecookie="0" />
			<on-deny error="404" />
		</deny>
		<deny name="Vietnam Block" path="/*" matchtype="1" hardreturn="0">
			<referers enabled="0" />
			<useragents enabled="0" />
			<ipaddresses enabled="0" enablecustomip="0" enablegeoip="1">
				<country value="VN" />
			</ipaddresses>
			<http-conformance enabled="0" musthaveall="1" />
			<time-limit enabled="0" enableurl="0" enablecookie="0" />
			<on-deny error="404" />
		</deny>
		<deny name="EUA E OUTROS" path="/*" matchtype="1" hardreturn="0">
			<referers enabled="0" />
			<useragents enabled="0" />
			<ipaddresses enabled="0" enablecustomip="0" enablegeoip="1">
				<country value="US" />
				<country value="" />
				<country value="UM" />
				<country value="HN" />
				<country value="AR" />
				<country value="CN" />
				<country value="IN" />
				<country value="ID" />
				<country value="GB" />
			</ipaddresses>
			<http-conformance enabled="0" musthaveall="1" />
			<time-limit enabled="0" enableurl="0" enablecookie="0" />
			<on-deny error="404" />
		</deny>
	</rules>
</linkdeny>