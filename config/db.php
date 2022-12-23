<?php
    class db {
        private $host = 'localhost';
        private $dbName = 'inaya';
        private $username = 'root';
        private $password = '';
        public function conexion(){
            try{
                $PDO = new PDO(
                    "mysql:host=".$this->host."; dbname=".$this->dbName,
                    $this->username,
                    $this->password
                );
                return $PDO;
            } catch(PDOException $e){
                return $e->getMessage();
            }
        }
    }