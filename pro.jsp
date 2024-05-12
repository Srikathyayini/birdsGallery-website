
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="icon" href="https://static.thenounproject.com/png/37118-200.png"/>
    <title>Birds Gallery</title>
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <header>
      <nav class="barnav">
        <span>BirdsGallery </span>
      <a href="home.html" ><b>HOME</b></a>
      <a href="gallery.jsp" ><b>GALLERY</b></a>
      <a href="details.jsp" ><b>BIRDS-DETAILS</b></a>
      <a href="services.html" ><b>Services</b></a>
     <button class="lbt">
      <%= session.getAttribute("username") %>
      <img style="width:30px;height:30px;border-radius:50%" src="profile-user.png">
     </button>
     <a href="logout.html" ><b>Logout</b></a>
      </nav>
    </header>
     <div class="splash">  
    <p style="color:rgb(151, 32, 32);padding-top: 2.5cm;padding-left: 2cm;letter-spacing: 1mm;font-size:xx-large;animation-duration: 3s;
    animation-name: slidein;"><b>BIRDS...</b></p>
    <p style="color:white;padding-bottom: 5.5cm;padding-left: 1cm;font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size:6mm;animation-duration: 3s;
    animation-name: slidein;"><b>Birds are a group of warm-blooded vertebrates constituting the class Aves , </br>characterised by feathers, toothless beaked jaws, the laying of hard-shelled eggs,</br> a high metabolic rate, a four-chambered heart, and a strong yet lightweight skeleton.</b></p>
   </div>
   <div class="explore">
    <div>
    <center><h2>Explore our Collection</h2></center></div>
    <div class="explorec">
   <div>
      <span>SongBirds</span><hr><p>From vibrant humming to melodic <br>warblers,our gallery showcases the <br>captivating diversity of songbirds.</p>
    </div>
    <div>
      <span>Birds of Prey</span><hr><p>marvel at the majestic grace and <br>power of hawks,eagles and falcons <br>in our collection.</p>
    </div>
    <div>
      <span>Waterfowl</span><hr><p>Discover the elegant beauty of ducks,<br>geese,and other waterfowl species in <br>their natural habitats.</p>
    </div>
  </div>
 </div>
 <div class="featured">
  <center><h2>Featured Birds</h2></center>
  <div class="fbirds">
    <div>
      <a href="https://www.istockphoto.com/search/2/image-film?phrase=blue+jay"> <img src="https://media.istockphoto.com/id/531312698/photo/blue-jay-in-tree.jpg?s=612x612&w=0&k=20&c=qyr6CjopMvpe-d-w2Pc6vFnk4ST1kDQVsXYOeB7KIdQ=" alt="Abstract bird 8">
      </a><br><span>Blue Jay</span><p>The vibrant blue feathers and <br>bold crest of the Blue Jay make <br>it a standout species in our gallery.</p>
    </div>
    <div>
      <a href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv9-PSzr0UleG8ZiUkzLj62xEYyixWy4wf8A&s"> <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv9-PSzr0UleG8ZiUkzLj62xEYyixWy4wf8A&s" alt="Abstract bird 8">
      </a><br><span>Hummingbird</span><p>Marvel at the incredible tiny,<br>iridesecent gems as they flit <br>from flower to flower.</p>
    </div>
    <div>
      <a href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv9-PSzr0UleG8ZiUkzLj62xEYyixWy4wf8A&s"> <img src="https://upload.wikimedia.org/wikipedia/commons/6/6d/Snowy_Owl_%28240866707%29.jpeg" alt="Abstract bird 8">
      </a><br><span>Snowy Owl</span><p>The majestic Snowy Owl,with its <br> striking white plumage,is a true symbol<br>of the Arctic region.</p>
    </div>
  </div>
 </div>
 <div style="background-image:url(https://png.pngtree.com/thumb_back/fh260/background/20230524/pngtree-hummingbird-hovering-between-red-flowers-image_2680651.jpg);height: 550px;background-size: cover;background-repeat: no-repeat;">
    <p style="padding-top: 2.5cm;padding-left: 2cm;letter-spacing: 1mm;font-size: x-large;" ><a href="https://simple.wikipedia.org/wiki/Hummingbird"><b>HUMMING BIRD</b></p></a>
    <p style="color:white;padding-top: 1cm;padding-left: 1cm;font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size:6mm;"><a href="https://simple.wikipedia.org/wiki/Hummingbird"><b>Hummingbirds have compact bodies with relatively long, bladelike wings having</br> anatomical structure enabling helicopter-like flight in any direction, including the</br> ability to hover. Particularly while hovering, the wing beats produce the humming</br> sounds, which function to alert other birds.</b></p></a>
  </div>
  <div class="birdspe">
    <center><h2>Bird Species</h2></center>
    <div class="birdsp1">
      <div>
        <span>WaterBirds</span><br>
        <p>Waterfowl,waders and seabirdsd that thrive in <br>aquatic environments.</p>
      </div>
      <div>
        <span>Raptors</span>
        <p>Birds of prey,including hawks,eagles,<br>falcons and owls known for their impressive hunting skills.</p>  
      </div></div>
      <div class="birdsp2">
        <div>
        <span>Passerines</span>
        <p>Perching birds,such as songbirds,that make up <br>the largest order of birds.</p>  
      </div>
      <div>
        <span>GameBirds</span>
        <p>Ground-dwelling brds,including chickens,<br>turkeys and quails that are hunted for sport or food.</p>
      </div>
    </div>
   </div>
   <div style="background-image:url(https://media.istockphoto.com/id/533996232/photo/gentoo-penguin-walking-in-snow-in-antarctica.jpg?s=612x612&w=0&k=20&c=j25ju5dSxchf7Kt1QGbze-j-WesHLbjn-O1ejphVT-A=);padding-top:50px;height: 550px;width: 100%;margin: auto;background-size: cover;background-repeat: no-repeat;">
    <p style="color:black;padding-top: 3.5cm;padding-left: 5.5cm;letter-spacing: 1mm;font-size:xx-large;" ><a href="https://en.wikipedia.org/wiki/Penguin"><b>PENGUIN</b></p></a>
    <p style="color:rgb(154, 7, 7);padding-left: 32cm;padding-top: 3px;font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size:6mm;"><b>Birds are a group of warm-blooded vertebrates constituting the class Aves , characterised by feathers, toothless beaked jaws, the laying of hard-shelled eggs, a high metabolic rate, a four-chambered heart, and a strong yet lightweight skeleton.They spend about half of their lives on land and the other half in the sea. </b></p>
   </div>  

</body>
<footer>
     <div class="footer" id="foot">
    <div class="row">
    <a href="https://www.facebook.com/groups/help.animals.birds/" class="_blank" target="_blank" rel="birds"><i class="fa fa-facebook"></i></a>
    <a href="https://www.instagram.com/animals_birds_welfare/?hl=en" target="_blank" rel="birds"><i class="fa fa-instagram"></i></a>
    <a href="#" target="_blank" rel="birds"><i class="fa fa-youtube"></i></a>
    <a href="#" target="_blank" rel="birds"><i class="fa fa-twitter"></i></a>
    <a href="#" target="_blank" rel="birds"><i class="fa fa-linkedin"></i></a>
  </div>
 
  <div class="row"> 
  <ul>
  <li><a href="contact .html" target="_blank" rel="birds">Contact us</a></li>
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