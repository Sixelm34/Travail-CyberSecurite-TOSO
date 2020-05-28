<?php

class ControleurCategories {

    public function __construct() { 
    }

    public function afficher() {
        VariablesGlobales::$lesCategories = GestionDuSite::getLesCategories();
        require Chemins::VUES_PERMANENTES . 'v_menu_categories.inc.php';        
    }

}

?>