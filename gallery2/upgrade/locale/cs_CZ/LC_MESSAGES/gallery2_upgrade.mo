��    s      �  �   L      �	     �	     �	     �	     
  d   -
     �
     �
     �
  	  �
     �     �  �   �     �     �     �     �     �     �     �  �     u   �  �   5  �   �     l     {     �     �     �  	   �    �     �  F   �     '     *  p   <  �   �  !   �     �     �     �               )     /     4     8  t   D  x   �     2  }   A     �     �     �  	   �  
   �     �            	   &     0     C  +   T  �   �     H  
   U     `     h  !   v  �   �  -  z  �   �  	   ;  %   E     k     �     �  S   �          "     8     E     U     j     �     �     �  *   �  #   �  #        )  �   7  !        /  (  7  M  `  �   �  �   x  �   1   �   �     �!  8   �"  �   �"  4   �#     �#     $  3   #$  '   W$  �   $      %     8%  6   G%     ~%     �%     �%  �  �%  "   q'     �'     �'     �'  �   �'     i(     u(     �(    �(     �)     �)  �   �)     g*  
   �*     �*     �*     �*     �*     �*  �   �*  s   �+  �   ,  �   �,     8-     G-     f-     l-     �-     �-    �-     �.  M   �.     /     /  �   /  �   �/  .   �0  $   �0     �0     �0     1     &1     A1     G1     N1     T1  �   `1  �   �1     j2  �   ~2     3  	   3     3     03  
   73     B3     `3     t3  	   �3     �3     �3  6   �3  �   �3     �4     �4     �4     �4  -   �4  �   "5  n  �5  �   C7     �7  $   8     '8     D8     [8  W   x8  	   �8     �8     �8     	9     9     89     V9     s9     �9  0   �9  *   �9  #   �9     :  �   -:      ;  
   3;  %  >;  i  d<  �   �=  �   �>  �   I?  �   @  M  �@  +    B  �   LB  5   C     9C     BC  H   aC  *   �C  �   �C     }D     �D  4   �D     �D     �D  #   E         I   =   h   5          6   T       K   9           _      O   E          /   J   Q   8   3       Y   l   	      V       o   )       F   .   e   `      \   ^       b   [   *       H             B   i   f   &   :   $          '   ]       m   G   U   W   (   +             <   2   A   P          k                        ?               @       s      !                      d   >   Z       4         n              D   N   R          g       p      r       a   L      
   X                  M      ,           c   1   -            q   S       7          j   "   ;   %   0           #   C        %s module needs configuration (un)check all <b>Error:</b> invalid password. <b>Error:</b> missing password. <b>Reminder</b>: Now check the permissions on config.php and make sure it is not globally writeable. Authenticate Authenticate Me Authentication successful! Before you upgrade, we <b>strongly recommend</b> that you make a backup of your database!  If you fail to make a backup and something goes wrong, there is a strong possibility that we will not be able to help you recover your data!  Refer to the following examples: Begin Upgrade Config.php upgrade Congratulations! Your Gallery 2 %sBeta%s upgrade is complete!  To upgrade any of your other Gallery 2 modules you must use the Site Administrator interface. Continue to Step %d&raquo; Current Currently installed Debug Output: Delete Cache Directories Description Empty Cache Error: Gallery 2 requires PHP version 4.1.0 or newer. You have PHP version %s installed. Contact your webserver administrator to request an upgrade, available at the %sPHP website%s. Error: Your version of PHP is configured with safe mode enabled.  You must disable safe mode before Gallery will run. Error: your PHP __FILE__ directive is not functioning correctly. Please file a support request with your webserver administrator or in the Gallery forums. Even though there were errors, you can still continue.  Or, you can try deleting these directories yourself and then click the <b>Try Again</b> link below. FILE Directive FILE directive supported Failed File uploads allowed Finished Finished! Gallery creates temporary copies of some of your data on your hard drive.  This helps it to run faster.  But when you upgrade, some of these files might be out of date so it's a good idea to get rid of them now.  Gallery will create them again as it needs them. Gallery file integrity Gallery: <strong>your photos</strong> on <strong>your website</strong> Go Go to my Gallery! If you are using Apache, create a file named .htaccess in the main Gallery directory with the following content: In order to proceed with the install, we have to verify that you are who you claim.  When you performed the install, you entered a password which went into your config.php.  Type that in now.  Refer to your config.php if you've forgotten what you entered. Manifest missing or inaccessible. Maximum POST size Maximum upload size Memory limit Missing files (%d) Modified files (%d) MySQL Name New New version Note: You're running Gallery from CVS, so recently removed files may appear here.  It might be safe to ignore these. Note: You're running Gallery from CVS, so some modified files are to be expected.  You can probably safely ignore these. Old files (%d) Once the upgrade has begun, please be patient.  If you cancel or reload the page, you may interfere with the upgrade process. Other PHP Version PHP version >= 4.1.0 Password: PostgreSQL Recheck config.php Redo this step Required Safe Mode Safe mode disabled Select Language: Skip Upgrade and Continue to Step %d&raquo; Something went wrong when we tried to upgrade the core module.  In the boxes below you can find some debug information.  Report this in the %sGallery Forums%s and we'll help you diagnose the problem. Stack Trace: Start Over Success System Checks Test skipped due to other errors. The Gallery Core Module is the heart of the Gallery application.  You can upgrade most other modules using the Site Administration interface, but this module must be handled separately in order for the upgrade to go smoothly. The following modules can be automatically upgraded for you.  If you choose not to upgrade them now, you may experience problems with your Gallery.   You can always upgrade or deactivate them on the Site Administration page, or return to this page later so any decision you make here is not permanent. These files are no longer part of Gallery. They probably won't cause any problems but it is a good idea to remove them to keep your install clean. Try Again Unable to commit database transaction Unable to get the module list Unable to load the %s module Unable to upgrade the %s module Unable to write to config.php in your %s directory.  Please change its permissions. Unknown Upgrade %d%% complete Upgrade Core Upgrade Modules Upgrade More Modules Upgrade Other Modules Upgrade Selected Modules Upgrade Status Upgrade Steps Upgraded Gallery Core Module successfully. Upgraded the %s layout successfully Upgraded the %s module successfully Upgrader Help Upgrading Gallery 2.0 requires %d steps. This upgrade tool will guide you through these steps and provide assistance along the way if additional steps are required. Please read the %sHelp File%s before proceeding. Upgrading the Gallery Core Module Warning Warning: The exec() function is disabled in your php by the <b>disabled_functions</b> parameter in php.ini. You won't be able to use modules that require external binaries (e.g. ImageMagick, NetPBM or Ffmpeg). This can only be set server-wide, so you will need to change it in the global php.ini. Warning: The set_time_limit() function is disabled in your php by the <b>disabled_functions</b> parameter in php.ini.  Gallery can function with this setting, but it will not operate reliably.  Any operation that takes longer than %d seconds will fail (and in some cases just return a blank page) possibly leading to data corruption. Warning: Your PHP is configured not to allow file uploads (<b>file_uploads</b> parameter in php.ini). You will need to enable this option if you want to upload files to your Gallery with a web browser. Warning: Your PHP is configured to limit the memory to %sb (<b>memory_limit</b> parameter in php.ini). You should raise this limit to at least <b>%sMB</b> for proper Gallery operation. Warning: Your PHP is configured to limit the post data to a maximum of %sb (<b>post_max_size</b> parameter in php.ini). You should raise this limit to allow uploading bigger files. Warning: Your PHP is configured to limit the size of file uploads to %sb (<b>upload_max_filesize</b> parameter in php.ini). You should rise this limit to allow uploading bigger files. Warning: Your PHP is configured with Zend ze1_compatibility_mode which can cause PHP to crash.  Click <a href="%s">here</a> to test your PHP.  If you see "SUCCESS" then your PHP is ok.  If you get an error then you must turn off ze1_compatibility_mode before proceeding. We have successfully cleaned out your cache directories. We were unable to clean the following cache directories.  This is probably ok, but if you notice any weird behaviour, you should try to delete these directories yourself.  It's perfectly safe to get rid of them at any time. We've successfully upgraded the Gallery Core Module. Welcome Welcome to the Gallery Upgrader You can do <i>chmod 666 config.php</i> to fix this. Your Gallery Core Module is up to date! Your config.php appears to use the old form of multisite support.  Please see the %sHelp File%s for instructions to update your configuration before proceeding. Zend compatibility mode exec() allowed mysqldump -u%s -p<i>YourPassword</i> --opt %s > %s.sql no limit pg_dump --format=t %s > %s.sql set_time_limit() allowed Project-Id-Version: Gallery: Upgrader 1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2005-06-11 11:57+0200
PO-Revision-Date: 2005-06-11 18:21+0100
Last-Translator: Jan Korbel <jackc@teptin.net>
Language-Team: Czech <cs@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
 Modul %s potřebuje nakonfigurovat (zrušit) výběr všech <b>Chyba:</b> špatné heslo. <b>Chyba:</b> chybí heslo. <b>Nezapomeňte</b>: Nyní zkontrolujte oprávnění pro soubor config.php a ujistěte se, že není zapisovatelný pro všechny. Autentizace Autentizuj mě Autentizace úspěšná! Před aktualizací <b>důrazně doporučujeme</b> provést zálohu databáze! Pokud tuto zálohu neprovedete a při aktualizaci dojde k chybě, je velmi pravděpodobné, že Vám nebudeme moci pomoci obnovit data! Můžete použít následující příklady: Začít aktualizaci Aktualizace config.php Gratulujeme! Aktualizace Vaší Galerie 2 %sBeta%s je kompletní! Pro případnou aktualizaci nějakých dalších modulů použijte administrační panel. Pokračovat krokem %d&raquo; Aktuální Aktuálně nainstalováno Ladící výstup: Výmaz cache Popis Výmaz Cache Chyba: Galerie 2 vyžaduje PHP verze 4.1.0 nebo novější. Vaše PHP je verze %s. Kontaktujte Vašeho správce a požádejte o aktualizaci, která je dostupná například na %sPHP webu%s. Chyba: Vaše PHP je nakonfigurováno se zapnutým Safe módem. Pokud chcete používat Galerii, musíte ho vypnout. Chyba: PHP direktiva __FILE__ nefunguje správně. Prosím požádejte o podporu Vašeho administrátora nebo na fórech Galerie. Přestože se vyskytly nějaké chyby, stále můžete pokračovat. Nebo se můžete pokusit smazat tyto adresáře ručně a pak kliknout na odkaz <b>Zkusit znovu</b>. Direktiva FILE Direktiva FILE je podporována Chyba Upload souborů povolen Hotovo Hotovo! Galerie vytváří na disku dočasné kopie některých dat, čímž urychluje některé operace. Při aktualizaci se mohou některé z těchto souborů stát zastaralými, takže je vhodné je nyní smazat. Galerie si je znovu vytvoří, až je bude potřebovat. Integrita souborů Galerie Galerie: <strong>Vaše fotografie</strong> na <strong>na Vašem webu</strong> Go Jdi na mojí Galerii! Pokud používáte webový server Apache, vytvořte v hlavním adresáři Vaší Galerie soubor .htaccess s následujícím obsahem: Pro pokračování v aktualizaci je potřeba ověřit Vaší identitu. Když jste instalovali tuto Galerii, zadávali jste heslo pro config.php. Prosím, zadejte ho nyní. Pokud jste ho zapomněli, podívejte se do souboru config.php. Chybějící nebo nedostupný soubor Manifest. Maximální velikost POST požadavku Maximální velikost uploadu Limit paměti Chybějící soubory (%d) Modifikované soubory (%d) MySQL Jméno Nový Nové verze Poznámka: Toto je Galerie z CVS, takže se zde mohou vyskytnout nedávno odebrané soubory. Nejspíše lze bez problému ignorovat. Poznámka: Toto je Galerie z CVS, takže se zde mohou vyskytnout nedávno upravené soubory. Nejspíše lze bez problému ignorovat. Staré soubory (%d) Jakmile aktualizace začne, buďte trpěliví. Pokud přerušíte nebo obnovíte nějakou stránku, možná přerušíte proces aktualizace. Další Verze PHP PHP verze >= 4.1.0 Heslo: PostgreSQL Znovu zkontrolovat config.php Opakovat tento krok Vyžadováno Safe mód Safe mód je vypnutý Vyberte jazyk: Přeskočit aktualizaci a pokračovat krokem %d&raquo; Něco špatného se stalo při aktualizaci modulu jádra. Níže můžete najít nějaké ladící informace. Můžete je zkusit předhodit ve %sFóru Galerie%s a snad Vám pomůžeme zjistit kde je problém. Trasování zásobníku: Začít znovu OK Kontrola systému Zkouška přeskočena z důvodu jiných chyb. Modul jádra Galerie je srdce této aplikace. Většinu ostatních modulů můžete zaktualizovat v administračním rozhraní, ale tento modul je nutné aktualizovat zvlášť. Následující moduly pro Vás mohou být automaticky zaktualizované. Pokud se nyní rozhodnete pro ponechání původních verzí, můžete narazit na různé problémy. Vždy ale můžete provést aktualizaci nebo deaktivaci modulů v administračním panelu, nebo se později můžete vrátit na tuto stránku, takže výběr zde provedený nemusí být trvalý. Tyto soubory už nejsou součástí Galerie. Pravděpodobně nemohou způsobit žádné problémy, ale asi by bylo nejlepší je odstranit a zachovat tak tuto instalaci čistou. Zkusit znovu Nelze commitnout transakce databáze Nelze získat seznam modulů Nelze nahrát modul %s Nelze zaktualizovat modul %s Nelze zapsat do souboru config.php v adresáři %s. Prosím změňte jeho oprávnění. Neznámý Aktualizace %d%% kompletní Aktualizace jádra Aktualizace modulů Aktualizovat více modulů Aktualizace dalších modulů Aktualizovat vybrané moduly Stav aktualizace Kroky aktualizace Modul jádra Galerie úspěšně zaktualizován. Rozvržení %s úspěšně zaktualizováno Modul %s úspěšně zaktualizován Nápověda aktualizace Aktualizace Galerie 2.0 vyžaduje %d kroků. Tento aktualizační nástroj Vás těmito kroky provede stejně jako případnými dalšími kroky, pokud budou potřeba. Před pokračováním si prosím přečtěte %sNápovědu%s. Aktualizuji modul jádra Galerie Varování Varování: funkce exec() je ve vašem PHP vypnutá pomocí parametru <b>disabled_functions</b> v php.ini. Nebudete moci použít moduly, které volají externí programy (jako je ImageMagick, NetPBM nebo Ffmpeg). Toto nastavení může být provedeno pouze pro celý server v souboru php.ini. Varování: funkce set_time_limit() je ve vašem PHP vypnutá pomocí parametru <b>disabled_functions</b> v php.ini. Galerie může s tímto nastavením fungovat, ale nebude zaručena spolehlivost. Všechny operace, které budou trvat déle než %d sekund, pravděpodobně selžou (a v některých případech vrátí prázdnou stránku) a mohou poškodit data. Varování: konfigurace Vašeho PHP nedovoluje upload souborů (parametr <b>file_uploads</b> v php.ini ). Pokud chcete do Galerie uploadovat soubory, musíte tuto možnost povolit. Varování: ve Vašem PHP je nastaveno omezení paměti na %sB (parametr <b>memory_limit</b> v php.ini). Pro bezproblémovou funkci Galerie byste měli zvýšit tento limit alespoň na <b>%sMB</b>. Varování: ve Vašem PHP je nastavena maximální velikost dat v POST požadavku na %sB (parametr <b>post_max_size</b> v php.ini). Pro upload větších souborů byste měli tento limit zvýšit. Varování: ve Vašem PHP je nastaveno omezení velikosti uploadu souborů na %sB (parametr <b>upload_max_filesize</b> v php.ini). Pro upload větších souborů byste měli tento limit zvýšit. Varování: Vaše PHP je nakonfigurováno v Zend módu ze1_compatibility_mode, což může způsobit padání PHP. Pro otestování Vašeho PHP klikněte <a href="%s">zde</a>. Pokud uvidíte úspěšný výsledek, Vaše PHP je v pořádku. Pokud uvidíte chybu nebo nedostanete odpověď, budete muset vypnout ze1_compatibility_mode. Úspěšně jsme vymazali cache adresáře. Nelze vyčistit následující adresáře cache. Pravděpodobně je to v pořádku, ale pokud narazíte na nějaké divné chování, měli byste se pokusit tyto adresáře promazat. Úspěšně jsme zaktualizovali modul jádra Galerie. Vítejte Vítejte v aktualizaci Galerie Pro opravu práv by mělo pomoci něco jako <i>chmod 666 config.php</i>. Modul jádra Vaší Galerie je aktuální! Váš config.php zřejmě obsahuje starý formát zápisu pro podporu multisite. Prosím přečtěte si %sNápovědu%s pro další instrukce k aktualizaci konfigurace. Kompatibilní mód Zendu funkce exec() je povolena mysqldump -u%s -p<i>VašeHeslo</i> --opt %s > %s.sql bez omezení pg_dump --format=t %s > %s.sql funkce set_time_limit() je povolena 