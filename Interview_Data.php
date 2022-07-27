<?php
$hostname = "localhost";
$username = "root";
$password = "";
$database = "interview_data";

$conn = mysqli_connect($hostname, $username, $password, $database);
$query = " SELECT username, name, Concat(street1,' ', street2,' ', city,' ', state,' ', zipcode) as address FROM Interview_Final1;";
$result1 = mysqli_query($conn, $query);
$query2= "SELECT Concat(street1,' ', street2,' ', city,' ', state,' ', zipcode) as address FROM Addresses";

//connection test
//if (!$conn) {
//    die("Connection failed: " . mysqli_connect_error());
//  }
// echo "Connected successfully";

?>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="styles.css">
</head>
<body>

    <h1>MagMutual Interview Project</h1>
    <table>
        <tr>
            <th>Username</th>
            <th>Name</th>
            <th>Address</th>
            
        </tr>
        <?php  while($rows =$result1->fetch_assoc()) { ?>
        <tr>
        
            <td><?php echo $rows['username'];?></td>
            <td><?php echo $rows['name'];?></td>
            <td><?php echo $rows['address'];?></td>
        </tr>
        <?php
                }
            ?>
    </table>

</body>

</html>