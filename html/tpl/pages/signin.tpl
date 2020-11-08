<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../web/css/style.css" />
    <link rel="stylesheet" href="../../web/css/style2.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Création de compte</title>
</head>

<body>
    <div data="../header.tpl8"></div>
    <div class="texte">
    </div>
    <div class="texte">
        <h1>Trägront</h1>
        <h2>"l'innovation se met au vert"</h2>
    </div>
    <div class="formulaire">
        <form name="reservation" action="../projet/connexion.php" method="POST" >
            <div class="row">
                    <div class="container">
                        <form >
                            <div class="row">
                                <div class="col-50">
                                            <label>Nom d'utilisateur</label>
                                            <input type="text" id="login" name="login" >
                                            <label>Mot de passe</label>
                                            <input type="text" id="password" name="password" >
                                        
                                        </div>
                                        </div>
                                    <input type="submit" value="Connexion" class="btn">
                                </div>
                        </form>
                    </div>
                </div>
            </div>
    </div>
    <div>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <a id="button"></a>
    </div>
    <div data="../footer.tpl8"></div>
     <!-- Header Footer-->
    <script src="../../web/js/includehtml.js"></script>
    <script>includeHTML()</script>
    <!-- Bouton -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="../../web/js/bouton.js"></script>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>

   
</body>

</html>
