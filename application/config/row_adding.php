<?php

	


class SqlDummy {
	const TABLE = 'clusters';
	const USERNAME = 'root';
	const PASSWORD = '12345678';
	const DSN = 'mysql:host=localhost;dbname=Test;charset=utf8';
	const NUM_OF_RECORDS = 50 ;
	// const $COLUMNS = [
	// 	'email' => 'VARCHAR(127) DEFAULT \'\'',
	// 	'username' => 'VARCHAR(32) DEFAULT \'\'',

	// ];
	public static $COLUMNS = array(
		'email' => 'VARCHAR(127) DEFAULT \'\'', 
		'username' => 'VARCHAR(32) DEFAULT \'\'',
		);

	// public static $keys = array_keys($COLUMNS, '\'\'');
	// for ($i=0 ; $i < NUM_OF_RECORDS; $i++){
	// 	echo $keys[$i] . ' ' . $COLUMNS[$keys[$i]] . "\n";
	// }

	
	

	public function isTableExists(){
		try{
			$dbh = new PDO(self::DSN, self::USERNAME, self::PASSWORD);
			$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

			$exists = $dbh->query(sprintf('SHOW TABLES LIKE \'%s\'', self::TABLE))->rowCount() > 0;
			$dbh = null;
		}catch(PDOException $e){
			die($e->getMessage() . PHP_EOL);
		}
		return $exists;
	}

	public function createTable(){
		try {
			$dbh = new PDO(self::DSN, self::USERNAME, self::PASSWORD);
			$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

			$sql = 'CREATE TABLE ' . self::TABLE . '('
				 . 'id INT(10) NOT NULL AUTO_INCREMENT,';
			foreach (self::$COLUMNS as $col => $meta) {
				$sql .= $col . ' ' . $meta . ',';
			}
			$sql .= 'PRIMARY KEY(id)'
				. ') ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci';
			$dbh->exec($sql);

			$dbh = null;
		} catch(PDOException $e) {
			die($e->getMessage() . PHP_EOL);
		}
	}

	public function insertRecords() {
		try {
			$dbh = new PDO(self::DSN, self::USERNAME, self::PASSWORD);
			$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

			$dbh->beginTransaction();
			
			for ($i = 14715, $count = 1; $i <= self::NUM_OF_RECORDS+14715; $i++, $count++) {
				$values = [];	
				$values_params = [];
				$clustering_option_id = 10;

				// foreach (self::$COLUMNS as $col => $meta) {
				// 	$col["email"] = "@gmail.com";
				// 	$values[] = $col . $i;
				// 	$values_params[] = '?';
				// }
				$clusters = 1; 
				if ($count > 10 && $count <= 20){
					$clusters = 2;
				} else
				if ($count > 20 && $count <= 30){
					$clusters = 3;
				} else 
				if ($count > 30 && $count <= 40){
					$clusters = 4;
				} else
				if ($count > 40 && $count <= 50){
					$clusters = 5;
				}

				//$chapter_id = 201;
				//$role = 2 ;
				//$contest_id = 901;
				$user_id = $i;
				//$email = "user" . $i . "@gmail.com";
				$username = "user" . $count;
				$sql = sprintf("INSERT INTO clusters (id, clustering_option_id, username, clusters) VALUES('$user_id', '$clustering_option_id', '$username', '$clusters')");
				$stmt = $dbh->prepare($sql);
				$stmt->execute($values);
			}

			$dbh->commit();

			$dbh = null;
		} catch(PDOException $e) {
			die($e->getMessage() . PHP_EOL);
		}
	}

}

$sql_dummy = new SqlDummy();
if (!$sql_dummy->isTableExists()) {
	printf('Table \'%s\' not exists, creating...' . PHP_EOL, SqlDummy::TABLE);
	$sql_dummy->createTable();
}

printf('Inserting %d records...' . PHP_EOL, SqlDummy::NUM_OF_RECORDS);
$sql_dummy->insertRecords();

echo 'Done!' . PHP_EOL;
?>