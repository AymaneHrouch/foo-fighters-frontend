let xhr = new XMLHttpRequest();
let doc;
xhr.onreadystatechange = function () {
  if (this.readyState == 4 && this.status == 200) {
    let parser = new DOMParser();
    doc = parser.parseFromString(this.responseText, "text/xml");

    // Afficher la liste des chansons.
    Array.from(doc.querySelectorAll("song")).forEach(e => {
      let songsArr = Array.from(document.getElementById("songs"));
      let title = e.querySelector("title").textContent;
      let songs = document.getElementById("songs");
      songs.innerHTML += `
            <input hidden type="radio" id="${title.toLocaleLowerCase()}" name="song" value="${title}">
            <label for="${title.toLocaleLowerCase()}">${title}</label><br>`;
    });

    // Choisir la premiére option
    Array.from(document.getElementById("songs"))[0].checked = true;
    document.getElementsByTagName("label")[0].classList.add("selected");

    // Afficher les paroles de la premiére chanson
    document.getElementById("song-title").innerHTML =
      doc.children[0].querySelector("song title").textContent;
    document.getElementById("lyrics").innerHTML +=
      doc.children[0].querySelector("song lyrics").textContent;

    // Manipuler le changement de chanson
    document.getElementById("songs").onchange = () => {
      let songsOptions = Array.from(document.getElementById("songs"));
      let songsXML = Array.from(doc.children[0].querySelectorAll("song"));

      checkedSong = songsOptions.filter(e => e.checked)[0].value; // La nouvelle chanson

      // Obtenir la chansons depuit le fichier XML
      let song = songsXML.filter(
        e => e.querySelector("title").textContent === checkedSong
      )[0];

      // Les paroles
      let lyrics = song.querySelector("lyrics").textContent;

      // Supprimer la class selected de toutes les chansons (donc de la chanson précédente)
      Array.from(document.querySelectorAll("label")).forEach(e =>
        e.classList.remove("selected")
      );

      // Ajouter la class selected à la nouvelle chanson
      document
        .querySelector(`[for=\"${checkedSong.toLocaleLowerCase()}\"]`)
        .classList.add("selected");

      // Mise à jour des paroles
      let title = song.querySelector("title").textContent;

      document.getElementById(
        "lyrics"
      ).innerHTML = `<h1 id="song-title">${title}</h1>\n${lyrics}`;

      // Faire défiler au haut de la page.
      window.scrollBy(0, -document.body.scrollHeight);
    };
  }
};
xhr.open("GET", "assets/common/xml/lyrics.xml", true);
xhr.send();
