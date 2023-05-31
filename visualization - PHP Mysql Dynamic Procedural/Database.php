<?php
class Database
{

    function open_connection()
    {
        return new PDO('mysql:host=localhost; dbname=student', 'root', '');
    }

    function view_programs()
    {
        $con = $this->open_connection();
        $query = "SELECT Program FROM stud_info GROUP BY Program";
        return $con->query($query)->fetchAll();
    }

}


?>