let xhr = new XMLHttpRequest();
let doc;
xhr.onreadystatechange = function () {
  if (this.readyState == 4 && this.status == 200) {
    let parser = new DOMParser();
    doc = parser.parseFromString(this.responseText, "text/xml");

    Array.from(doc.querySelectorAll("song")).forEach(e => {
      let songsArr = Array.from(document.getElementById("songs"));
      let title = e.querySelector("title").textContent;
      let songs = document.getElementById("songs");
      songs.innerHTML += `
            <input hidden type="radio" id="${title.toLocaleLowerCase()}" name="song" value="${title}">
            <label for="${title.toLocaleLowerCase()}">${title}</label><br>`;
    });

    Array.from(document.getElementById("songs"))[0].checked = true; // Check the first option
    document.getElementsByTagName("label")[0].classList.add("selected");
    document.getElementById("song-title").innerHTML =
      doc.children[0].querySelector("song title").textContent;
    document.getElementById("lyrics").innerHTML +=
      doc.children[0].querySelector("song lyrics").textContent; // Fill the lyrics of the first song

    document.getElementById("songs").onchange = () => {
      let songsOptions = Array.from(document.getElementById("songs"));
      let songsXML = Array.from(doc.children[0].querySelectorAll("song"));
      checkedSong = songsOptions.filter(e => e.checked)[0].value;
      let song = songsXML.filter(
        e => e.querySelector("title").textContent === checkedSong
      )[0];
      let lyrics = song.querySelector("lyrics").textContent;
      console.log(checkedSong);
      document.querySelector;
      Array.from(document.querySelectorAll("label")).forEach(e =>
        e.classList.remove("selected")
      );
      document
        .querySelector(`[for=\"${checkedSong.toLocaleLowerCase()}\"]`)
        .classList.add("selected");
      let title = song.querySelector("title").textContent;
      document.getElementById(
        "lyrics"
      ).innerHTML = `<h1 id="song-title">${title}</h1>\n${lyrics}`;
    };
  }
};
xhr.open("GET", "data.xml", true);
xhr.send();
