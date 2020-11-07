<div class="texte">
        <h1>Trägront</h1>
        <p style="font-style: italic;">L’innovation se met au vert</p>
</div>
<div class="texte">
        <p>Dans cette société de surconsommation, nous pensons qu’il est nécessaire de changer notre vision de l’innovation. A chaque étape de conception et d’industrialisation, le développement durable est la priorité numéro un.  Nos meubles verts s’ouvrent, au même titre qu’un lave-linge, un téléviseur… c’est ce que les Français souhaitent pour leurs meubles. 60% des Français pensent que l’innovation dans l’ameublement doit et peut leur faciliter le quotidien.</p>
        <p>Envie de changer votre intérieur ? Envie de technologie ? Tout en respectant l'environnement ? Laissez-vous séduire par notre gamme de meubles connectés. Trägront c'est l'esprit nordique qui saura raviver votre maison.</p>
</div>

<div class="grid-container-destination">
{foreach from=$products item=product}
    <div id="grid-item-destination1">
            <div class="grid-content-destination">
                <a href="index.php?page=produit"><figure><img id="image1" src="{$product.image}" alt="{$product.img_description} style="width:100%;" /></figure>
                    <div class="grid-destination">
                        <div class="grid-destination">
                            <div class="item1">{$product.name}</div>
                            <div class="item2">Au prix de {$basket.quantity} €</div>
                        </div> 
                    </div>
                </a>
            </div>
    </div>
{/foreach}
</div>
<div>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
      <a id="button"></a>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="web/js/main.js"></script>
<!-- Bouton -->
<script src="web/js/bouton.js"></script>
