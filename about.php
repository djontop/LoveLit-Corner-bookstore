<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php @include 'header.php'; ?>

<section class="heading">
    <h3>about us</h3>
    <p> <a href="home.php">home</a> / about </p>
</section>

<section class="about">

    

    <div class="flex">

        <div class="content">
            <h3>Welcome to LoveLit Corner: Where Love and Literature Embrace</h3>
            <p>At LoveLit Corner, we believe in the transformative power of stories and the deep, enduring love that binds readers to the world of literature. Nestled in the heart of Pune, LoveLit Corner is not just a bookstore; it's a sanctuary for book lovers, a haven where the warmth of love meets the enchanting world of literature.</p>
            <a href="contact.php" class="btn">contact us</a>
        </div>

        <div class="image">
            <img src="data:image/jpeg;base64,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" alt="">
        </div>

    </div>


</section>

<section class="reviews" id="reviews">

    <h1 class="title">client's reviews</h1>

    <div class="box-container">

        <div class="box">
            <img src="images/profile.png" alt="">
            <p>Nice book.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>USER 1</h3>
        </div>

        <div class="box">
            <img src="images/profile.png" alt="">
            <p>Soon.....</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>USER 2</h3>
        </div>

        <div class="box">
            <img src="images/profile.png" alt="">
            <p>Soon.....</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>USER 3</h3>
        </div>

        

    </div>

</section>











<?php @include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>