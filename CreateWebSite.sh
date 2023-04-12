# Autor: Programmieren für Kinder

echo "Schneller WebSite Ersteller"
echo "Autor: Programmieren für Kinder"
echo ""
echo "Der Oberordner des Projekts ist in dieser Datei änderbar(Standart: ~/Dokumente/PFK/)."

read -p "Wie soll die Website heißen(Dies ist der Titel und der Speicherort im Oberverzeichnis): " name

# Hier ist das Oberverzeichnis des Projekts
cd ~/Dokumente/PFK/

if [ -d "$name" ];then
    # Projekt existiert schon im Zielort
    echo "Projekt existiert schon im Zielordner!"
    echo "Erstellung wurde abgebrochen"
    exit 1
fi

# Ab hier wird das Projekt mit den wichtigsten Dateien einer WebSite geschrieben.
mkdir $name
cd $name
echo "<!-- HTML Document -->
<!DOCTYPE html>
<html>
	<head>
		<title>$name</title>
		<link rel=\"stylesheet\" href=\"style.css\">
		<script src=\"script.js\"></script>
	</head>
	<body>
		
	</body>
</html>" > index.html
echo "/* Javascript Document */
document.addEventListener(\"DOMContentLoaded\",function(e){
	
});" > script.js
echo "/* Style Document */
" > style.css

#Wenn du Visual Studio Code hast, dann aktiviere diesen Befehl welcher die App dann gleich im Projekt öffnet:
#code ./
