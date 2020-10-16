function temperature(ville, i){

    var apiKey = '4f7e6354af1ebfc0d5716ad9ef4cffd7';
    var baseUrl = 'http://api.openweathermap.org/data/2.5/weather?APPID=' + apiKey + '&q=' + ville;
    var params = {
        url: baseUrl,
        method: 'GET'
    };

        jQuery.ajax(params).done(function(response){
            var tempe = response.main.temp - 273.15;
            var res = tempe.toFixed(0);
            $('.temp-weather' + i).text(res + "°c");
        })
        .fail(function(){
            console.error('Erreur');
        });
};

$(function(){

    fetch("/json/liste.json")
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
    var i = 1;
    for (const MyObj in destination.villes){
        let div = document.getElementById("grid-item-destination" + i);
        if(getComputedStyle(div).display != "block"){
            div.style.display = "block";
        }
        if(lieu !== destination.villes[MyObj].filtre){
            div.style.display = "none";
        }
        if(lieu == 'Tout'){
            div.style.display = "block";
        }
        i++;
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