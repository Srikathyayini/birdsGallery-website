<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.0/dist/boxicons.js" integrity="sha512-Dm5UxqUSgNd93XG7eseoOrScyM1BVs65GrwmavP0D0DujOA8mjiBfyj71wmI2VQZKnnZQsSWWsxDKNiQIqk8sQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="https://static.thenounproject.com/png/37118-200.png"/>
    <title>birds details</title>
</head>
<style>
  body{
    background: linear-gradient();
    padding:0;
   }
   .barnav{
  background: black;
  
  overflow: hidden;
  display: flex;
  font-family:Arial, Helvetica, sans-serif;
}
.barnav a:hover{
  background: aquamarine;
 
  border-radius: 75%;
  -webkit-box-reflect: below 1px linear-gradient(transparent);
  box-shadow: 0 0 5px #03e914,0 0 15px #03e914,0 0 25px #03e914,0 0 100px #03e914;
  color:red;
}

.barnav a{
 float:right;
 color: rgb(56, 250, 56);
 text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 20px;
  cursor:pointer; 
}
.test{
 height: 55px;
 align-content: center;
  background-color:rgb(122, 112, 112) ;
  backdrop-filter: blur(50%);
  
}
.test a{
  color: white;
  font-size: 25px;
}
 h1 {
  font-size: 50px;
  padding: 0;
    background: linear-gradient(
        to bottom,white,black,brown,red);
    -webkit-background-clip: text;
    background-clip: text;
    -webkit-text-fill-color: transparent;
    
    background-size: 200% auto;
    animation: textShine 1s linear infinite;
}
@keyframes textShine {
    to{
      background-position: 200% center;
    }
}
table{  
  background: url(https://www.shutterstock.com/image-vector/colorful-silhouettes-flying-birds-vector-600nw-189817940.jpg) no-repeat;
  background-size: cover;
    border: 1.5px solid rgb(7, 7, 7);
    backdrop-filter: blur(30px);
  padding: 45px;
  box-shadow: white;
  font-size: 20px;
  color: black;
  font-family: Arial, Helvetica, sans-serif;
  width: 75%;
  text-align: center;
}
.footer.row{
    width:100%;
    margin: 1% 0%;
    padding: 0.6% 0%;
    color: grey;
    font-size:0.8mm;
}
.footer .row a {
    text-decoration: none;
    color: gray;
    transition: 0.5s;
  }
.footer{
    
    color:white;
    margin: 0px;
    padding: 5px;
    
    background-image: linear-gradient(to top,#535456 0%,#080808 100%);
    overflow: hidden;
}
.footer .row a:hover {
    color: #fff;
  }
   
  .footer .row ul {
    width: 100%;
    padding-left: 600px;
    padding-top: 25px;
  }
  
  .footer .row ul li {
    display: inline-block;
    margin: 0px 30px;
  }
  
  .footer .row a i {
    font-size: 2em;
    margin: 0px 30px;
    display: inline-block;
  }
  @media (max-width: 720px) {
    .footer {
      text-align: left;
      padding: 5%;
    }
    .footer .row ul li {
      display: block;
      margin: 10px 0px;
      text-align: center;
      
    }
    .footer .row a i {
      margin: 0% 13%;
      text-align: center;
    }
  }
 
  .fa {
     padding-left: 30px;
     font-size: 20px;
     width: 25px;
     text-align: center;

    }
     .fa:hover {
     opacity: 0.8;
    }
     .fa-facebook {
    padding-top: 50px;
     padding-left: 700px;
    background:transparent;
    
     }
  .fa-regular{
    background: white;
  
  }
  .lbt{
  width: 120px;
  height: 50px;
  background: transparent;
  border: 2px solid #fff;
  outline: none;
  border-radius: 6px;
  cursor: pointer;
  font-size: 1.1em;
  color: #fff;
  font-weight: 500;
  margin-left: 35px;
  transition: .5s;
}
  #text {
    text-decoration: none;
    color: rgb(233, 231, 231);
    transition: 0.5s;
   padding-left: 595px;
    padding-top: 25px;
    padding-bottom: 35px;
  }
  </style>
<body>
    <center>
      <div class="barnav">
        <a href="pro.jsp"><b>HOME</b></a>
        <a href="gallery.html" ><b>GALLERY</b></a>
       <button class="lbt">
        <%= session.getAttribute("username") %>
        <img style="width:30px;height:30px;border-radius:50%" src="profile-user.png">
       </button>
       <a href="logout.html" ><b>Logout</b></a>
      
      </div>
      <h1>BIRDS DETAILS</h1>
      <table border="3">
        <tr>
          <td colspan="3">Birds Name</td>
          <td colspan="2">Birds Details</td>
        </tr>
        <tr>
          <td colspan="3">Penguin </td>
          <td colspan="10">Penguins are some of the most adorable birds on the planet. While penguins are incapable of flight, they are exceptional swimmers. They have adapted well to their frigid habitats with waterproof feathers and a layer of blubber that provides insulation and warmth. They waddle on land but are incredibly agile in the water, where they catch fish and other prey.</td>
        </tr>
        <tr>
          <td colspan="3">Duck</td>
          <td colspan="10">Ducks, with their large bills and short necks, are known for wading in water and laying eggs on land. They are part of the Anatidae family and are commonly known as “waterfowl.”</td>
        </tr>
        <tr>
          <td colspan="3">Eagle</td>
          <td colspan="10">Eagles are among the largest birds in the avian kingdom. As formidable birds of prey, they belong to the Accipitridae family. Eagles have imposing, sharp beaks and can carry prey weighing 7-8 pounds.</td>
        </tr>
        <tr>
          <td colspan="3">Flamingo </td>
          <td colspan="10">Flamingos, from the Phoenicopteridae family, are striking wading birds with long, slender legs and a distinctive pinkish hue. There are four different species of flamingos scattered around the world.</td>
        </tr>
        <tr>
          <td colspan="3">Hummingbird </td>
          <td colspan="10">The hummingbird holds the title of the smallest bird, measuring between 7.5 to 13 cm. With 361 species worldwide, hummingbirds are brightly colored birds equipped with long, slender beaks designed for sipping nectar from flowers. </td>
        </tr>
        <tr>
          <td colspan="3">Cuckoo</td>
          <td colspan="10">The cuckoo is a large, greyish-brown bird from the Cuculidae family, celebrated for its singing prowess. It’s also notorious for its habit of laying eggs in the nests of other birds.</td>
        </tr>
        <tr>
          <td colspan="3">Crow</td>
          <td colspan="10">Crows, black medium-sized birds from the Corvidae family, are quite common in India. They’re easily identifiable by their distinctive “cawing” sound. Ravens and rooks are also part of this family.</td>
        </tr>
        <tr>
          <td colspan="3">Dove</td>
          <td colspan="10">Doves, stout-bodied birds in the Columbidae family, possess small, pointed beaks and short necks. Their diet primarily consists of seeds, nuts, and small insects.</td>
        </tr>
        <tr>
          <td colspan="3">Owls</td>
          <td colspan="10">Owls are mysterious and nocturnal birds that are famous for their hooting sounds.Their sizable eyes aid them in low-light vision, which enhances their prowess as skilled nocturnal hunters. Owls can rotate their heads almost 270 degrees, allowing them to spot prey without moving their bodies.</td>
        </tr>
        <tr>
          <td colspan="3">Peacock</td>
          <td colspan="10">Peacocks are famous for their extravagant and colorful plumage, especially the striking tail feathers, or “train.” They use their vibrant displays to attract mates.</td>
        </tr>
        <tr>
          <td colspan="3">Kingfisher</td>
          <td colspan="10">These vocal, colourful birds are renowned for their dramatic hunting techniques. Typically, the bird sits still, watching for movement from a favourite perch.</td>
        </tr>
        <tr>
          <td colspan="3">Sparrow</td>
          <td colspan="10">Sparrows have beautiful voices and their chirping and singing can be heard all over. Other unique characteristics are their smooth, round heads and rounded wings. Males have reddish feathers on their backs and females are brown and striped.</td>
        </tr> 
      </table>
      </center>
      <h3>Know More....</h3>
      <p>Indian National Bird is <b>Peacock</b></p>
      <p>WaterBirds are Herons,Cranes,Penguins</p>
        <h2>Test Your Knowledge on Birds...!!</h2>
      <div class="test">
        <a href="test.html"> Mock Test!!!</a></div>
</body>
<footer>
  <div class="footer" id="foot">
 <div class="row">
 <a href="#" class="_blank" target="_blank" rel="birds"><i class="fa fa-facebook"></i></a>
 <a href="#" target="_blank" rel="birds"><i class="fa fa-instagram"></i></a>
 <a href="#" target="_blank" rel="birds"><i class="fa fa-youtube"></i></a>
 <a href="#" target="_blank" rel="birds"><i class="fa fa-twitter"></i></a>
 <a href="#" target="_blank" rel="birds"><i class="fa fa-linkedin"></i></a>
</div>

<div class="row">
<ul>
<li><a href="contact.html" target="_blank" rel="birds">Contact us</a></li>
<li><a href="photograph.html" target="_blank" rel="birds">Photograph</a></li>
<li><a href="https://www.birdinhandmayford.co.uk/privacy-policy" target="_blank" rel="birds">Privacy Policy</a></li>
<li><a href="https://www.birdsimagestock.com/terms-and-conditions" target="_blank" rel="birds">Terms & Conditions</a></li>
</ul>
</div>

<div id="text">
<b>BIRDS GALLERY</b> Copyright © 2024 Birds Gallery - All rights reserved <br>
<center> Designed By: ME</center>
</div>
</div>
</footer>
</html>   
