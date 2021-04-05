<html >

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search</title>
    <link rel="stylesheet" type="text/css" href="./user1.css"></head>
</head>

<body>
  <div class="searchbox">
  <center>
    <h1> Search Here </h1>
    <form action="" method="post">
        <input type="text" placeholder="Enter PINCODE" name="search">
        <button type="submit" name="submit">Search</button>
    </form>


    </center>
    </body>
    </html>

<?php


if (isset($_POST['submit'])) {
    $searchValue = $_POST['search'];
    $con = new mysqli("localhost", "root", "", "test");
    if ($con->connect_error) {
        echo "connection Failed: " . $con->connect_error;
    } else {
        $sql = "SELECT name,age,current_cond,address FROM patient WHERE pincode LIKE '%$searchValue%'";

        $result = $con->query($sql);
        echo '<table class="someclass">';
        echo "<tr>

        <th>NAME</th>
        <th>AGE</th>
        <th>CONDITION</th>
        <th>ADDRESS</th>


        </tr>";

        while ($row = $result->fetch_assoc()) {
          echo "<tr>";

          echo "<td>" . $row['name'] . "</td>";
          echo "<td>" . $row['age'] . "</td>";
          echo "<td>" . $row['current_cond'] . "</td>";
          echo "<td>" . $row['address'] . "</td>";

        echo "</tr>";

        }
        echo "</table>";
      }

  }
?>
