��    i      d  �   �       	  *   	  (   ,	  %   U	  �   {	    L
  
   j     u     �     �  D   �  �   �     �     �     �     �  "     	   &  	   0     :  |   L     �     �     �     �  U        ]  Y   |  2   �  
   	  �        �     �     �  a   �     %  �  =     �  '   �          %     8  �   Q            >   )  	   h  D  r  A   �     �  �        �     �     �     �     �               ,     8     I     Y     j  "   x      �  *   �  	   �     �              +  "   8     [     j  '   ~     �     �     �     �     �          &     6     ;     C  %   K  B   q  ?   �  -   �     "     5  -   J     x  	   ~  1   �  \   �  
        "     2     ;     L  �   f  $     $   B  I   g  �  �  ,   �  -   �  8   �  �   5  2        M!     Y!     j!     w!  D   �!  5  �!     #  	   #     #     ##  '   5#     ]#     i#     �#  ~   �#     $     '$     6$     E$  R   S$      �$  d   �$  4   ,%     a%  �   q%     "&  	   (&     2&  V   8&     �&  �  �&     i(  .   y(     �(     �(     �(  �   �(     �)     �)  B   �)      *  S  0*  G   �+     �+  �   �+     �,  
   �,     �,     �,     �,     -     -     /-     B-     U-  
   h-     s-  #   �-  )   �-  (   �-     �-     .     #.  (   B.  �   k.  #   V/     z/     �/  1   �/     �/     �/     �/     0     ,0     >0     Q0  
   e0     p0     w0  )   ~0  C   �0  D   �0  -   11     _1     o1  )   �1     �1     �1  E   �1  d   
2  
   o2     z2     �2     �2     �2  �   �2     �3  "   �3  I   �3             A      ,   S   ^       6   ?   /   0   2   R   T   _       ;   $   =              .   '             3       `   
   5   <   F                 	                      f   7          1   V   W       h   9   %      e   a   b   J                     :   D          C                        &   4       8      )   Y                   (         !          @   U   P   -          L          ]       Q       g      H   i   Z   d   "          G   I      *       >   B       E   c   X           N       \                         [      K       M   #       +      O    %sSummary%s was truncated for %sitem %d%s. %sTitle%s was truncated for %sitem %d%s. (Default to summary value if not set) <b>Note:</b> Before you import any data you should make sure your Gallery 1 is installed correctly by adding a photo through the Gallery 1 web interface.  Make sure you resolve any errors you see there first. Add the same <tt>.htaccess</tt> block in the Gallery1 albums directory if you also wish to redirect links to image files and album directories. Note that these redirects are not active until the G1 images are actually removed or moved. Omit the !-f line shown below to redirect anyway. Album Name Album Notes Album Title Albums to import: An album already exists with this name.  This album will be renamed. Any hidden albums or items will be imported with restricted view permissions. Activate the Hidden Items module before migration to import these as "hidden" which means they are invisible to guest users until accessed by the direct URL for those items. Base filename Blank Cancel Caption Character Encoding of Source Text: Check All Clear All Confirm Migration Copy all or part of an existing Gallery 1 installation into your Gallery 2.  It won't modify your Gallery 1 data in any way. Creating thumbnails Custom Field: Custom field: Custom fields Custom fields imported into item fields above will not be duplicated as custom fields Custom fields will be imported Custom fields will not be imported.  Activate Custom Fields module to enable this option. Default to same as summary if custom field not set Delete All Deleting map entries will cause old G1 URLs to produce HTTP Not Found errors instead of redirecting to G2 pages.  Delete all entries? Description Description: %s Destination: Do not create Gallery 2 custom fields for fields selected above for title, summary or description Download .htaccess file Edit or create a file called <tt>.htaccess</tt> in your Gallery1 directory and add the text shown below to the file. Remove G1 rewrite rules from an existing file. Redirects will also work in your Gallery2 directory if G2 is installed in the path where G1 used to be. However, if you also use the G2 URL Rewrite module then activate the G1 redirect rule in that module instead of using the block shown below. Encoding: %s Ensure the %s Apache module is enabled. Enter a custom field name Error importing %s Example: /var/www/albums G1 URL redirect. Use only if G2 is installed where G1 used to be and you have run a G1 import with the URL redirect option selected. Otherwise follow instructions in %sMigrate Site Admin%s. G1 path G1-&gt;G2 Mapping G1-&gt;G2 mappings will be recorded for use in URL Redirection Gallery 1 Gallery 2 has the following fields for all items and albums: title, summary text shown with thumbnails and description text shown in item or album view. G1 albums already have these three items (though the names of summary and description are reversed). G1 items have only a filename and caption. For items imported into G2: Gallery can redirect old Gallery1 URLs to the new Gallery2 pages. Hidden Items If G2 is installed in the path where G1 used to exist, you will need to remove the G1 file "gallery_remote2.php" file before you can use Gallery Remote to upload images to G2. Import %s now. Import Albums Import Complete Import Users Import custom fields Import from Gallery 1 Import more data Imported %s Importing Photos Importing Users Invert Selection Item captions Item fields will be imported from: Map entries deleted successfully Migrate your Gallery 1 albums to Gallery 2 Migration No albums imported. No available users No users imported. Normally Gallery will generate thumbnails the first time you look at them, then save them for subsequent views.  If you check this box, we'll create the thumbnails at migration time.  Migration will take longer but the first time you view an album will go much faster. Path to Gallery 1 albums directory Prepare Import Recently Used Paths Record G1-&gt;G2 mappings during import Select Select Albums and Users Select the albums to migrate Select the users to migrate Set description from: Set summary from: Set title from: Set: Source: Summary The path that you entered is invalid. These users are already in your gallery, and will not be imported: This album has an illegal name and will be renamed to <i>%s</i> This album's owner (%s) hasn't been imported. Thumbnail %d of %d Thumbnail generation Thumbnails will be generated during migration Title Title: %s To enable URL Redirection under Apache webserver: Top level albums and albums whose parents are not selected will be imported into this album: Truncated: URL Redirection Username Users to import: You did not enter a path. You don't have any Graphics Toolkit activated to handle JPEG images.  If you import now, you will not have any thumbnails.  Visit the %sModules%s page to activate a Graphics Toolkit. You must choose something to import! You must specify a custom field name Your Gallery 1 will be converted from this character encoding into UTF-8: Project-Id-Version: Gallery: Migration 1.0.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2005-02-05 17:54+0100
PO-Revision-Date: 2006-01-15 14:34+0100
Last-Translator: Jan Korbel <jackc@teptin.net>
Language-Team: Czech <cs@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
X-Poedit-Language: Czech
X-Poedit-Country: CZECH REPUBLIC
 Byl zkrácen %ssouhrn%s pro %spoložku %d%s. Byl zkrácen %stitulek%s pro %spoložku %d%s. (Pro výchozí nastavení bude použita hodnota souhrnu) <b>Poznámka:</b> Než začnete importovat data, měli byste se přesvědčit, že Galerie 1 funguje, nejlépe přidáním fotografie pomocí webového interface Galerie 1. Odstraňte všechny chyby, na které přitom narazíte. Pokud si přejete také přesměrovat obrázky a adresáře s alby, přidejte stejný blok <tt>.htaccess</tt> do adresáře s alby G1. Tato přesměrování nebudou aktivní, dokud neodstraníte nebo nepřesunete G1 obrázky. Vynechte řádek !-f zobrazený níže k přesměrování v každém případě. Jméno alba Poznámky k albu Titulek alba Alba k importu: Album s tímto jménem už existuje. Toto album bude přejmenováno. Všechny skryté alba a položky budou importovány s omezenými oprávněními. Před migrací aktivujte modul skrytých položek, který zajistí, že položky budou importovány jako "skryté". To znamená, že pro návštěvníky zůstanou skryté, dokud nezadají přímou URL adresu k těmto položkám. jména souboru prázdný Zrušit popisku (caption) Znakové kódování zdrojového textu: Vybrat vše Zrušit výběr všech Potvrdit migraci Zkopíruje všechna nebo některá data z existující Galerie verze 1 do Galerie 2. Tato akce nijak nezmění data Galerie 1. Vytváření náhledů Vlastní pole: Vlastní pole: Vlastní pole Vlastní pole importovaná do polí výše už nebudou nastavena jakovlastní pole Budou importována vlastní pole Vlastní pole nebudou importována. Pro zpřístupnění této funkce aktivujte modul Vlastní pole. Pokud nebude k dispozici použije se hodnota souhrnu Smazat všechny Výmaz položek mapování bude mít za následek, že staré URL z G1 budou produkovat chyby "HTTP Not Found" místo přesměrování na stránky G2. Smazat všechny položky? Popis Popis: %s Cíl: Nevytvářet vlastní pole Galerie 2 pro pole vybraná výše, titulek, souhrn a popis Stáhnout .htaccess soubor Upravte nebo vytvořte soubor <tt>.htaccess</tt> v adresáři G1 a přidejte do něj níže zobrazený text. Z případného existujícího souboru odstraňte pravidla pro přepis URL adres. Přesměrování bude fungovat také v adresáři G2, pokud je G2 nainstalovaná do adresáře, kde předtím byla G1. Pokud ale používáte G2 modul pro přepis URL, pak aktivujte příslušné pravidlo v tomto modulu a nepoužívejte nastavení níže. Kódování: %s Ujistěte se, že modul Apache %s je aktivní. Zadejte jméno vlastního pole Chyba importu %s Příklad: /var/www/albums Přesměrování URL adres G1. Použijte pouze pokud je G2 nainstalovaná tam kde byla G1 a spouštíte import z G1 s volbou přesměrování URL. Jinak následujte instrukce z %sMigrate Site Admin%s. Cesta G1 G1 --&gt; G2 mapování Pro přesměrování URL bude zaznamenáno G1 --&gt; G2 mapování Galerie verze 1 V Galerii verze 2 jsou k dispozici následující pole: titulek, souhrn (zobrazený u náhledů) a popis (zobrazený v hlavičče detailu). V Galerii verze 1 tyto tři pole mají pouze alba (i když souhrny a popisy jsou vyměněny) a další G1 položky mají pouze jména souborů a popisky. Pro tyto další položky importované do G2: Galerie může přesměrovat staré G1 URL adresy na nové G2 stránky. Skryté položky Pokud je G2 nainstalovaná do cesty, kde bývala G1, budete muset odebrat G1 soubor "gallery_remote2.php" předtím, než budete moci použít program 'Vzdálená Galerie' k uploadu obrázků do G2. Importovat %s nyní. Import alb Import kompletní Import uživatelů Import vlastních polí Import z Galerie verze 1 Importovat více dat Naimportováno: %s Import fotografií Import uživatelů Invertovat Popisky položek Pole položek budou importovány z: Položky mapování úspěšně vymazány Migrace alb z Galerie verze 1 do verze 2 Migrace Žádná alba nenaimportována. Žádní dostupní uživatelé Žádní uživatelé nebyli importováni Normálně Galerie vygeneruje náhledy při jejich prvním zobrazení a uloží je. Pokud ale zaškrtnete tuto volbu, náhledy budou vygenerovány při migraci. Migrace bude trvat déle, ale velmi se sníží doba prvního zobrazení. Cesta k adresáři s alby Galerie 1 Připravit import Nedávno použité cesty Během importu zaznamenat G1 --&gt; G2 mapování Vybrat Vyberte alba a uživatele Vyberte alba k migraci Vyberte uživatele k migraci Nastavit popis z: Nastavit souhrn z: Nastavit titulek z: Nastaveno: Zdroj: Souhrn Cesta, kterou jste zadali, není platná. Tito uživatelé už jsou ve Vaší Galerii a nebudou importováni: Toto album má nepovolené jméno a bude přejmenované na <i>%s</i> Vlastník tohoto alba (%s) nebyl importován. Náhled %d z %d Generování náhledů Náhledy budou vygenerovány při migraci Titulek Titulek: %s K zapnutí přesměrování URL na webovém serveru Apache je třeba: Top-level alba a alba, jejichž nadřazená alba nejsou vybrána, budou importována do tohoto alba: Zkráceno: Přesměrování URL Uživatelské jméno Uživatelé k importu: Nezadali jste cestu. Nemáte aktivovaný žádný grafický nástroj pro obrázky JPEG. Pokud nyní provedete import, nebudete mít žádné náhledy. Navštivte stránku %sModuly%s a aktivujte grafický nástroj. Musíte zadat něco k importu! Musíte zadat vlastní jméno pole Vaše data z G1 budou převedena z následující znakové sady do UTF-8: 