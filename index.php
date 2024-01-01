<?php 
$koneksi = mysqli_connect("localhost","root","","malasngoding");

$tables = array();
$result = mysqli_query($koneksi, "SHOW TABLES");

while ($row = mysqli_fetch_row($result)) {
	$tables[] = $row[0];
}



$sqlScript = "";
foreach ($tables as $table) {    
	$result = mysqli_query($koneksi, "SHOW CREATE TABLE $table");
	$row = mysqli_fetch_row($result);
	$sqlScript .= "\n\n" . $row[1] . ";\n\n";
	
	$result = mysqli_query($koneksi, "SELECT * FROM $table");
	$columnCount = mysqli_num_fields($result);

	for ($i = 0; $i < $columnCount; $i ++) {
		while ($row = mysqli_fetch_row($result)) {
			$sqlScript .= "INSERT INTO $table VALUES(";
				for ($j = 0; $j < $columnCount; $j ++) {
					$row[$j] = $row[$j];

					if (isset($row[$j])) {
						$sqlScript .= '"' . $row[$j] . '"';
					} else {
						$sqlScript .= '""';
					}
					if ($j < ($columnCount - 1)) {
						$sqlScript .= ',';
					}
				}
				$sqlScript .= ");\n";
			}
		}

		$sqlScript .= "\n"; 
	}



	if(!empty($sqlScript))
	{    
		$backup_file_name ='nama_database' . '_backup_' . time() . '.sql';
		$fileHandler = fopen($backup_file_name, 'w+');
		$number_of_lines = fwrite($fileHandler, $sqlScript);
		fclose($fileHandler);     
		header('Content-Description: File Transfer');
		header('Content-Type: application/octet-stream');
		header('Content-Disposition: attachment; filename=' . basename($backup_file_name));
		header('Content-Transfer-Encoding: binary');
		header('Expires: 0');
		header('Cache-Control: must-revalidate');
		header('Pragma: public');
		header('Content-Length: ' . filesize($backup_file_name));
		ob_clean();
		flush();
		readfile($backup_file_name);
		exec('rm ' . $backup_file_name); 
	}


?>