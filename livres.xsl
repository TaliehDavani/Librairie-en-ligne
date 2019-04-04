<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="catalog">

<html>
  <link rel="stylesheet" type="text/css" href="livres.css"/>
<head>
</head>
<body>
 <header>
  <h1 align="left" >librairie en ligne</h1>
</header>
<ul class="topnav">
  <li><a class="active" href="#home">ACCUEIL</a></li>
  <li><a href="#news">LIVRES</a></li>
  <li><a href="#contact">À PROPOS</a></li>
  <li class="right"><a href="#about">CONTACTEZ-NOUS</a></li>
</ul>
<section>
 
<article>
<h1>Tableau</h1>
<table id="customers">
 <thead>
 <tr>
 <th>No. d'inventaire</th>
 <th>Auteur</th>
 <th>Date de publication</th>
 <th>Prix</th>
 <th>Description</th>
  <th>title</th>
 </tr>
 </thead>
 <xsl:apply-templates/>
 </table>
</article>
 <nav >
 <h1>Liens utilies</h1><br/>

    <ul  class="rightnav" >
      <img src="images/book6.png"  style="width:30px"></img><li><a href="#">Lien 1</a></li><br/><br/>
      <img src="images/book6.png"  style="width:30px"></img><li><a href="#">Lien 2</a></li><br/><br/>
      <img src="images/book6.png"  style="width:30px"></img><li><a href="#">Lien 3</a></li><br/><br/>
    </ul>
	<form action="/action_page.php">
	 <label for="site-search">Rechercher:</label>
<input type="search" id="border" name="q" placeholder="Rechercher"/>
  <input type="submit" class="button"/>
</form>
 </nav>
 
</section>
<footer>
  <p>COPYRIGHT TALIEH DAVANI - TOUS DROITS RÉSERVÉS</p>
</footer>
</body>
</html>
</xsl:template>


<xsl:template match="book">
<tr>
 <td><xsl:value-of select="@id"/></td>
 <td><xsl:value-of select="author"/></td>
 <td><xsl:value-of select="publish_date"/></td>
 <td><xsl:value-of select="price"/></td>
 <td><xsl:value-of select="description"/></td>
  <td><xsl:value-of select="title"/></td>

</tr>
</xsl:template>
</xsl:stylesheet>

