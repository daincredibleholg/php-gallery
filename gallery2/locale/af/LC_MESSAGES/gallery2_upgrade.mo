��    j      l  �   �      	     	     /	     =	     ]	  5   }	     �	     �	     �	     �	     �	     
     '
     /
     C
     Q
     ]
  �   i
  u     �   }  �        �     �     �     �  	   �           F        f     i     {  R   �  p   �  �   ]  �     !   �     �     �     �                1     E     J     N     Z  }   i     �     �  &   �  	         *     =     L     U     h  +   y  �   �  
   m     x     �     �  !   �  �   �  �   �     s     y  	   �  %   �     �     �     �          $     D  S   c     �     �     �     �  *   �  #     "   ?     b     p  !   �     �     �  (  �  M  �  �   4  �   �  �   �  �   l  4   L     �     �  3   �  G   �  '   %  �   M     �                 �  7     �      �       �      !  E   9!     !     �!     �!     �!     �!     �!     �!     �!     "  
   "     "  �   +"  u   #  �   |#  �   �#  
   �$     �$     �$  !   �$     �$    �$     
&  C   (&     l&     r&  "   �&  S   �&  s   �&  �   r'  �   Q(  $   �(     
)      )     7)     E)     _)     )     �)     �)     �)     �)  �   �)     Q*     W*  '   d*  	   �*     �*     �*     �*     �*  
   �*  7   �*  �   )+  
   ,     ,  	   +,     5,  7   D,  �   |,  �   P-     �-     �-     �-  +   �-     .     4.     Q.     p.  #   �.     �.  F   �.     /     /     8/     G/  *   W/  '   �/  $   �/     �/     �/  '   �/     0     (0  B  40  Z  w1  �   �2  �   �3  �   l4  �   <5  1   86     j6  "   q6  :   �6  C   �6  $   7  �   87     �7     �7     8     8         $   :       f   &   @   _   #          ;                 W          >   D   `      ?       (   E       ]   N   T          \      "       ,      d   /   L             P   7   +       C   i       9   F      S   *   )      1       a   K   M      I              V       Y      U      6           J   8   	   %       5   X   =             e      Z   A   h   b   0       -           .          3      [   
       <                           c   H       Q       2       4   B   ^                !      '   j                     g              G       R       O        %s module needs configuration (un)check all <b>Error:</b> invalid password. <b>Error:</b> missing password. An error occurred while upgrading Gallery Core Module Authenticate Authenticate Me Authentication successful! Begin Upgrade Config.php upgrade Continue to Step %d&raquo; Current Currently installed Debug Output: Description Empty Cache Error: Some files and or directories in your storage directory are not writeable by the webserver user. Run chown -R webserverUser %s OR run chmod -R 777 %s. Error: Your version of PHP is configured with safe mode enabled.  You must disable safe mode before Gallery will run. Error: your PHP __FILE__ directive is not functioning correctly. Please file a support request with your webserver administrator or in the Gallery forums. Even though there were errors, you can still continue.  Or, you can try deleting these directories yourself and then click the <b>Try Again</b> link below. FILE Directive FILE directive supported Failed File uploads allowed Finished! Gallery creates temporary copies of some of your data on your hard drive.  This helps it to run faster.  But when you upgrade, some of these files might be out of date so it's a good idea to get rid of them now.  Gallery will create them again as it needs them. Gallery file integrity Gallery: <strong>your photos</strong> on <strong>your website</strong> Go Go to my Gallery! Go to the Gallery 2 Installer If you actually want to run the Gallery 2 installer, please follow the link below. If you are using Apache, create a file named .htaccess in the main Gallery directory with the following content: If you want to upgrade from Gallery 1, you first need to install Gallery 2 and then use the import module to import your data from Gallery 1. Please follow the link below to install Gallery 2. If you've lost your config.php file when replacing the Gallery 2 files in the preparation for this upgrade, please restore it and try again. Manifest missing or inaccessible. Maximum POST size Maximum upload size Memory limit Missing files (%d) Missing or invalid config.php Modified files (%d) Name New New version Old files (%d) Once the upgrade has begun, please be patient.  If you cancel or reload the page, you may interfere with the upgrade process. Other PHP Version PHP version &gt;= 4.3.0 or &gt;= 5.0.4 Password: Recheck config.php Redo this step Required Safe mode disabled Select Language: Skip Upgrade and Continue to Step %d&raquo; Something went wrong when we tried to upgrade the core module.  In the boxes below you can find some debug information.  Report this in the %sGallery Forums%s and we'll help you diagnose the problem. Start Over Storage Directory Permissions Success System Checks Test skipped due to other errors. The Gallery Core Module is the heart of the Gallery application.  You can upgrade most other modules using the Site Administration interface, but this module must be handled separately in order for the upgrade to go smoothly. The installed version is newer than the version you are trying to upgrade to. You cannot downgrade G2. Please replace the gallery2 files with files from the currently installed version or later. Theme Themes Try Again Unable to commit database transaction Unable to get the module list Unable to get the theme list Unable to load the %s module Unable to load the %s theme Unable to upgrade the %s module Unable to upgrade the %s theme Unable to write to config.php in your %s directory.  Please change its permissions. Unknown Upgrade %d%% complete Upgrade Core Upgrade Steps Upgraded Gallery Core Module successfully. Upgraded the %s module successfully Upgraded the %s theme successfully Upgrader Help Upgrading modules Upgrading the Gallery Core Module Upgrading themes Warning Warning: The exec() function is disabled in your PHP by the <b>disabled_functions</b> parameter in php.ini. You won't be able to use modules that require external binaries (e.g. ImageMagick, NetPBM or Ffmpeg). This can only be set server-wide, so you will need to change it in the global php.ini. Warning: The set_time_limit() function is disabled in your PHP by the <b>disabled_functions</b> parameter in php.ini.  Gallery can function with this setting, but it will not operate reliably.  Any operation that takes longer than %d seconds will fail (and in some cases just return a blank page) possibly leading to data corruption. Warning: Your PHP is configured not to allow file uploads (<b>file_uploads</b> parameter in php.ini). You will need to enable this option if you want to upload files to your Gallery with a web browser. Warning: Your PHP is configured to limit the memory to %sb (<b>memory_limit</b> parameter in php.ini). You should raise this limit to at least <b>%sMB</b> for proper Gallery operation. Warning: Your PHP is configured to limit the post data to a maximum of %sb (<b>post_max_size</b> parameter in php.ini). You should raise this limit to allow uploading bigger files. We were unable to clean the following cache directories.  This is probably ok, but if you notice any weird behaviour, you should try to delete these directories yourself.  It's perfectly safe to get rid of them at any time. We've successfully upgraded the Gallery Core Module. Welcome Welcome to the Gallery Upgrader You can do <i>chmod 666 config.php</i> to fix this. You tried to run the upgrade process but a valid config.php is missing. Your Gallery Core Module is up to date! Your config.php appears to use the old form of multisite support.  Please see the %sHelp File%s for instructions to update your configuration before proceeding. Zend compatibility mode exec() allowed no limit set_time_limit() allowed Project-Id-Version: Gallery: Upgrader 2.3
Report-Msgid-Bugs-To: gallery-translations@lists.sourceforge.net
POT-Creation-Date: 2006-12-20 09:54-0800
PO-Revision-Date: 2006-02-24 09:09+0200
Last-Translator: Renier <renier@gigaskills.co.za>
Language-Team: Afrikaans <gallery-translations@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
 %s module vereis konfigurasie (de)selekteer alles <b>Fout:</b> ongeldige wagwoord. <b>Fout:</b> vermiste wagwoord. 'n Fout het voorgekom tydens opgradering van die Gallery Core Module. Staaf ID Staaf my ID ID Bevestig! Begin Opgradering Config.php opgradering Gaan verder na Stap %d&raquo; Huidige Tans geïnstalleer Debug Uitvoer: Beskrywing Maak Kas Leeg Fout: Enkele l&ecirc;ers en/of directories in die stoordirectory kan nie na geskrywe word deur die webbediener-rekening nie.  Gebruik <b>chown -R webbediener-rekening%s</b> of <b>chmod -R 777 %s</b> om dit reg te stel. Fout: U weergawe van PHP is opgestel met safe mode aangeskakel.  U moet safe mode afskakel, voordat Gallery sal werk. Fout: U PHP __FILE__ bevel funksioneer nie goed nie. Vra ondersteuning by u werfbediener se bestuurder of by die Gallery2 forums. Alhoewel daar foute was, kan u steeds voortgaan.  U kan probeer om hierdie directories self uit te vee en dan op die <b>Probeer weer</b> skakel hieronder te kliek. FILE Bevel FILE bevel ondersteun Misluk Oplaai van l&ecirc;ers toegestaan Klaar! Gallery maak van sommige data op u hardeskyf tydelike kopieë. Dit help om dit vinniger te maak werk. Maar wanneer u opgradeer kan sommige l&ecirc;ers al verval het en daarom is dit 'n goeie idee om hulle te verwyder.  Gallery sal hierdie weer van nuuts af skep as dit nodig is. Gallery l&ecirc;erintegriteit Gallery: <strong>Jou fotos</strong> op <strong>jou webwerf</strong> Begin Gaan na die Gallery! Gaan na die Gallery2 Installeerder Indien u werklik die Gallery2 installeerder wil loop, volg die onderstaande skakel. As u Apache gebruik, skep 'n l&ecirc;er genaamd .htaccess in die hoofdirectory van Gallery met die volgende inhoud: Indien U probeer om van Gallery1 na Gallery2 op te gradeer, dan moet u eers Gallery2 installeer en daarna die invoer module gebruik om u data vanaf Gallery1 in te voer.  Volg die skakel hieronder om Gallery2 te installeer. Indien die config.php l&ecirc;er verlore gegaan het tydens die voorbereiding van hierdie opgradering, plaas dit dan weer terug en probeer nogmaals. Manifest is afwesig of ontoeganklik. Maksimum POST grootte Maksimum oplaaigrootte Geheue limiet Vermiste l&ecirc;ers (%d) Geen of 'n ongeldige config.php Gewysigde l&ecirc;ers (%d) Naam Nuut Nuwe weergawe Ou l&ecirc;ers (%d) Wees geduldig wanneer die opgradering begin het.  Indien u die laaiproses stop of die blad herlaai, kan u die opgraderingsproses versteur. Ander PHP Weergawe PHP weergawe &gt;= 4.3.0 of &gt;= 5.0.4 Wagwoord: Kontroleer config.php weereens Herhaal hierdie stap Vereis Safe mode afgeskakel Kies Taal: Slaan opgradering oor en gaan verder met Stap %d&raquo; Daar het iets verkeerd gegaan met die opgradering van u core module.  In die boksies hieronder kan u debug inligting sien.  Rapporteer hulle in die %sGallery Forums%s en dan kan ons u help om die probleem te diagnoseer. Begin Weer Stoor Directory Magtigings Suksesvol Stelsel Nagaan Toets oorgeslaan vanwovegeslagen vanwege andere fouten. Die Gallery Core Module is die hart van die Gallery program.  U kan die meeste ander modules vanaf die werfadmin blad opgradeer, maar hierdie module moet apart behandel word om 'n gladde opgradering te verseker. Die huidige installasie is nuwer as die weergawe waarna u probeer opgradeer.  Dit is nie moontlik om Gallery2 af te gradeer nie. Tema Temas Probeer Weer Kan die databasistransaksie nie uitvoer nie Kon die module lys nie kry nie Kon die tema lys nie kry nie Kan die %s module nie laai nie Kan die %s tema nie laai nie Kan die %s module nie opgradeer nie Kan die %s tema nie opgradeer Kan nie na config.php in u %s directory skryf nie. Verander die regte. Onbekend Opgradering %d%% voltooi Opgradeer Core Opgradeerstappe Gallery Core Module suksesvol opgegradeer. Die %s modules is suksesvol opgegradeer Die %s tema is suksesvol opgegradeer Opgradeer Hulp Opgradeer modules Opgradering van die Gallery Core Module Opgradeer temas Waarskuwing Waarskuwing: Die exec() funksie is deur die <b>disabled_functions</b> parameter in u php.ini afgesit. U sal nie in staat wees om modules te gebruik wat eksterne programme soos ImageMagick, NetPBM of Ffmpeg, vereis nie. Dit kan alleen bedienerwyd verstel word, dus sal u dit in die globale php.ini l&ecirc;er moet verander. Waarskuwing: Die set_time_limit() funksie is deur die <b>disabled_functions</b> parameter in u php.ini afgesit.  Gallery kan sonder hierdie verstelling funksioneer, maar sal nie betroubaar wees nie. Elke aksie wat langer as %d sekondes duur sal misluk (en in sommige gevalle slegs 'n le&euml; blad oplewer) wat moontlik kan lei tot datakorrupsie. Waarskuwing: U PHP is ingestel om die oplaai van l&ecirc;ers nie toe te laat nie (<b>file_uploads</b> parameter in php.ini). U moet dit aansit indeun u l&ecirc;ers na u Gallery wil oplaai met behulp van 'n blaaier. Waarskuwing: U PHP is ingesteld om die geheue te beperk tot %sb (<b>memory_limit</b> parameter in php.ini). U moet dit verhoog tot minstens <b>%sMB</b> om Gallery2 behoorlik te laat funksioneer. Waarskuwing: U PHP is ingestel om die post data te beperk tot 'n maksimum van %sb (<b>max_post_size</b> parameter in php.ini). U moet hierdie limiet verhoog om die oplaai van groter l&ecirc;ers toe te staan. Ons was nie in staat om die volgende kasdirectories leeg te maak nie.  Dit is waarskynlik ok, maar as u vreemde gedrag sou opmerk sou u moet probeer om hierdie directories self te verwyder.  Dit is heeltemal veilig om hulle ter eniger tyd te verwyder. Die Gallery Core Module is suksesvol opgegradeer. Welkom Welkom by die Gallery Opgradeerder U kan <i>chmod 666 config.php</i> loop om dit te verander. Tydens die opgradering kon geen geldige config.php gevind word nie. Die Gallery Core Module is op datum! U config.php blyk die ouer vorm van multisite te ondersteun.  Raadpleeg die %sHulpl&ecirc;er%s vir instruksies om u konfigurasie op te dateer voordat u verder gaan. Zend versoenbare modus exec() toegestaan geen limiet set_time_limit() toegestaan 