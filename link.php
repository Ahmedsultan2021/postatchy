<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="assets/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>


    <?php
    $sales = [
        "ahmed" => ["jan" => "20", "mars" => 54, "may" => 55],
        "ali" => ["jan" => "20", "mars" => 54, "may" => 55],
        "hassan" => ["jan" => "20", "mars" => 54, "may" => 55],
        "shahd1" => ["jan" => "20", "mars" => 54, "may" => 55],
        "shahd2" => ["jan" => "20", "mars" => 54, "may" => 55],
        "shahd3" => ["jan" => "20", "mars" => 54, "may" => 55],
        "shahd4" => ["jan" => "20", "mars" => 54, "may" => 55],
        "shahd5" => ["jan" => "20", "mars" => 54, "may" => 55],
        "shahd6" => ["jan" => "20", "mars" => 54, "may" => 55],
        "shahd7" => ["jan" => "20", "mars" => 54, "may" => 55],
        "shahd9" => ["jan" => "20", "mars" => 54, "may" => 55],
        "shahd11" => ["jan" => "20", "mars" => 54, "may" => 55],
    ];

    ?>


    <div class="container">
        <div class="row">
            <div class="col">



                <div class="table-responsive-sm">
                    <table class="table table-secondary">
                        <thead>
                            <tr>
                                <th scope="col">name</th>
                                <th scope="col">jan</th>
                                <th scope="col"> mars</th>
                                <th scope="col">feb</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            foreach ($sales as $name => $user_sales) {
                            ?>
                                <tr>
                                    <?php
                                    echo "<td>$name </td>";
                                    foreach ($user_sales as $mon => $salary) {
                                        echo "<td>$salary </td>";
                                    ?>
                                    <?php
                                    }
                                    ?>
                                </tr>
                            <?php
                            }
                            ?>
                        </tbody>
                    </table>
                </div>


            </div>
            <div class="col"></div>
        </div>
    </div>





    <script src="assets/dist/js/bootstrap.bundle.min.js"></script>


</body>

</html>