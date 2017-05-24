<?php
  include("dbconnect.php");
  include("models/models.php");

  $type = null;

  if(isset($_GET['beer_type'])){
    $type = $_GET['beer_type'];
  }

  $beerTypes = new BeerTypes();
  $beerTypesArray = $beerTypes->getAll($mysqli);

  $beers = new Beers();
  $beersArray = $beers->getAll($mysqli, $type);
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Beer Reviews</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/shop-homepage.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<?php include("navigation.php");?>

<!-- Page Content -->
<div class="container">

    <div class="row">

        <div class="col-md-3">
            <p class="lead">Types</p>
            <div class="list-group">
              <a href="index.php" class="list-group-item">All</a>
              <?php
                foreach($beerTypesArray as $id => $beerType){
              ?>
                <a href="index.php?beer_type=<?php echo $id;?>" class="list-group-item"><?php echo $beerType["name"]?></a>

              <?php
                }
              ?>
            </div>
        </div>
