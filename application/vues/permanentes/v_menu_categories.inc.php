<nav id="menu">
    <ul class="links">
        <?php
        //$lesCategories = GestionduSite::getLemenu();
        foreach (VariablesGlobales::$lesCategories as $uneCategorie)
        {
          ?>
           <li>
               <a href=index.php?cas=afficherInfosCategories&categorie=<?php echo $uneCategorie->libelle;?>><?php echo $uneCategorie->libelle;?></a>
           </li>
        <?php
        }
        ?>        
    </ul>
</nav>