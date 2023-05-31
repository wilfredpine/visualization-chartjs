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

    function count_student($program)
    {
        $con = $this->open_connection();
        return $con->query("SELECT count(*) as stud_count FROM stud_info WHERE Program = '" . $program . "'")->fetch();
    }

}


?>