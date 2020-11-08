$(function(){

    fetch("web/json/liste.json")
    .then(function(resp){
    return resp.json();
    })
    .then(function(result){
    data = result;
    var objet_json = JSON.stringify(data);
    localStorage.setItem("objet",objet_json);
    });

    var objet = localStorage.getItem("objet");
    var destination = JSON.parse(objet);
    var i = 1;
    for (const MyObj in destination.villes){
        var dest = destination.villes[MyObj].name
        $('.pays' + i).text(dest);
        var prix = destination.villes[MyObj].prixDepart;
        $('.prixDepart' + i).text("Pour " + prix + " €");
        var destimage = destination.villes[MyObj].image
        var x = document.getElementById("image" + i);
        x.setAttribute("src", destimage);
        temperature(destination.villes[MyObj].name, i);
        i++;
    }

});

function filtre(lieu){
    var objet = localStorage.getItem("objet");
    var destination = JSON.parse(objet);
    for (const MyObj in destination.villes){
        let div = document.getElementById("grid-item-destination1");
        /*if(getComputedStyle(div).display != "block"){
            div.style.display = "block";
        }*/
        if(lieu !== destination.villes[MyObj].filtre){
            div.style.display = "none";
        }
        if(lieu == 'Tout'){
            div.style.display = "block";
        }
    }
};

/* function filtreprix(){
    var objet = localStorage.getItem("objet");
    var destination = JSON.parse(objet);
    var tab = [];
    var i = 1;
    for (const MyObj in destination.villes){
        tab[i-1] = destination.villes[MyObj].prixDepart;
        console.log(tab[i-1]);
        i++;
    }
    tab.sort();

}; */
