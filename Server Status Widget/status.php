<center><?php
header('Content-type: text/html');
header('Access-Control-Allow-Origin: *');
function getStatus($ipAdd,$server){
		try{
		$address = gethostbyname($ipAdd);
		$socket = socket_create(AF_INET, SOCK_STREAM, SOL_TCP);
		socket_set_option($socket,SOL_SOCKET, SO_RCVTIMEO, array("sec"=>2, "usec"=>0));
		$result = socket_connect($socket, $address, "44455");
		if($result != null){
				$tmp = $out = '';
			
			while ($out = socket_read($socket, 2048)) {
				$tmp .= $out;
			}
			socket_close($socket);
			libxml_use_internal_errors(true);
				$data = simplexml_load_string($tmp);
				if (!$data) {
					echo '<div><p>YOUR SERVER NAME GOES HERE - '.$server.'</p><p style="color:red;">Server is Down</p></div>';
				} else {
					$seconds = intval($data->uptime);
					$minutes = floor($seconds / 60);
					$hours = floor($minutes / 60);
					$days = floor($hours / 24);
					$seconds = $seconds % 60;
					$minutes = $minutes % 60;
					$hours = $hours % 24;
					echo '<div id="'.$server.'"><p><b>YOUR SERVER NAME GOES HERE - '.$server.'</b><br><a style ="color:green;">Server is Online</a><br>' . $data->users->connected . '/' . $data->users->cap . ' Currently online.<br>' . $data->users->
					deleted . ' characters have been deleted.<br>' . $data->users->total . ' Logins since last restart.<br>Highest Population: ' . $data->users->max . '<br>Uptime: ' .$days.'d:'.$hours.'h:'.$minutes.'m:'.$seconds .
					's</p></div>';
				}
			}else{
					echo '<div><p>YOUR SERVER NAME GOES HERE - '.$server.'</p><p style="color:red;">Server is Down</p></div>';
			}
		}catch(Exception $e) {
			echo '<div><p>YOUR SERVER NAME GOES HERE - '.$server.'</p><p style="color:red;">Unknown expection caught '.$e.'</p></div>';
		}
	}
getStatus("YOUR_SERVER_IP_GOES_HERE","Live");
?></center>
