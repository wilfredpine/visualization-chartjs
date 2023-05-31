<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chart JS in HTML</title>
</head>
<body>
    <h1>Dynamic Data Visualization using Chart JS , PHP, and MySQL </h1>
    <div>
        <canvas id="barChart" height="180" width="500"></canvas>
    </div>

    <script src="chart.js"></script>

</body>
</html>

<?php
    require_once('Database.php');
    $db = new Database();

    $labels = $db->view_programs();
?>

<!-- BARCHART -->
<script>
    var ctx = document.getElementById('barChart').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: [
                <?php
                    foreach($labels as $lab)
                    {
                        echo "'" . $lab['Program'] . "',";
                    }
                ?>
            ],
            datasets: [{
                label: 'Number of Students',
                data: [
                    <?php
                        foreach($labels as $lab)
                        {
                            //echo "'" . $lab['Program'] . "',";
                            $program = $lab['Program'];

                            $student_count = $db->count_student($program);
                    
                            echo $student_count['stud_count'] . ',';
                        }
                    ?>
                ],
                backgroundColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
</script>