if (location.protocol.startsWith("http")) {
  let xhr = new XMLHttpRequest();
  xhr.open("GET", "./assets/common/xml/gallery.xml");
  xhr.onreadystatechange = function () {
    // On obtient depuis le fichier XML src et caption
    let parser = new DOMParser();
    let doc = parser.parseFromString(this.responseText, "text/xml");
    let slideshowContainer = document.querySelector("#gallery div.slideshow-container");
    let images = doc.getElementsByTagName("image");
    for (let i = 0; i < images.length; i++) {
      let src = images[i].querySelector("src").textContent;
      let caption = images[i].querySelector("caption").textContent;
      slideshowContainer.innerHTML += `
                      <div class="mySlides fade">
                            <div class="numbertext">${src.match(/\d*/)[0]} / ${images.length}</div>
                            <img src="assets/common/img/gallery/${src}"/>
                            <div class="caption">${caption}</div>
                            </div>`;
    }

    slideshowContainer.innerHTML += `
                        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                        <a class="next" onclick="plusSlides(1)">&#10095;</a>`;

    // Initialiser la premiere image qui va être affiché
    var slideIndex = 1;
    showSlides(slideIndex);
  };

  xhr.send();

  // Pour sauter les images, on va l'utiliser pour les boutons suivante/précédente
  function plusSlides(n) {
    showSlides((slideIndex += n));
  }

  // Pour établir l'image
  function currentSlide(n) {
    showSlides((slideIndex = n));
  }

  function showSlides(n) {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    if (n > slides.length) {
      slideIndex = 1;
    }
    if (n < 1) {
      slideIndex = slides.length;
    }
    for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
    }
    slides[slideIndex - 1].style.display = "block";
  }

  document.addEventListener("keydown", ({ key }) => {
    if (key === "ArrowLeft") plusSlides(-1);
    else if (key === "ArrowRight") plusSlides(1);
  });
} else {
  $("#modal")[0].innerHTML = `<h3>ERREUR!</h3>
  <p>Vous utiliser un mauvais protocole: <b>(<i>${location.protocol}</i>)</b></p>
  <p>Veuillez utiliser un serveur comme wampserver pour lancer le site web.</p> <br />
  <a href="index.php">Acceuil</a>`;
  
  $("#modal").modal({
    escapeClose: false,
    clickClose: false,
    showClose: false,
  });
}
