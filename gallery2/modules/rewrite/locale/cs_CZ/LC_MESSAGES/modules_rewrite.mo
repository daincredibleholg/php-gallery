��    L      |  e   �      p     q     �     �  4   �  3   �  '        0     B  	   O     Y      o     �  #   �  *   �  +   �  /   +  '   [     �     �     �     �     �     �  %   �     	  {   '	     �	     �	  '   �	  4   �	    
  s   6  �   �     .  )   3     ]  I   l  �   �     �     �     �  /   �     �     �  q        w     �  +   �     �     �     �     �     �  �   �  	   �  �   �     <     K     Y     l  $   �     �     �     �  '   �          %  "   <  �   _     �     �               )  I   .  �  x     )  	   >     H  ,   e  :   �  +   �     �          '      7  0   X  "   �  "   �  !   �  +   �  F     3   d     �     �     �     �     �     �  *        ;  t   W     �     �  *   �  8     C  Q  i   �  r   �  
   r  @   }     �  U   �  �   &          2  *   C  ;   n     �  
   �  �   �     N  1   k  /   �  
   �     �     �     �  
   �  �        �  �   �     �     �     �     �      �     
   "      '   6   &   ^      �      �      �   �   �      f!     u!     �!     �!     �!  G   �!         4      <      &          D   /       -              J   '      K   1   +   6                ;             )   H             A   7                 E       (         #      I       G   C   !          :      5   >       .                 $      0   L                   ,              B       %      *   	   
   "   =   F   9       2   ?                @          3   8    404 File Not Found Active Additional Keywords An error occured while trying to save your settings: Apache mod_rewrite is not installed or not enabled. Apache mod_rewrite is working properly. Approved referers Bad keyword. Bad path: Block hotlinked items Can not read the .htaccess file. Cannot read the .htaccess file. Cannot write to the .htaccess file. Cannot write to the Gallery .htaccess file Cannot write to the embedded .htaccess file Check short style URLs for filesystem conflicts Checked %d items and found %d conflicts Checking item %d of %d Done Download Item Duplicate URL patterns. Embedded Setup Empty URL pattern. Enables short URLs using mod_rewrite. Error: 404 File Not Found For URL Rewrite to work in an embedded environment you need to set up an extra htaccess file to hold the mod_rewrite rules. Gallery Gallery .htaccess file Gallery can write to the .htaccess file Gallery can write to the embedded .htaccess version. Gallery tries to fetch a page from your server and most likely Gallery gets an unauthorized access error. In order to fix this you need to allow requests from the server IP. If you are paranoid you could narrow it down to requests to the gallery2/modules/rewrite/test directory. Gallery tries to test mod_rewrite in action. For this to work you need to edit each of these two files accordingly: Go to the <a href="%s">Gallery phpinfo page</a> and look for Loaded Modules. You should see mod_rewrite in the list if it's loaded. Help How can I check if mod_rewrite is loaded? Htaccess path: I know mod_rewrite is loaded, why is Gallery telling me it's not working? If you are the server admin make sure the Gallery directory has the proper AllowOverride rights. Gallery needs to be able to override FileInfo and Options. Put this at the end of your Apache configuration: Invalid directory. Invalid path. Item file name (eg, image.jpg) Item version to download (original/sized/thumb) Keywords Line 6: My Gallery is password protected using Apache mod_auth. I know mod_rewrite works, why doesnt Gallery detect this? No help available No keyword help available Path to an item (eg, /album/image.jpg.html) Processing... Public path: Rules Save Setup Short URLs are compiled out of predefined keywords. Modules may provide additional keywords. Keywords are escaped with % (eg: %itemId%). Show Item Some rules only apply if the referer (the site that linked to the item) is something other than Gallery itself. Hosts in the list below will be treated as friendly referers. Status: Active Status: Error Status: Not Active Successfully saved URL styles Successfully saved the configuration Test Test .htaccess Again Test Webserver Again Testing Embedded Gallery .htaccess file Testing Gallery .htaccess file Testing your Webserver The .htaccess file does not exist. This will go through all your Gallery items and check if the short style URL links to an existing file or directory on your webserver. Troubleshooting URL Pattern URL Rewrite URL Rewrite Administration View We are unable to properly test whether mod_rewrite is properly installed. Project-Id-Version: Gallery: Rewrite 1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2005-06-11 18:26+0200
PO-Revision-Date: 2005-06-11 21:03+0100
Last-Translator: Jan Korbel <jackc@teptin.net>
Language-Team: Czech <cs@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
 404 Soubor nenalezen Aktivovat Dodatečná klíčová slova Při ukládání nastavení došlo k chybě: Apache modul mod_rewrite není nainstalován nebo povolen. Apache modul mod_rewrite funguje správně. Schválené zdroje Špatné klíčové slovo. Špatná cesta: Blokovat rychlé odkazy položek Nelze přečíst soubor .htaccess pro embedding. Nelze přečíst soubor .htaccess. Nelze zapsat do souboru .htaccess. Nelze zapsat do souboru .htaccess Nelze zapsat soubor .htaccess pro embedding Zkontrolovat krátké URL z důvodů konfliktů v souborovém systému Zkontrolováno %d položek a nalezeno %d konfliktů Kontroluji položku %d z %d Hotovo Stáhnout položku Zdvojená URL schéma. Nastavení embedded Prázdná URL schéma. Aktivuje krátké URL pomocí mod_rewrite. Chyba: 404 Soubor nenalezen Pro fungující přepis URL v embedded prostředí je potřeba zvláštní htaccess soubor pro mod_rewrite pravidla. Galerie Soubor Galerie .htaccess Galerie může zapsat do souboru .htaccess Galerie může zapsat do souboru .htaccess pro embedding Galerie se snaží z Vašeho serveru stáhnout stránku a pravděpodobně dostává pouze chybu o neautorizovaném přístupu. Pro odstranění této chyby potřebujete povolit požadavky z IP adresy serveru. Pokud jste paranoidní, můžete povolení těchto požadavků zúžit na adresář gallery2/modules/rewrite/test. Galerie se pokusí otestovat mod_rewrite v akci. Pokud to má fungovat, musíte upravit tyto dva soubory: Jděte na stránku <a href="%s">Gallery phpinfo</a> a hledejte Loaded Modules. Měl by tam být modul mod_rewrite. Nápověda Jak mohu zkontrolovat, zda je Apache modul mod_rewrite aktivní? Cesta k htaccess: Vím, že je modul mod_rewrite aktivní, proč mi ale Galerie říká, že nefunguje? Pokud jste správce serveru, přesvědčte se zda má hlavní adresář Galerie správná AllowOverride práva. Galerie potřebuje aby mohla definovat vlastní FileInfo a Options. Na konec Vaší konfigurace Apache serveru vložte následující: Neplatný adresář. Neplatná cesta. Jméno souboru položky (např. image.jpg) Verze položky ke stáhnutí (původní/zmenšená/náhled) Klíčová slova Řádka 6: Moje Galerie používá Apache modul mod_auth pro zabezpečení heslem. Vím, že mod_rewrite funguje, tak proč ho Galerie nedetekuje? Nápověda není k dispozici Nápověda ke klíčovým slovům není dostupná Cesta k položce (např. /album/image.jpg.html) Pracuji... Veřejná cesta: Pravidla Uložit Nastavení Krátká URL se skládají z přednastavených klíčových slov. Moduly mohou poskytovat dodatečná klíčová slova. Klíčová slova jsou escapována znakem % (např.: %itemId%). Zobrazit položku Některá pravidla jsou aplikována pouze v případě, kdy zdrojem není Galerie sama (zdroj je stránka která ukazuje na položku). Počítače na seznamu níže budou považovány za přátelské zdroje. Stav: Aktivní Stav: Chyba Stav: Neaktivní Úspěšně uloženy styly URL Konfigurace úspěšně uložena Zkouška Otestovat .htaccess ještě jednou Otestovat webový server ještě jednou Testuji soubor .htaccess pro embedding Testuji soubor .htaccess Testuji Váš webový server Soubor .htaccess neexistuje. Tato kontrola projde všechny položky Galerie a zkontroluje zda krátké URL odkazují na existující adresář na Vašem webovém serveru. Hledání chyb URL schéma Přepis URL Správa přepisu URL Zobrazit Nelze zjistit, zda je Apache modul mod_rewrite správně nainstalován. 