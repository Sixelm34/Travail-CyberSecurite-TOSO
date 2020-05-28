<!DOCTYPE html>
<!-- TITRE ET MENUS -->
<html lang="fr">
	<head>
		<title>Connexion à l'administration</title>
		<meta http-equiv="Content-Language" content="fr">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <link rel="stylesheet" href="../../../public/styles/style.css" />
	</head>

	<body>
		<section>
			<div class="titre">Administration du site (Accès réservé)</div>
			<form method="post" action="index.php?cas=verifierConnexion">
				<fieldset>
				<legend>Identification</legend>
					<label for="login">Votre login :</label> <input type="text" name="login" id="login" /> <br/>
					<label for="passe">Votre mot de passe :</label><input type="password" name="passe" id="passe" /> <br/>
					<input type="checkbox" name="connexion_auto" id="connexion_auto" />
					<label for="connexion_auto" class="enligne"> Connexion automatique </label><br/>
					<input type="submit" value="Connexion" />
				</fieldset>
			</form>
		</section>
	</body>
	
</html>