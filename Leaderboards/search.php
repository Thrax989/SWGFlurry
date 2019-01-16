<!DOCTYPE  HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"  "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta  http-equiv="Content-Type" content="text/html;  charset=iso-8859-1">
    <title>Search  Contacts</title>
  </head>
  <p><body>
	<div align="center">
    <h3 style="font-weight:bold">Classic Player Search</h3>
    <p>Search by Name or Sur Name</p>
    <form  method="post" action="search.php?go"  id="searchform">
      <input  type="text" name="name">
      <input  type="submit" name="submit" value="Search">
    </form>
	</div>
  </body>
</html>
</p>

<?php
  if(isset($_POST['submit'])){
	if(isset($_GET['go'])){
		if(preg_match("/^[  a-zA-Z]+/", $_POST['name'])){
			$name=$_POST['name'];
			echo <<<EOT
			<table border="1" cellspacing="5" cellpadding="5" width="100%">
			<thead>
			<tr>
			<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">First Name</div></font></b></td>
			<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">Sur Name</div></font></b></td>
			<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">Faction</div></font></b></td>
			<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">PvP Kills</div></font></b></td>
			<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">PvP Deaths</div></font></b></td>
			<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">PvE Kills</div></font></b></td>
			<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">PvE Deaths</div></font></b></td>
			<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">Bounty Kills</div></font></b></td>
			<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">Missions Completed</div></font></b></td>
			</tr>
			</thead>
			<tbody>
EOT;
			$mysqli = new mysqli("167.114.102.173", "swgemu", "123456", "swgemu"); //CHANGE ME
			//$mysqli = new mysqli("", "swgemu", "", "swgemu");
			$result = $mysqli->query("SELECT  * FROM characters WHERE firstname LIKE '%" . $name .  "%' OR surname LIKE '%" . $name ."%'");

			while(($row = $result->fetch_assoc())) {
				switch ($row['faction']) {
					case 0:
						$fac = "Neutral";
						break;
					case 1:
						$fac = "Rebel";
						break;
					case 2:
						$fac = "Imperial";
						break;
			}
			$ID = str_replace("'","",$row['character_oid']);
			$firstname = str_replace("'","",$row['firstname']);
			$surname = str_replace("'","",$row['surname']);
			$fac = str_replace("'","",$fac);
			$pvpkills = str_replace("'","",$row['pvpkills']);
			$pvpdeaths = str_replace("'","",$row['pvpdeaths']);
			$bounty = str_replace("'","",$row['bountykills']);
			$pvekills = str_replace("'","",$row['pvekills']);
			$pvedeaths = str_replace("'","",$row['pvedeaths']);
			$missions = str_replace("'","",$row['missionscompleted']);
	  //-display the result of the array
			printf("<tr>
			<td>%s</td>
			<td>%s</td>
			<td>%s</td>
			<td>%s</td>
			<td>%s</td>
			<td>%s</td>
			<td>%s</td>
			<td>%s</td>
			<td>%s</td>
			</tr>", $firstname, $surname, $fac, $pvpkills, $pvpdeaths, $pvekills, $pvedeaths, $bounty, $missions);
			}
		}
		echo <<<EOT
		</tbody>
		</table>
		<br/>
EOT;
	}
	else {
		echo  "<p>Please enter a search query</p>";
	}
  }
?>
<?php
$mysqli = new mysqli("", "swgemu", "", "swgemu"); //CHANGE ME
//$mysqli = new mysqli("", "swgemu", "", "swgemu");
$pveresult = $mysqli->query("SELECT * FROM characters ORDER BY pvekills * 1 DESC LIMIT 10");
$pvpresult = $mysqli->query("SELECT * FROM characters ORDER BY pvpkills * 1 DESC LIMIT 10");
$missionresult = $mysqli->query("SELECT * FROM characters ORDER BY missionscompleted * 1 DESC LIMIT 10");
$bountyresult = $mysqli->query("SELECT * FROM characters ORDER BY bountykills * 1 DESC LIMIT 10");
$allResult = $mysqli->query("SELECT * FROM characters ORDER BY creation_date DESC");
//Housing TABLE
echo <<<EOT
	<div align="center">
    <h3 style="font-weight:bold">Top 10</h3>
	</div>
	<table border=0 align="center">
	<TR>
	<TD>
EOT;

//TABLE FOR PVE STATS
	echo <<<EOT
	<table border="1" cellspacing="5" cellpadding="5" width="100%" style="float: left;">
	<thead>
	<tr>
	<th colspan=5>Top 10 PvE Kills</th>
	</tr>
	<tr>
	<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">First Name</div></font></b></td>
	<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">Sur Name</div></font></b></td>
	<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">Faction</div></font></b></td>
	<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">PvE Kills</div></font></b></td>
	<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">PvE Deaths</div></font></b></td>
	</tr>
	</thead>
	<tbody>
EOT;
	while(($row = $pveresult->fetch_assoc())) {
		switch ($row['faction']) {
			case 0:
				$fac = "Neutral";
				break;
			case 1:
				$fac = "Rebel";
				break;
			case 2:
				$fac = "Imperial";
				break;
	}
	$firstname = str_replace("'","",$row['firstname']);
	$surname = str_replace("'","",$row['surname']);
	$fac = str_replace("'","",$fac);
	//$pvpkills = str_replace("'","",$row['pvpkills']);
	//$pvpdeaths = str_replace("'","",$row['pvpdeaths']);
	//$bounty = str_replace("'","",$row['bountykills']);
	$pvekills = str_replace("'","",$row['pvekills']);
	$pvedeaths = str_replace("'","",$row['pvedeaths']);
	//$missions = str_replace("'","",$row['missionscompleted']);
//-display the result of the array
	printf("<tr>
	<td>%s</td>
	<td>%s</td>
	<td>%s</td>
	<td>%s</td>
	<td>%s</td>
	</tr>", $firstname, $surname, $fac, $pvekills, $pvedeaths);
	}
	echo <<<EOT
	</tbody>
	</table>
	</TD>
EOT;

//TABLE FOR PVP STATS
	echo <<<EOT
	<TD>
	<table border="1" cellspacing="5" cellpadding="5" width="100%" style="float: left;">
	<thead>
	<tr>
	<th colspan=5>Top 10 PvP Kills</th>
	</tr>
	<tr>
	<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">First Name</div></font></b></td>
	<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">Sur Name</div></font></b></td>
	<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">Faction</div></font></b></td>
	<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">PvP Kills</div></font></b></td>
	<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">PvP Deaths</div></font></b></td>
	</tr>
	</thead>
	<tbody>
EOT;
	while(($row = $pvpresult->fetch_assoc())) {
		switch ($row['faction']) {
			case 0:
				$fac = "Neutral";
				break;
			case 1:
				$fac = "Rebel";
				break;
			case 2:
				$fac = "Imperial";
				break;
	}
	$firstname = str_replace("'","",$row['firstname']);
	$surname = str_replace("'","",$row['surname']);
	$fac = str_replace("'","",$fac);
	$pvpkills = str_replace("'","",$row['pvpkills']);
	$pvpdeaths = str_replace("'","",$row['pvpdeaths']);
	//$bounty = str_replace("'","",$row['bountykills']);
	//$pvekills = str_replace("'","",$row['pvekills']);
	//$pvedeaths = str_replace("'","",$row['pvedeaths']);
	//$missions = str_replace("'","",$row['missionscompleted']);
//-display the result of the array
	printf("<tr>
	<td>%s</td>
	<td>%s</td>
	<td>%s</td>
	<td>%s</td>
	<td>%s</td>
	</tr>", $firstname, $surname, $fac, $pvpkills, $pvpdeaths);
	}
	echo <<<EOT
	</tbody>
	</table>
	</TD>
EOT;

//TABLE FOR MISSIONS COMPLETED
	echo <<<EOT
	<TD>
	<table border="1" cellspacing="5" cellpadding="5" width="100%" style="float: left;">
	<thead>
	<tr>
	<th colspan=5>Top 10 Missions Completed</th>
	</tr>
	<tr>
	<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">First Name</div></font></b></td>
	<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">Sur Name</div></font></b></td>
	<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">Faction</div></font></b></td>
	<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">Missions Completed</div></font></b></td>
	</tr>
	</thead>
	<tbody>
EOT;
	while(($row = $missionresult->fetch_assoc())) {
		switch ($row['faction']) {
			case 0:
				$fac = "Neutral";
				break;
			case 1:
				$fac = "Rebel";
				break;
			case 2:
				$fac = "Imperial";
				break;
	}
	$firstname = str_replace("'","",$row['firstname']);
	$surname = str_replace("'","",$row['surname']);
	$fac = str_replace("'","",$fac);
	//$pvpkills = str_replace("'","",$row['pvpkills']);
	//$pvpdeaths = str_replace("'","",$row['pvpdeaths']);
	//$bounty = str_replace("'","",$row['bountykills']);
	//$pvekills = str_replace("'","",$row['pvekills']);
	//$pvedeaths = str_replace("'","",$row['pvedeaths']);
	$missions = str_replace("'","",$row['missionscompleted']);
//-display the result of the array
	printf("<tr>
	<td>%s</td>
	<td>%s</td>
	<td>%s</td>
	<td>%s</td>
	</tr>", $firstname, $surname, $fac, $missions);
	}
	echo <<<EOT
	</tbody>
	</table>
EOT;

//TABLE FOR BOUNTY
	echo <<<EOT
	<TD>
	<table border="1" cellspacing="5" cellpadding="5" width="100%" style="float: left;">
	<thead>
	<tr>
	<th colspan=5>Top 10 Bounty Kills</th>
	</tr>
	<tr>
	<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">First Name</div></font></b></td>
	<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">Sur Name</div></font></b></td>
	<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">Faction</div></font></b></td>
	<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">bountykills</div></font></b></td>
	</tr>
	</thead>
	<tbody>
EOT;
	while(($row = $bountyresult->fetch_assoc())) {
		switch ($row['faction']) {
			case 0:
				$fac = "Neutral";
				break;
			case 1:
				$fac = "Rebel";
				break;
			case 2:
				$fac = "Imperial";
				break;
	}
	$firstname = str_replace("'","",$row['firstname']);
	$surname = str_replace("'","",$row['surname']);
	$fac = str_replace("'","",$fac);
	//$pvpkills = str_replace("'","",$row['pvpkills']);
	//$pvpdeaths = str_replace("'","",$row['pvpdeaths']);
	$bounty = str_replace("'","",$row['bountykills']);
	//$pvekills = str_replace("'","",$row['pvekills']);
	//$pvedeaths = str_replace("'","",$row['pvedeaths']);
	//$missions = str_replace("'","",$row['missionscompleted']);
//-display the result of the array
	printf("<tr>
	<td>%s</td>
	<td>%s</td>
	<td>%s</td>
	<td>%s</td>
	</tr>", $firstname, $surname, $fac, $bounty);
	}
	echo <<<EOT
	</tbody>
	</table>
	</TD>
	</TR>
EOT;

//TABLE FOR ALL
echo <<<EOT
<TR>
<TD colspan="4">
<table border="1" cellspacing="5" cellpadding="5" width="100%">
<thead>
<tr>
<th colspan=9>ALL Players</th>
</tr>
<tr>
<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">First Name</div></font></b></td>
<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">Sur Name</div></font></b></td>
<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">Faction</div></font></b></td>
<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">PvP Kills</div></font></b></td>
<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">PvP Deaths</div></font></b></td>
<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">bountykills</div></font></b></td>
<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">PvE Kills</div></font></b></td>
<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">PvE Deaths</div></font></b></td>
<td style="background-color:#0E606F;"><b><font face="Arial, Helvetica, sans-serif"><div style="Color:white">Missions Completed</div></font></b></td>
</tr>
</thead>
<tbody>
EOT;
while(($row = $allResult->fetch_assoc())) {
	switch ($row['faction']) {
		case 0:
			$fac = "Neutral";
			break;
		case 1:
			$fac = "Rebel";
			break;
		case 2:
			$fac = "Imperial";
			break;
}
$firstname = str_replace("'","",$row['firstname']);
$surname = str_replace("'","",$row['surname']);
$fac = str_replace("'","",$fac);
$pvpkills = str_replace("'","",$row['pvpkills']);
$pvpdeaths = str_replace("'","",$row['pvpdeaths']);
$bounty = str_replace("'","",$row['bountykills']);
$pvekills = str_replace("'","",$row['pvekills']);
$pvedeaths = str_replace("'","",$row['pvedeaths']);
$missions = str_replace("'","",$row['missionscompleted']);
//-display the result of the array
printf("<tr>
<td>%s</td>
<td>%s</td>
<td>%s</td>
<td>%s</td>
<td>%s</td>
<td>%s</td>
<td>%s</td>
<td>%s</td>
<td>%s</td>
</tr>", $firstname, $surname, $fac, $pvpkills, $pvpdeaths, $bounty, $pvekills, $pvedeaths, $missions);
}
echo <<<EOT
</tbody>
</table>
</TD>
</TR>
</table>
EOT;
?>
