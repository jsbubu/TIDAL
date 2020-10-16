'use strict'
function loadreserv() 
{
    //-------------------- Push de la date danns les input type date -----------//
    var depart = document.querySelector('#depart');
    var arrive = document.querySelector('#arrive');
    let day = new Date (Date.now());
    let day3= new Date(day.getTime()+(2*24*60*60*1000));
    depart.value = day.getFullYear().toString() + '-' + (day.getMonth() + 1).toString().padStart(2, 0) + 
    '-' + day.getDate().toString().padStart(2, 0);
    arrive.value = day3.getFullYear().toString() + '-' + (day3.getMonth() + 1).toString().padStart(2, 0) + 
    '-' + day3.getDate().toString().padStart(2, 0);
    // ---------------- Appel de la fonction FormPrix ------------------------//
    FormPrix();
    //---------- Mise à jour des prix lors d'une modification ------------------//
    document.getElementsByName("depart")[0].addEventListener('input', FormPrix);
    document.getElementsByName("arrive")[0].addEventListener('input', FormPrix );
    document.getElementsByName("petitdej")[0].addEventListener('input', FormPrix);
    document.getElementsByName("adulte")[0].addEventListener('input', FormPrix);
    document.getElementsByName("enfant")[0].addEventListener('input', FormPrix);
    document.getElementsByName("nbanimaux")[0].addEventListener('input', FormPrix);
}

function loadrecap()
{
    var infos_json = sessionStorage.getItem("LesInfos");
    var infos = JSON.parse(infos_json);
    var objet = localStorage.getItem("objet");
    var destination = JSON.parse(objet);

    if (infos.petitdej == 1)
    {
        infos.petitdej = "OUI";
    } else {
        infos.petitdej = "NON";
    }
    document.getElementById("destination").innerHTML = destination.villes[infos.idvoyage].name;
    document.getElementById("nom").innerHTML = infos.nom;
    document.getElementById("prenom").innerHTML = infos.prenom;
    document.getElementById("email").innerHTML = infos.mail;
    document.getElementById("adr").innerHTML = infos.adresse;
    document.getElementById("phone").innerHTML = infos.telephone;
    document.getElementById("city").innerHTML = infos.ville;
    document.getElementById("zip").innerHTML = infos.cp;
    document.getElementById("depart").innerHTML = infos.depart;
    document.getElementById("arrive").innerHTML = infos.arrive;
    document.getElementById("adulte").innerHTML = infos.adulte;
    document.getElementById("enfant").innerHTML = infos.enfant;
    document.getElementById("petitdej").innerHTML = infos.petitdej;
    document.getElementById("nbanimaux").innerHTML = infos.animaux;
    document.getElementById("plusdinfo").innerHTML = infos.renseignement;
    document.getElementById("prAdulte").innerHTML = infos.pradulte;
    document.getElementById("prEnfant").innerHTML = infos.prenfant;
    document.getElementById("prPetitdej").innerHTML = infos.prpetitdej;
    document.getElementById("prAnimaux").innerHTML = infos.pranimaux;
    document.getElementById("prTotal").innerHTML = infos.prtotal;

}

function FormPrix()
{   
        let prjour = destination.villes[sejour_id].prixJour;
        //-------------------- Définition nombre parent / enfant --------------------//
        let nbadulte = document.getElementById("adulte").value*1;
        let nbenfant = document.getElementById("enfant").value*1;
        //---------------Récupération des dates et calcul du nombre de jour -----------//
        let seconde_depart=Date.parse(document.reservation.depart.value);
        let seconde_retour=Date.parse(document.reservation.arrive.value);
        let jour=((seconde_retour-seconde_depart)/86400000)+1;
       
        //------------------------------ Calcul prix---------------------------------//
        let pradulte = document.getElementById("adulte").value*prjour*jour;
        let prenfant = document.getElementById("enfant").value*(prjour-(prjour/10)*4)*jour;
        let animaux = document.getElementById("nbanimaux").value*jour*10;
        let PrixPetitdej = document.getElementsByName("petitdej")[0].checked*12*jour*(nbadulte+nbenfant);
        let total = pradulte+prenfant+animaux+PrixPetitdej;
        //--------------------- Remplace dans la page HTML ----------------------------//
        document.getElementById("destination").innerHTML = destination.villes[sejour_id].name;
        if (isNaN(jour) || jour<0) {
            document.getElementById("prAdulte").innerHTML = "0 €";
            document.getElementById("prEnfant").innerHTML = "0 €";
            document.getElementById("prPetitdej").innerHTML = "0 €";
            document.getElementById("prAnimaux").innerHTML = "0 €";
            document.getElementById("prTotal").innerHTML = "0 €";
        } else {
            document.getElementById("prAdulte").innerHTML = pradulte + " €";
            document.getElementById("prEnfant").innerHTML = prenfant + " €";
            document.getElementById("prPetitdej").innerHTML = PrixPetitdej + " €";
            document.getElementById("prAnimaux").innerHTML = animaux + " €";
            document.getElementById("prTotal").innerHTML = total + " €";
        }

}


function données() 
{
    let today= Date.now();
    let jour_depart= new Date(document.reservation.depart.value);
    let jour_arrive= new Date(document.reservation.arrive.value);
    let jour_plus= new Date(jour_depart.getTime()+(1*24*60*60*1000));

    if (today > jour_depart)
    {
        alert("Erreur, la date de départ doit être supérieur à ce jour");
        return false;

    }
    if (jour_arrive < jour_depart)
    {
        alert("Erreur, la date d'arrivée doit être posterieur à celle du départ");
        return false;
    }
    if (jour_arrive >= jour_depart && jour_arrive <= jour_plus)
    {
        alert("Erreur, la date d'arrivée doit être supérieur de 3 jours à celle du départ");
        return false;
    }
    else 
    {
        
        //----------------------- Modification format date --------------------------------//
        let departure = new Date(document.reservation.depart.value);
        departure = (departure.getDate()+"/"+(departure.getMonth()+1)+"/"+departure.getFullYear())
        let retourture = new Date(document.reservation.arrive.value);
        retourture = (retourture.getDate()+"/"+(retourture.getMonth()+1)+"/"+retourture.getFullYear())
        //------------------------------- Création du JSON --------------------------------//
        var info = {
        nom : document.getElementById("nom").value, 
        prenom : document.getElementById("prenom").value,
        mail : document.getElementById("email").value,
        adresse : document.getElementById("adr").value,
        telephone : document.getElementById("phone").value,
        ville : document.getElementById("city").value,
        cp : document.getElementById("zip").value,
        depart : departure,
        arrive : retourture,
        adulte : document.getElementById("adulte").value,
        enfant : document.getElementById("enfant").value,
        petitdej : document.getElementsByName("petitdej")[0].checked,
        animaux : document.getElementById("nbanimaux").value,
        renseignement : document.getElementById("plusdinfo").value,
        pradulte : document.getElementById("prAdulte").innerHTML,
        prenfant : document.getElementById("prEnfant").innerHTML,
        prpetitdej : document.getElementById("prPetitdej").innerHTML,
        pranimaux : document.getElementById("prAnimaux").innerHTML,
        prtotal : document.getElementById("prTotal").innerHTML,
        idvoyage : new URLSearchParams(window.location.search).get("id"),
        }
    
        // -------------------------------- Linéarisation du JSON ---------------------------//
        var information = JSON.stringify(info);
        //---------------------------------- Stockage du JSON --------------------------------//
        sessionStorage.setItem("LesInfos",information);
        return true;
    }
}

function suppdonnés() 
{
    sessionStorage.removeItem("LesInfos"); 
    document.location.href="/index.html";
}
    

