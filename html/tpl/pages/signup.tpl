<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../css/style.css" />
    <link rel="stylesheet" href="../css/style2.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Création de compte</title>
</head>

<body>
    <div data="/html/header.html"></div>
    <div class="texte">
    </div>
    <div class="texte">
        <h1>Trägront</h1>
        <h2>"l'innovation se met au vert"</h2>
    </div>
    <div class="formulaire">
        <form name="reservation" action="../../controllers/action/connexion.php" method="POST" >
            <div class="row">
                <div class="col-75">
                    <div class="container">
                        <form >
                            <div class="row">
                                <div class="col-50">
                                    <div class="row">
                                        <div class="col-50"> <label>Nom</label>
                                            <input type="text" id="nom" name="nom"  placeholder="Monnet">
                                        </div>
                                        <div class="col-50"><label>Prénom</label>
                                            <input type="text" id="prenom" name="prenom"  placeholder="Jean">
                                        </div>
                                    </div>
                                    <div>
                                    <label> Email</label>
                                    <input type="email" id="email" name="email" 
                                        placeholder="gregory.morel@cpe.fr">
                                    </div>
                                    <label> Téléphone</label>
                                    <input type="tel" id="phone" name="phone" placeholder="0800801064">
                                    <div>
                                    <label > Adresse</label>
                                    <input type="text" id="adr" name="adresse" 
                                        placeholder="10 rue Jean-Monnet">
                                    </div>
                                    <div class="row">
                                        <div class="col-25">
                                            <label>Code Postal</label>
                                            <input type="text" id="zip" name="zip"  placeholder="69003">
                                        </div>
                                        <div class="col-25">
                                            <label> Ville</label>
                                            <input type="text" id="city" name="city"  placeholder="Lyon">
                                        </div>
                                        <div class="col-75">
                                            <label>Login</label>
                                            <input type="text" id="login" name="login" >
                
                                        </div>
                                        <div class="col-75">
                                            <label>Mot de passe</label>
                                            <input type="text" id="password" name="password" >
                                        </div>
                                                  
                                        </div>
                                        </div><div class="g-recaptcha" data-sitekey="6LeeRdcZAAAAAIiq7VdLYq38rU-99By-BL1cXo-A" required> 
                                        <input type="submit" value="Appuyer pour valider" class="btn">
                                    </div>
                                </div>
                                </div>
                            </div>
                            
                        </form>
                        <div>
                            
                           
                        
                    </div>
                </div>
               
            </div>
    </div>
    <div>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <a id="button"></a>
    </div>
    <div data="/html/footer.html"></div>
     <!-- Header Footer-->
    <script src="/js/includehtml.js"></script>
    <script>includeHTML()</script>
    <!-- Bouton -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="/js/bouton.js"></script>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>

   
</body>

</html>
