<?php

require_once 'configs/chemins.class.php';
require_once Chemins::CONFIGS.'mysql_config.class.php';
require_once Chemins::MODELES. 'gestiondusite.class.php';
require_once Chemins::CONFIGS.'variables_globales.class.php';
require Chemins::VUES_PERMANENTES . 'v_entete.inc.php';

//require Chemins::VUES_PERMANENTES . 'v_menu_categories.inc.php';

require_once Chemins::CONTROLEURS.'controleur_categories.class.php';
$controleurCategories = new ControleurCategories();
$controleurCategories->afficher();

// Affectation d'une variable $cas en fonction du paramètre d'URL
// Avec opérateur conditionnel
$cas = (!isset($_REQUEST['cas'])) ? 'afficherAccueil' : $_REQUEST['cas'];

if (isset($_REQUEST['categorie'])) {
    $categorie = $_REQUEST['categorie'];
}//ou en une ligne avec opérateur conditionnel

// if (isset($_COOKIE['login_admin']))
//     $_SESSION['login_admin'] = $_COOKIE['login_admin'];

//Aiguillage vers le bon corps de page
switch ($cas) {
    case 'afficherAccueil': {
            require Chemins::VUES . 'v_accueil.inc.php';
            break;
        }
    case 'afficherInfosCategories': {
            require_once Chemins::CONTROLEURS.'controleur_infoscategories.class.php';
            $controleurInfosCategories = new ControleurInfosCategories();
            $controleurInfosCategories->afficher($categorie);            
            break;
        }
}

// case 'verifierConnexion': {
//         if (GestionDuSite::isAdminOK($_POST['login'], $_POST['passe']))
//         {
//             $_SESSION['login_admin'] = $_POST['login'];

//             if (isset($_POST['connexion_auto']))
//                 setcookie('login_admin', $_POST['login'], time() + 7*24*3600, null, null, false, true);
//             // Le cookie sera valable dans ce cas 1 semaine (7 jours)

//             require Chemins::VUES_ADMIN . 'v_index_admin.inc.php';
//         }
//         else
//             require Chemins::VUES_ADMIN . 'v_acces_interdit.inc.php';
//         break;
//     }

// case 'afficherIndexAdmin': {
//         if (isset($_SESSION['login_admin']))
//             require Chemins::VUES_ADMIN . 'v_index_admin.inc.php';
//         else
//             require Chemins::VUES_ADMIN . 'v_connexion.inc.php';
//         break;
//     }

// case 'seDeconnecter': {
//         // Suppression des variables de session et de la session
//         $_SESSION = array();
//         session_destroy();
//         header("Location:index.php");
//         break;
//         setcookie('login_admin', ''); //suppression du cookie en vidant simplement la chaîne
//     }

// pied de page
require Chemins::VUES_PERMANENTES . 'v_pied.inc.php';
?>