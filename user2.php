<html >

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search</title>
    <link rel="stylesheet" type="text/css" href="./user2.css"></head>
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
  </div>
    </body>
    </html>

<?php


if (isset($_POST['submit'])) {
    $searchValue = $_POST['search'];
    $con = new mysqli("localhost", "root", "", "test");
    if ($con->connect_error) {
        echo "connection Failed: " . $con->connect_error;
    } else {
        $sql = "SELECT name,age,start_date,end_date,address FROM quarantine WHERE pincode LIKE '%$searchValue%'";

        $result = $con->query($sql);
        echo '<table class="someclass">';

echo "<tr>

<th>NAME</th>
<th>AGE</th>
<th>START DATE</th>
<th>END DATE</th>
<th>ADDRESS</th>


</tr>";

        while ($row = $result->fetch_assoc()) {
          echo "<tr>";

  echo "<td>" . $row['name'] . "</td>";
  echo "<td>" . $row['age'] . "</td>";
  echo "<td>" . $row['start_date'] . "</td>";
  echo "<td>" . $row['end_date'] . "</td>";
  echo "<td>" . $row['address'] . "</td>";

  echo "</tr>";

        }
        echo "</table>";
      }

  }
?>
