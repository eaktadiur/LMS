<?php 
/* Include Datei repgen-const.inc for PHP Report Generator 
  Bauer, 22.1.2002 
   Version 0.45 
   Changed 15.4.2008 Version 0.45   
*/ 
 
/*   REPGEN constants in german
*/ 

////////////////////////////////////////////////////////////////////////// 
define("CREATE","       Erzeuge neue Liste           "); // button create 
define("SELECT","Waehle eine Liste zur Bearbeitung aus"); // button select 
define("DATABASE","Datenbank: "); 
define("HOST","Rechner: "); 
define("USER","Benutzer: "); 
define("PASS","Passwort: "); 
define("FIRST","wir benoetigen noch einige Daten, bitte geben Sie diese an:"); 
define("ERROR_CONNECT","Fehler bei Verbindung mit Datenbank. Kontrollieren Sie die angegebenen Werte!"); 
 
// used in repgen-select 
define ("CHANGE" , "Aendern");  // Constant for change button value 
define ("DELETE" , "Loeschen"); // Constant for delete Button value 
define ("COPY" , "Kopieren"); // Constant for copy Button value 
define ("COPYV" , "Kp von"); // Constant for copy-text 
define ("SEL_SELECT","Wenn sie eine gespeicherte Liste bearbeiten oder loeschen wollen, dann waehlen sie bitte unten aus."); 
define ("SEL_COLOR","(Gruen werden die Bloecke, orange die Funktionen und grau die Listen angezeigt.)"); 
                                           // table heads 
define ("SHORT" , "Kurzbezeichnung");      // Head of 1. col 
define ("LONG" , "Langbezeichnung");       // Head of 2. col 
define ("AUTHOR" , "Autor");               // Head od 3. col 
define ("CREATIONDATE" , "Datum der letzten Bearbeitung");    // Head of 4. col 
define ("DESCRIPT","Auswahl der Listen");   // Head of page 
define ("LOGOUT","Beenden des Programms");  // Logout of program 
define ("NEU","Erzeugen einer neuen Liste");  // Create new Report 
define ("NEUBLOCK","Erzeugen eines neuen Blocks");  // Create new Block 
define ("NEUFUNKT","Erzeugen einer neuen Funktion");  // Create new function 
// used in repgen-create 
define ("CREATE_BLOCK","Allgemeine Daten fuer einen Block"); // common data of block 
define ("ALTER_BLOCK","Allgemeine Daten fuer den Block "); // common data of block 
define ("ID_BLOCK", "ID-Nummer des Blocks");                  // Label of ID 
define ("CREATE_FUNCT","Allgemeine Daten fuer eine Funktion"); // common data of funct 
define ("ALTER_FUNCT","Allgemeine Daten fuer die Funktion "); // common data of funct 
define ("ID_FUNCT", "ID-Nummer der Funktion");                  // Label of ID 
 
define ("CREATE_HEAD","Allgemeine Daten fuer eine Liste"); // common data of report 
define ("ALTER_HEAD","Allgemeine Daten fuer die Liste "); // common data of report 
define ("ID" , "ID-Nummer der Liste");                  // Label of ID 
 
define ("DATUM" , "Creation Date");                     // Label of DAte 
define ("FUNKTION" , "Funktion");                     // Label of Function 
define ("PRINT_FORMAT" , "Format des Druckers");        // Label of Printer 
define ("REPORT_TYPE" , "Typ der Liste");              // Label of Report type 
define ("SQL" , "SQL-Statement zur Satzauswahl");         // Label of Paper-width 
define ("GROUP" , "Feldname des Feldes fuer Gruppenwechsel");         // Label of Group 
define ("GROUP_TYPE" , "Typ der Gruppe");              // Label of Group type 
define ("GROUP_ERROR" , "Fehler: Gruppentyp = 'Neue Seite bei Gruppenwechsel' und kein Gruppenfeld angegeben!");  // Error message of missing Group field 
define ("KEIN_PAGE", "Keine neue Seite bei Gruppenwechsel"); // Label of nopage-select 
define ("NEU_PAGE", "Neue Seite bei Gruppenwechsel"); // Label of newpage-select 
define ("TEST_SEL" , "Testen des SQL-Statements");         // Value of Test-SQL Statement-Button 
define ("PAGE_REC", "Seite pro Satz");                  // Label of report_type single 
define ("LINE_REC", "Zeile pro Satz");                  // Label of report_type class 
define ("GRID_REC", "Zeile pro Satz mit Rahmen");                  // Label of report_type classtable 
define ("BEAM_REC", "Zeile pro Satz mit Balken");                  // Label of report_type classbeam 
define ("BEAMGRID_REC", "Zeile pro Satz mit Balken und Rahmen");     // Label of report_type classgrid 
define ("SELECT_CR" , "Zurueck zur Listenauswahl ohne speichern");         // Value of Select-Button 
define ("SEITEN_STORE" , "Speichern und zurueck zur Listenauswahl");         // Value of Store-Button 
define ("SEITEN_TEST" , "Testen der Funktion");         // Value of Test-Button 
define ("SEITEN_AUFC" , "Weiter zur Seitendefinition String");         // Value of button seiten_aufc 
define ("SEITEN_AUFL" , "Weiter zur Seitendefinition Graphic");         // Value of button seiten_aufl 
define ("PHP_ERROR", "PHP-Fehler in Funktion: ");            // Error message of PHP-Error 
define ("PHP_OK", "PHP: Funktion ist fehlerfrei. Das Ergebnis lautet: ");           // Message 'ok' of function 
define ("ERR_FIELD", "Das Feld \$field kommt in der Funktion nicht vor.");           // Message missing $field 
define ("A4FORMAT1", "Papiergroesze bestimmen");              // Paperformat 
define ("ID_ERROR", "Die Listen-Kurzbezeichnung und die SQL-Select Anweisung duerfen nicht leer sein oder die Kurzbezeichnung wird schon verwendet!!!!"); // Error Message: ID missing 
define ("ID_ERROR_BLOCK", "Die Block-Kurzbezeichnung schon verwendet!!!!"); // Error Message: ID missing 
define ("ERROR_FUNC", "Der Funktionsname muss gleich dem Kurznamen sein:"); // Error Message: Functionname <> shortname 
define ("FUNC_ERKL", "Es muss eine Funktion angegeben werden, welche einen String als<BR>Ergebnis liefert. Der Funktionsname muss dem Kurznamen gleichen!<BR>Bitte testen Sie die Funktion!"); 
define ("NOTSTORED"," Die Angaben wurden NICHT gespeichert!"); // Error -> not stored 
define ("SQL_ERROR"," ist fehlerhaft");  // SQL Error message 
define ("SQL_ERROR1"," SQL Fehler: Der Befehl ist leer!");  // SQL Error message 
// used in repgen-test_sel 
define ("SQL_STATEMENT","Sie haben das folgende SQL-Statement eingegeben: "); 
define ("SQL_ERG","Die ersten 10 Ergebnis-Saetze sind: "); 
 
// used in repgen-seitec and repgen-seitel 
define ("ITEM_DEF","Definition eines neuen Items der Liste "); 
define ("ITEM_CHAR","fuer Zeichen ");
define ("ITEM_GRAPHICS","fuer Grafik ");  
define ("ITEM_LINE","fuer eine Linie ");
define ("ITEM_RECT","fuer ein Rechteck ");
define ("ITEM_IMG","fuer ein Bild "); 
define ("ALTERNATIV", " oder alternativ "); 
define ("ORDER", "Reihenfolge"); 
define ("NUMBER","Zeichenzahl"); 
define ("UND", "und"); 
define ("ALIGN", "Zentrierung"); 
define ("ELEMENT","Elementtyp"); 
define ("WERT", "Wert"); 
define ("WIDTH", "Breite in points"); 
define ("DBFELD","DB-Feld"); 
define ("DECODE","entschluesselt"); 
define ("ITEM_HEAD","Tabelle der schon gespeicherten Items "); 
define ("ENCRYPT","k"); 
define ("OPTIONAL","Optional"); 
define ("SUBSTRING","Teilstring"); 
define ("FROM","von"); 
define ("TO","bis"); 
define ("TOTAL","Nur benutzen,wenn Feld numerisch ist"); 
      //        Headers of the table columns 
define ("IT_TYP","Typ "); 
define ("IT_ART","Art "); 
define ("IT_FONT","Font "); 
define ("IT_FONT_SIZE","FontSize "); 
define ("IT_LEN","Zeichenzahl "); 
define ("IT_ORD","Reihenfolge"); 
define ("IT_X1","X "); 
define ("IT_X2","X2/Breite "); 
define ("IT_Y1","Y "); 
define ("IT_Y2","Y2/Hoehe "); 
define ("IT_WIDTH","Breite");
define ("IT_HEIGHT","Hoehe"); 
define ("IT_STRING","String/Feldname "); 
define ("IT_FILE","Dateiname ");
define ("IT_LINE","Liniendicke "); 
define ("IT_STORE","                 Item speichern                   "); 
define ("IT_BACK"  ,"         Zurueck zur Listenauswahl           "); 
define ("IT_DRUCK", "Anzeigen des Drucks");    // Button druck 
define ("BUTTON_LINE", "Erzeuge eine Linie");
define ("BUTTON_RECT", "Erzeuge ein Rechteck");
define ("BUTTON_IMG", "Erzeuge ein Bild");
define ("BUTTON_BACK", "       Zurueck zur Liste der Report Items            ");
define ("IT_HELP", "X1/Y1 und X2/Y2 bilden die Enden einer Linie. <BR> X1/Y1 und Breite/Hoehe sind die Abmessungen eines Rechtecks."); 
define ("ERROR_LEER","Geben Sie bitte einen Wert in X oder Zeichenzahl und Elementtyp ein!"); 
define ("ERROR_LEER_LINE","Geben Sie bitte Werte fuer X1/Y1 und X2/Y2 und Strichdicke an!");
define ("ERROR_LEER_IMAGE","Geben Sie bitte Werte fuer X1/Y1 und X2/Y2 und Strichdicke an!");
define ("ERROR_FILENAME","Geben Sie bitte Werte fuer X1/Y1 und X2/Y2 und Strichdicke an!");
define ("ERROR_FILE_EXISTS","Die Bilddatei existiert nicht: ");
define ("ERROR_ORDER","Reihenfolge etc. darf nur bei Art = Detail und keinem X-Wert eingegeben werden!"); 
define ("ERROR_CHAR_NUMBER","Ein Wert fuer die Zahl der Zeichen muss angegeben werden!");
define ("ERROR_XY","Geben Sie bitte fuer X und Y einen Wert ein!"); 
define ("ERROR_MIX","In Zeilen des Abschnitts Detail koennen Elemente mit X/Y - Werten und Reihenfolgenummern nicht gemischt werden!"); 
define ("ERROR_WERT","Kein Wert fuer Elementtyp 'String' angegeben!"); 
define ("ERROR_BIS","Fehler in Substring: Wert von Bis ist kleiner als Wert von Von:!"); 
define ("ERROR_TOTAL","Fehler bei Total: Total darf nur bei der Art 'DE' verwendet werden"); 
 
define ("BGCOLOR1", "#CCCCCC");   // Background1 of tables 
define ("BGCOLOR2", "#DDDDDD");   // Background2 of tables 
define ("BGCOLORH", "#D3DCE3");   // Background of Header of tables 
 
// used in repgen-del 
define ("BACK" , "Zurueck zur Listenauswahl(ohne Loeschen)");  // Constant for back button value 
define ("DEL_BACK" , "            L O E S C H E N           "); // Constant for delete Butteon value 
define("DEL_REALLY","Wollen Sie wirklich ");   
define("DEL_DELETE","loeschen?"); 
define("DEL_REPORT","die Liste "); 
define("DEL_BLOCK","den Block "); 
define("DEL_FUNC","die Funktion "); 
 
// used in repgen-druck1.php 
define("DRUCKEN","Anschauen der PDF-Datei");   // Value of Button in repgen-druck.php 
?>