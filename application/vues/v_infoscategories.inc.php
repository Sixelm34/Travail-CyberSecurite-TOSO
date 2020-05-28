<!-- corps de la page -->
			<section id="main" class="wrapper">
				<?php

    			foreach (VariablesGlobales::$lesInfosCategories as $uneInfo) {
    			?>
					<div class="inner">
						<div class="projets">
							<section>
								<div class="contentprojet" id="projetsid">
									<h3 class="show-on-scroll"><?php echo $uneInfo->nom;?></h3>
									<p class="show-on-scroll"><?php echo $uneInfo->description;?></p>
									<img class="show-on-scroll" src="<?php echo Chemins::IMAGES_PRODUITS."/".VariablesGlobales::$libelleCategorie."/".$uneInfo->image;?>" alt="photo" />
								</div>
							</section>
					</div>
				<?php
      			  }
    			?>
			</section>