<?php

class ControleurInfosCategories {

    public function __construct() { 
    }

    public function afficher($libelleCategorie) {
        VariablesGlobales::$libelleCategorie = $libelleCategorie;//On peut s'en passer grace à la jointure mais facilite la lecture du code dans la vue v_infoscategories
        VariablesGlobales::$lesInfosCategories = GestionDuSite::getLesInfosCategoriesByCategorie($libelleCategorie);
        require Chemins::VUES . 'v_infoscategories.inc.php';        
    }

}

?>