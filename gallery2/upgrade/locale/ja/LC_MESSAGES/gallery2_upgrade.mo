Þ          T  µ         `     a               ­  5   Í                    ;     D     R     e     õ               ,     @     N     \     h  Ï   t  È   D          «  u   ?     µ     P     ì     û               0  	   ?    I     O     f     i     {  R     p   ì  ø   ]  À   V       )   ¤  !   Î     ð               #     6     T     h     o     t     x  t     Á   ù     »  }   Ê     H     N     h      t  	             ²     Á     Õ  	   Þ     è     û  +     Ç   8        
             6     >     [  !   i  á     Ë   m  Â   9     ü         	        	   .      8   %   W   "   }   !          Â      à   $   ý      "!     ?!     [!     {!  S   !     î!     ö!     "     "     )"  *   7"  #   b"  "   "     ©"     ·"  !   É"     ë"     ü"  (  #    -$  M  4%  É   &  ¸   L'  ´   (  ¸   º(  ß   s)  4   S*     *     *  3   °*  G   ä*  '   ,+      T+     õ+     ,     ,     %,     6,     O,  u  [,  *   Ñ-  $   ü-  *   !.  '   L.  i   t.     Þ.     å.     ò.  F  /  $   U0     z0  á   0  #   q1     1  -   1  !   Ê1     ì1      2     2     &2  "  ?2  K  b3    ®4  ¾   ±5  ³   p6  Á   $7  ë   æ7     Ò8  ;   í8     )9  <   09     m9  	   9  |  9      ;     4;     ;;  +   P;  w   |;     ô;    <  6  #>  ¥   Z?  @    @  0   A@     r@  !   @     «@     »@  J   Ù@      $A     EA     UA  	   \A     fA  Ú   A  '  ZB     C  Ï   C  	   jD     tD     D  6   §D     ÞD     ïD  !   E     /E     <E     IE  !   \E     ~E  O   E    ÜE     ùF     G  9   /G     iG  *   pG     G  K   ´G      H  B  I  k  DK  	   °L  	   ºL    ÄL     QN     aN  3   zN  H   ®N  -   ÷N  (   %O  0   NO  *   O  1   ªO  9   ÜO  4   P  9   KP  4   P  ~   ºP     9Q  #   @Q     dQ  '   Q  $   «Q  M   ÐQ  3   R  -   RR  $   R  *   ¥R  ;   ÐR  $   S     1S    8S    ÊT    ÍU  B  VW  Ý   X    wY  8  Z  8  ½[  M   ö\     D]  6   Q]  Q   ]     Ú]  8   ^^  Þ   ^     v_     _  	   _     £_     ³_     Ë_                 "   x   '      U         8   #           4       j               E      J   D   (       W   ?   *       P   9           5   L   }         F   v         ;      <          z   M   .   o   Q   {   N      K      /       $   V   b          ]      f              d       p   h   3   B            	                  c   ^                t   6   R   O      -   +          e           `          k       1   )   i   :   a      A   
             T                     r   g           X       n                   u   [           &       H   G   s       2   \   =   @   C          w       q   _   >      S   %          7   I      Y   y   ,          m   l   |      !   0   ~   Z       %s module needs configuration (un)check all <b>Error:</b> invalid password. <b>Error:</b> missing password. An error occurred while upgrading Gallery Core Module Authenticate Authenticate Me Authentication successful! Before you upgrade, we <b>strongly recommend</b> that you make a backup of your database!  If you fail to make a backup and something goes wrong, there is a strong possibility that we will not be able to help you recover your data!  Refer to the following example: Begin Upgrade Config.php upgrade Congratulations! Your Gallery 2 upgrade is complete!  To upgrade any additional Gallery 2 plugins you may use the Site Administrator interface. Continue to Step %d&raquo; Current Currently installed Deactivated Plugins Debug Output: Delete Caches Description Empty Cache Error: Essential filesystem operations are disabled in your PHP by the <b>disabled_functions</b> parameter in php.ini. You must allow these functions before Gallery will run. These functions are missing: %s. Error: Gallery 2 requires PHP version 4.3.0 or newer or 5.0.4 or newer. You have PHP version %s installed. Contact your webserver administrator to request an upgrade, available at the %sPHP website%s. Error: Some files and or directories in your storage directory are not writeable by the webserver user. Run chown -R webserverUser %s OR run chmod -R 777 %s. Error: Your PHP is configured without support for %sPerl Compatible Regular Expressions%s. You must enable these functions before Gallery will run. Error: Your version of PHP is configured with safe mode enabled.  You must disable safe mode before Gallery will run. Error: your PHP __FILE__ directive is not functioning correctly. Please file a support request with your webserver administrator or in the Gallery forums. Even though there were errors, you can still continue.  Or, you can try deleting these directories yourself and then click the <b>Try Again</b> link below. FILE Directive FILE directive supported Failed File uploads allowed Finish Upgrade Finished! Gallery creates temporary copies of some of your data on your hard drive.  This helps it to run faster.  But when you upgrade, some of these files might be out of date so it's a good idea to get rid of them now.  Gallery will create them again as it needs them. Gallery file integrity Go Go to my Gallery! Go to the Gallery 2 Installer If you actually want to run the Gallery 2 installer, please follow the link below. If you are using Apache, create a file named .htaccess in the main Gallery directory with the following content: If you have a busy site, consider putting your Gallery in maintenance mode. This gives visitors a message that the site is temporarily offline, rather than showing everybody this upgrade page. Edit your config.php file to activate maintenance mode. If you want to upgrade from Gallery 1, you first need to install Gallery 2 and then use the import module to import your data from Gallery 1. Please follow the link below to install Gallery 2. If you've lost your config.php file when replacing the Gallery 2 files in the preparation for this upgrade, please restore it and try again. Incompatible with this version of Gallery Manifest missing or inaccessible. Maximum POST size Maximum upload size Memory limit Missing files (%d) Missing or invalid config.php Modified files (%d) Module Name New New version Note: You're running Gallery from SVN, so recently removed files may appear here.  It might be safe to ignore these. Note: You're running Gallery from SVN, so some modified files are to be expected.  You can probably ignore these, but to be safe you should make sure that you do 'svn update' before continuing. Old files (%d) Once the upgrade has begun, please be patient.  If you cancel or reload the page, you may interfere with the upgrade process. Other Output buffering disabled PHP Version PHP version >= 4.3.0 or >= 5.0.4 Password: Recheck config.php Redo this step Regular expressions Required Safe Mode Safe mode disabled Select Language: Skip Upgrade and Continue to Step %d&raquo; Something went wrong when we tried to upgrade the core module.  In the boxes below you can find some debug information.  Report this in the %sGallery Forums%s and we'll help you diagnose the problem. Stack Trace: Start Over Storage Directory Permissions Success Successfully cleaned caches. System Checks Test skipped due to other errors. The Gallery Core Module is the heart of the Gallery application.  You can upgrade most other modules using the Site Administration interface, but this module must be handled separately in order for the upgrade to go smoothly. The following plugins were active, but they are missing or incompatible with your current version of Gallery.  They have been deactivated.  Install the latest version of these plugins to reactivate them. The installed version is newer than the version you are trying to upgrade to. You cannot downgrade G2. Please replace the gallery2 files with files from the currently installed version or later. Theme Themes These files are no longer part of Gallery. They probably won't cause any problems but it is a good idea to remove them to keep your install clean.  Gallery can't remove these files for you, but you can download and run %s in your gallery2 directory to delete them for you. Translation support Try Again Unable to clear the page cache Unable to commit database transaction Unable to deactivate the %s module Unable to deactivate the %s theme Unable to get the module list Unable to get the theme list Unable to initialize Gallery session Unable to load the %s module Unable to load the %s theme Unable to upgrade the %s module Unable to upgrade the %s theme Unable to write to config.php in your %s directory.  Please change its permissions. Unknown Upgrade %d%% complete Upgrade Core Upgrade Plugins Upgrade Steps Upgraded Gallery Core Module successfully. Upgraded the %s module successfully Upgraded the %s theme successfully Upgrader Help Upgrading modules Upgrading the Gallery Core Module Upgrading themes Warning Warning: The exec() function is disabled in your PHP by the <b>disabled_functions</b> parameter in php.ini. You won't be able to use modules that require external binaries (e.g. ImageMagick, NetPBM or Ffmpeg). This can only be set server-wide, so you will need to change it in the global php.ini. Warning: The putenv() function is disabled in your PHP by the <b>disabled_functions</b> parameter in php.ini.  Gallery can function with this setting, but on some rare systems Gallery will be unable to run in other languages than the system language and English. Warning: The set_time_limit() function is disabled in your PHP by the <b>disabled_functions</b> parameter in php.ini.  Gallery can function with this setting, but it will not operate reliably.  Any operation that takes longer than %d seconds will fail (and in some cases just return a blank page) possibly leading to data corruption. Warning: Your PHP is configured not to allow file uploads (<b>file_uploads</b> parameter in php.ini). You will need to enable this option if you want to upload files to your Gallery with a web browser. Warning: Your PHP is configured to limit the memory to %sb (<b>memory_limit</b> parameter in php.ini). You should raise this limit to at least <b>%sMB</b> for proper Gallery operation. Warning: Your PHP is configured to limit the post data to a maximum of %sb (<b>post_max_size</b> parameter in php.ini). You should raise this limit to allow uploading bigger files. Warning: Your PHP is configured to limit the size of file uploads to %sb (<b>upload_max_filesize</b> parameter in php.ini). You should raise this limit to allow uploading bigger files. We were unable to clean the following cache directories.  This is probably ok, but if you notice any weird behaviour, you should try to delete these directories yourself.  It's perfectly safe to get rid of them at any time. We've successfully upgraded the Gallery Core Module. Welcome Welcome to the Gallery Upgrader You can do <i>chmod 666 config.php</i> to fix this. You tried to run the upgrade process but a valid config.php is missing. Your Gallery Core Module is up to date! Your config.php appears to use the old form of multisite support.  Please see the %sHelp File%s for instructions to update your configuration before proceeding. Zend compatibility mode exec() allowed no limit putenv() allowed set_time_limit() allowed this script Project-Id-Version: Gallery: Upgrader 2.2.2
Report-Msgid-Bugs-To: gallery-translations@lists.sourceforge.net
POT-Creation-Date: 2006-12-20 09:55-0800
PO-Revision-Date: 2007-03-12 19:46+0900
Last-Translator: Yosuke Suzuki
Language-Team: Japanese <gallery-devel@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
 %s ã¢ã¸ã¥ã¼ã«ã¯è¨­å®ãå¿è¦ã§ã ãã¹ã¦ããã§ãã¯ (ããªã) <b>ã¨ã©ã¼:</b> ç¡å¹ãªãã¹ã¯ã¼ã <b>ã¨ã©ã¼:</b> ãã¹ã¯ã¼ãæ¬ è½ ã®ã£ã©ãªã¼ã®ã³ã¢ã¢ã¸ã¥ã¼ã«ãã¢ããã°ã¬ã¼ãããéã«ã¨ã©ã¼ãçºçãã¾ãã èªè¨¼ èªè¨¼ãã èªè¨¼ã«æåãã¾ãã ã¢ããã°ã¬ã¼ãããã¾ãã«ããã¼ã¿ãã¼ã¹ã®ããã¯ã¢ãããã¨ããã¨ã<b>å¼·ããããã</b>ãã¾ããããã¯ã¢ãããã¨ããã«ä½ãåé¡ãçºçããå ´åããã¼ã¿ãä¿®å¾©ããæä¼ããã§ããªãå¯è½æ§ããããã¦é«ãã§ããæ¬¡ã®ä¾ãåç§ãã¦ãã ãã: ã¢ããã°ã¬ã¼ããéå§ãã Config.php ã®æ´æ° ããã§ã¨ããããã¾ã! ããªãã®Gallery 2 ã®ã¢ããã°ã¬ã¼ãã¯å®äºãã¾ãããããã«è¿½å ã®ãã©ã°ã¤ã³ãã¢ããã°ã¬ã¼ãããã«ã¯ããµã¤ãç®¡çã®é ç®ãå©ç¨ãã¦ãã ãã ç¶ãã¦ã¹ããã %d ã¸&raquo; ç¾å¨ ç¾å¨ã¤ã³ã¹ãã¼ã«ããã¦ãããã® ç¡å¹åããããã©ã°ã¤ã³ ãããã°åºå: ã­ã£ãã·ã¥ãåé¤ãã èª¬æ ã­ã£ãã·ã¥ãç©ºã« è­¦å: ä¸å¯æ¬ ãªãã¡ã¤ã«ã·ã¹ãã ã®æä½ãphp.iniãã¡ã¤ã«ã® <b>disabled_functions</b> ãã©ã¡ã¼ã¿ã«ãã£ã¦ç¡å¹ã«ããã¦ãã¾ããGalleryãåä½ãããåã«ãããã®æ©è½ãè¨±å¯ããªããã°ãªãã¾ãããä»¥ä¸ã®æ©è½ãããã¾ãã: %s ã¨ã©ã¼: Gallery2ã¯ PHPã®ãã¼ã¸ã§ã³4.3.0ä»¥éããããã¯5.0.4ä»¥éãå¿è¦ã§ããããªãã®PHPã¯ãã¼ã¸ã§ã³ã %s ã§ããããªãã®å©ç¨ããã¦ã§ããµã¼ãã¼ã®ç®¡çèã«é£çµ¡ãã¦ãã¢ããã°ã¬ã¼ãããã¦ããã£ã¦ãã ããã%sPHP website%sã®ãµã¤ãã§å¥æã§ãã¾ãã ã¨ã©ã¼: ã¹ãã¬ã¼ã¸ãã£ã¬ã¯ããªåã®ããã¤ãã®ãã¡ã¤ã«ããã£ã¬ã¯ããªãã¦ã§ããµã¼ãã¼ã®ã¦ã¼ã¶ã¼æ¨©éã§æ¸ãè¾¼ããã¨ãã§ãã¾ãããchown -R webserverUser %s ã chmod -R 777 %s ãå®è¡ãã¦ãã ãã ã¨ã©ã¼:ããªãã®ä½¿ç¨ãã¦ããPHPã¯ã%sPerläºæã®æ­£è¦è¡¨ç¾%sãçµã¿è¾¼ã¾ãã¦ãã¾ãããGalleryãå®è¡ããåã«ãããã®æ©è½ãæå¹ã«ãã¦ãã ãã ã¨ã©ã¼:ããªãã®ä½¿ç¨ãã¦ããPHPã¯ãã»ã¼ãã¢ã¼ããæå¹ã«ãªã£ã¦ãã¾ããGalleryãä½¿ãããã«ã¯ãã»ã¼ãã¢ã¼ããç¡å¹ã«ãã¦ãã ãã ã¨ã©ã¼: PHPã® __FILE__ ãã£ã¬ã¯ãã£ãã¯æ­£ããæ©è½ãã¦ãã¾ãããã¦ã§ããµã¼ãã¼ã®ç®¡çèã«é£çµ¡ããããGalleryã®ãã©ã¼ã©ã ã§ç¸è«ãã¦ãã ãã ããã¤ãã¨ã©ã¼ãããã¾ããããç¶ãããã¨ãã§ãã¾ãããããã¯ããªãèªèº«ã§ãããã®ãã£ã¬ã¯ããªãåé¤ããä¸ã®<b>ããä¸åº¦å®è¡ãã</b>ã®ãªã³ã¯ãã¯ãªãã¯ãã¦ãã ãã FILE ãã£ã¬ã¯ãã£ã FILE ãã£ã¬ã¯ãã£ãã¯ãµãã¼ãããã¦ãã¾ã å¤±æ ãã¡ã¤ã«ã®ã¢ããã­ã¼ãã¯è¨±å¯ããã¦ãã¾ã ã¢ããã°ã¬ã¼ããå®äº å®äºï¼ Galleryã¯ããã¼ã¿ã®ä¸æçãªã³ãã¼ããã¼ããã£ã¹ã¯ä¸ã«ä½æãã¾ããããã¯ãå®è¡ãéãããããã®ãã®ã§ããã¢ããã°ã¬ã¼ãå¾ããããã®ãã¼ã¿ã¯å¤ããã®ã«ãªã£ã¦ãã¾ããããä»åé¤ãããã¨ããããããã¾ããGalleryã¯ãå¿è¦ãªå ´åã«èªåçã«ãããã®ãã¼ã¿ãååº¦ä½æãã¾ã Gallery ãã¡ã¤ã«ã®å®å¨æ§ é²ã Gallery ãè¨ªãã Gallery 2 ã®ã¤ã³ã¹ãã¼ã©ã¼ã«è¡ã ããªãã Gallery 2 ã®ã¤ã³ã¹ãã¼ã©ã¼ãå®è¡ãããã®ãªããä¸ã®ãªã³ã¯åã«é£ãã§ãã ãã Apacheãä½¿ç¨ãã¦ããå ´åã¯ãä»¥ä¸ã®åå®¹ãå«ã.htaccess ãã¡ã¤ã«ãGallery ã®ã¡ã¤ã³ãã£ã¬ã¯ããªã«ä½æãã¦ãã ãã ããªãã®ãµã¤ãããé »ç¹ã«å©ç¨ããããµã¤ããªãã°ãGalleryãã¡ã³ããã³ã¹ã¢ã¼ãã«ãã¦ãã ãããããã¯å©ç¨èã«ããã®ã¢ããã°ã¬ã¼ãã®ãã¼ã¸ãè¦ããã®ã§ã¯ãªããä¸æçã«ãµã¤ãããªãã©ã¤ã³ã«ãªã£ã¦ãããã¨ãä¼ãããã®ã§ããã¡ã³ããã³ã¹ã¢ã¼ããæå¹ã«ããã«ã¯config.phpãç·¨éãã¦ãã ãã Gallery 1 ããã¢ããã°ã¬ã¼ããããå ´åã¯ãã¾ãGallery 2 ãã¤ã³ã¹ãã¼ã«ããããããã¤ã³ãã¼ãã¢ã¸ã¥ã¼ã«ãä½¿ã£ã¦ãã¼ã¿ãGallery 1 ããã¤ã³ãã¼ããã¦ãã ãããGallery 2 ãã¤ã³ã¹ãã¼ã«ããå ´åã¯ãä¸ã®ãªã³ã¯åã«é£ãã§ãã ãã ããããªãããã®ã¢ããã°ã¬ã¼ãã®æºåã®éã« config.php ããªããã¦ãã¾ã£ãã®ãªãããããåå¾©ãã¦ååº¦ææ¦ãã¦ãã ãã ãã®ãã¼ã¸ã§ã³ã®Galleryã¨äºææ§ãããã¾ããã Manifest ããªããã¢ã¯ã»ã¹ã§ãã¾ãã POSTã®æå¤§ãµã¤ãº ã¢ããã­ã¼ãæå¤§ãµã¤ãº ã¡ã¢ãªå¶é æ¬ è½ãããã¡ã¤ã« (%d) config.php ãã¡ã¤ã«ããªãããæ­£ããç¶æã§ã¯ããã¾ãã å¤æ´ããããã¡ã¤ã« (%d) ã¢ã¸ã¥ã¼ã« åå æ°ãã æ°ãããã¼ã¸ã§ã³ æ³¨æ: ããªãã¯SVNããåå¾ãã Gallery ãåããã¦ãã¾ãããã®ããæè¿åé¤ããããã¡ã¤ã«ãããã«å­å¨ããããããã¾ããããããã¯ç¡è¦ãã¦ããæ¹ãå®å¨ã§ã æ³¨æ: ããªãã¯SVNããåå¾ãã Gallery ãåããã¦ãã¾ãããã®ããããã¤ãã®å¤æ´ããããã¡ã¤ã«ãããã¨æããã¾ããããããç¡è¦ãããã¨ãã§ãã¾ãããã¢ãããã¼ãç¶ããåã« 'scn update' ãå®è¡ããã»ããå®å¨ã§ã å¤ããã¡ã¤ã« (%d) ãã£ããã¢ããã°ã¬ã¼ããå§ããããç¦ããªãã§ãã ãããã­ã£ã³ã»ã«ããªã­ã¼ããããã¨ãã¢ããã°ã¬ã¼ããã­ã»ã¹ããã¾ãè¡ããªãå¯è½æ§ãããã¾ã ãã®ä» åºåãããã¡ã¼ãç¡å¹ PHP ãã¼ã¸ã§ã³ PHP ãã¼ã¸ã§ã³ 4.3.0 ä»¥ä¸ã¾ãã¯ 5.0.4 ä»¥ä¸ ãã¹ã¯ã¼ã: config.php ãåãã§ãã¯ ãã®ã¹ããããããä¸åº¦ æ­£è¦è¡¨ç¾ å¿è¦äºé  ã»ã¼ãã¢ã¼ã ã»ã¼ãã¢ã¼ãã¯ç¡å¹ã§ã è¨èªé¸æ: ã¢ããã°ã¬ã¼ããã¹ã­ããããã¹ããã Step %d ã«ç¶ã&raquo; ã³ã¢ã¢ã¸ã¥ã¼ã«ãã¢ããã°ã¬ã¼ãããéã«ãä½ãããããããªãã¾ãããä¸ã®æ ã®ä¸­ã«ããããã°ã®æå ±ãããã¾ããããã %sGallery Forums%s ã«å ±åãã¦ãã ãããæããåé¡ã®åæãæä¼ããã¨ãã§ããã§ããã ã¹ã¿ãã¯ãã¬ã¼ã¹: ããç´ãã¦ãã ãã ã¹ãã¬ã¼ã¸ãã£ã¬ã¯ããªã®ãã¼ããã·ã§ã³ æå ã­ã£ãã·ã¥åé¤ãå®äºãã¾ãã ã·ã¹ãã ãã§ãã¯ ãã®ä»ã®ã¨ã©ã¼ã«ãã£ã¦ããã¹ããã¹ã­ããããã¾ãã Gallery ã®ã³ã¢ã¢ã¸ã¥ã¼ã«ã¯ãGallery ã®å¿èé¨ã§ãããã®ä»ã¢ã¸ã¥ã¼ã«ã¯ãµã¤ãç®¡çããã¢ããã°ã¬ã¼ãã§ãã¾ãããã³ã¢ã¢ã¸ã¥ã¼ã«ã¯ã¹ã ã¼ãºã«é²ããããã«å¥ã«æ±ãããªããã°ããã¾ããã ä»¥ä¸ã®ãã©ã°ã¤ã³ã¯åä½ä¸­ã§ããããæ¬ è½ãã¦ããããGalleryã®ç¾å¨ã®ãã¼ã¸ã§ã³ã¨äºææ§ãããã¾ããããããã¯ç¡å¹åããã¾ãããææ°çã®ãã©ã°ã¤ã³ãã¤ã³ã¹ãã¼ã«ãã¦ãããä¸åº¦æå¹åããªããã¦ãã ãããä»¥ä¸ã®ãã©ã°ã¤ã³ã¯åä½ä¸­ã§ããããæ¬ è½ãã¦ããããGalleryã®ç¾å¨ã®ãã¼ã¸ã§ã³ã¨äºææ§ãããã¾ããããããã¯ç¡å¹åããã¾ãããææ°çã®ãã©ã°ã¤ã³ãã¤ã³ã¹ãã¼ã«ãã¦ãããä¸åº¦æå¹åããªããã¦ãã ããã ã¤ã³ã¹ãã¼ã«ãããããã¼ã¸ã§ã³ã¯ãã¢ããã°ã¬ã¼ããããã¨ãã¦ãããã¼ã¸ã§ã³ãããæ°ãããã®ã§ããG2 ããã¦ã³ã°ã¬ã¼ããããã¨ã¯ã§ãã¾ãããgallery2 ã®ãã¡ã¤ã«ãç¾å¨ã¤ã³ã¹ãã¼ã«ããã¦ãããã¼ã¸ã§ã³ãããæ°ãããã¼ã¸ã§ã³ã®ãã¡ã¤ã«ã«ç½®ãæãã¦ãã ãã ãã¼ã ãã¼ã ãããã®ãã¡ã¤ã«ã¯ãã¯ã Gallery ã®ä¸é¨ã§ã¯ããã¾ãããç¹ã«ä½ã®åé¡ãå¼ãèµ·ãããªãã¨æãã¾ãããã·ã¹ãã ãã¯ãªã¼ã³ãªç¶æã«ä¿ã¤ã«ã¯åé¤ããæ¹ãè¯ãã§ããGallery ã¯ãããã®ãã¡ã¤ã«ãåé¤ã§ãã¾ãããã%s ããã¦ã³ã­ã¼ããã¦ gallery2 ã®ãã£ã¬ã¯ããªã§å®è¡ããã°åé¤ãã¦ããã¾ãã ç¿»è¨³ã®å¯¾å¿ ããä¸åº¦å®è¡ãã ãã¼ã¸ã­ã£ãã·ã¥ãã¯ãªã¢ã§ãã¾ãã ãã¼ã¿ãã¼ã¹ãã©ã³ã¶ã¯ã·ã§ã³ãã³ãããã§ãã¾ãã %s ã¢ã¸ã¥ã¼ã«ãç¡å¹ã«ã§ãã¾ãã ãã¼ã %s ãç¡å¹ã«ã§ãã¾ãã ã¢ã¸ã¥ã¼ã«ãªã¹ããåå¾ã§ãã¾ãã ãã¼ããªã¹ããåå¾ã§ãã¾ãã Galleryã»ãã·ã§ã³ãåæåã§ãã¾ãã %s ã¢ã¸ã¥ã¼ã«ãèª­ã¿è¾¼ããã¨ãã§ãã¾ãã ãã¼ã %s ãèª­ã¿è¾¼ããã¨ãã§ãã¾ãã %s ã¢ã¸ã¥ã¼ã«ãã¢ããã°ã¬ã¼ãã§ãã¾ãã ãã¼ã %s ãã¢ããã°ã¬ã¼ãã§ãã¾ãã %s ãã£ã¬ã¯ããªã® config.php ã«æ¸ãè¾¼ããã¨ãã§ãã¾ããããã¼ããã·ã§ã³ãå¤æ´ãã¦ãã ãã æªç¥ ã¢ããã°ã¬ã¼ãé²è¡ç %d%% ã³ã¢ãã¢ããã°ã¬ã¼ã ãã©ã°ã¤ã³ã®ã¢ããã°ã¬ã¼ã ã¢ããã°ã¬ã¼ãã®ã¹ããã Gallery ã®ã³ã¢ã¢ã¸ã¥ã¼ã«ã®ã¢ããã°ã¬ã¼ãã«æåãã¾ãã %s ã¢ã¸ã¥ã¼ã«ã®ã¢ããã°ã¬ã¼ãã«æå %s ãã¼ãã®ã¢ããã°ã¬ã¼ãã«æå ã¢ããã°ã¬ã¼ãã¼ã®ãã«ã ã¢ã¸ã¥ã¼ã«ãã¢ããã°ã¬ã¼ãä¸­ Gallery ã®ã³ã¢ã¢ã¸ã¥ã¼ã«ãã¢ããã°ã¬ã¼ãä¸­ ãã¼ããã¢ããã°ã¬ã¼ãä¸­ è­¦å æ³¨æ: exec() æ©è½ã¯php.iniãã¡ã¤ã«ã® <b>diabled_functions</b> ãã©ã¡ã¼ã¿ã«ãã£ã¦ç¡å¹ã«ããã¦ãã¾ããå¤é¨ãã¤ããªãå¿è¦ã¨ããã¢ã¸ã¥ã¼ã«(ImageMagick NetPBM Ffmpeg ãªã©)ãä½¿ç¨ã§ããªãã§ããããããã¯ãµã¼ãå¨ä½ã«ããã£ã¦ã®ã¿è¨­å®ã§ãã¾ãã®ã§ãããã¯ã°ã­ã¼ãã«ãªphp.iniã«å¤æ´ãå ããå¿è¦ãããã¾ãã è­¦å: putenv() æ©è½ã¯php.iniãã¡ã¤ã«ã®<b>disabled_functions</b> ãã©ã¡ã¼ã¿ã«ãã£ã¦ç¡å¹ã«ããã¦ãã¾ããGalleryã¯ãã®è¨­å®ã§ãæ©è½ãã¾ãããä¸é¨ã¾ãã«è±èªä»¥å¤ã®è¨èªã§åä½ããªãå ´åãããã¾ãã è­¦å: set_time_limit() æ©è½ã¯php.iniãã¡ã¤ã«ã®<b>disabled_functions</b> ãã©ã¡ã¼ã¿ã«ãã£ã¦ç¡å¹ã«ããã¦ãã¾ããGalleryã¯ãã®è¨­å®ã§ãæ©è½ãã¾ãããå®å®æ§ã«åé¡ãããããããã¾ããã%d ç§ä»¥ä¸ã®ä½æ¥­ã¯ãã¼ã¿ã®è¡çªãå¼ãèµ·ããå¯è½æ§ãããã¾ããï¼å ´åã«ãã£ã¦ã¯ç©ºç½ã®ãã¼ã¸ãè¡¨ç¤ºããã¾ãï¼ è­¦å: ããªãã®å©ç¨ãã¦ããPHPã¯ããã¡ã¤ã«ã®ã¢ããã­ã¼ããè¨±å¯ããããã«è¨­å®ããã¦ãã¾ããã(php.ini ã®<b>file_uploads</b> ãã©ã¡ã¼ã¿). ãã©ã¦ã¶ã¼ãä½¿ã£ã¦ãã¡ã¤ã«ãã¢ããã­ã¼ãããå ´åã¯ããã®ãã©ã¡ã¼ã¿ãæå¹ã«ããå¿è¦ãããã¾ã è­¦å: ããªãã®ä½¿ç¨ãã¦ããPHPã¯ã¡ã¢ãªã¼ã %sb ã«å¶éããã¦ãã¾ãã(php.iniã®<b>memory_limit</b> ãã©ã¡ã¼ã¿)ãã®å¶éãå°ãªãã¨ã<b>%sMB</b>ã«å¼ãä¸ããå¿è¦ãããã¾ã è­¦å: ããªãã®ä½¿ç¨ãã¦ããPHPã¯POSTã®ãã¼ã¿ã®æå¤§å¤ã %sb ã«è¨­å®ããã¦ãã¾ãã(php.iniã®<b>post_max_size</b>ãã©ã¡ã¼ã¿)ãããå¤§ãããã¡ã¤ã«ãã¢ããã­ã¼ãããå ´åã¯ããã®å¶éãå¼ãä¸ãã¦ãã ãã è­¦å: ããªãã®ä½¿ç¨ãã¦ããPHPã¯ã¢ããã­ã¼ãã§ãããã¡ã¤ã«ã®ãµã¤ãºã %s ãã¤ãã¾ã§ã«å¶éããã¦ãã¾ãã(php.iniã®<b>upload_max_filesize</b> ãã©ã¡ã¼ã¿)ãããå¤§ãããã¡ã¤ã«ãã¢ããã­ã¼ãããå ´åã¯ããã®å¶éãå¼ãä¸ãã¦ãã ãã æ¬¡ã®ã­ã£ãã·ã¥ãã£ã¬ã¯ããªã®ä¸­ããåé¤ãããã¨ãã§ãã¾ããã§ãããããã¯åé¡ã¯ããã¾ããããä½ãããããªåä½ã«æ°ãã¤ããå ´åããããã®ãã£ã¬ã¯ããªãåé¤ãã¦ãã ãããããããåé¤ãã¦ããæ¹ãããã¤ã§ãå®å¨ã§ã Gallery ã®ã³ã¢ã¢ã¸ã¥ã¼ã«ã®ã¢ããã°ã¬ã¼ãã«æåãã¾ãã ãããã ãããã Gallery ã¢ããã°ã¬ã¼ããã¼ã¸ã¸ ãããä¿®æ­£ããã«ã¯<i>chmod 666 config.php</i>ãå®è¡ãã¦ãã ãã ããªãã¯ã¢ããã°ã¬ã¼ãã®ãã­ã»ã¹ãå®è¡ãã¾ããããæ­£ããconfig.php ãã¡ã¤ã«ãè¦ã¤ããã¾ãã Gallery ã®ã³ã¢ã¢ã¸ã¥ã¼ã«ã¯ææ°ã®ç¶æã§ã ããªãã® config.php ã¯ãã«ããµã¤ããµãã¼ãã®å¤ãå½¢å¼ãä½¿ç¨ãã¦ããããã§ããå½¢å¼ãã¢ããã°ã¬ã¼ãããããã«ã¯ãåã«é²ãåã« %sHelp File%s ã®æç¤ºãè¦ã¦ãã ãã Zend äºæã¢ã¼ã exec() è¨±å¯ ç¡å¶é putenv() è¨±å¯ set_time_limit() è¨±å¯ ãã®ã¹ã¯ãªãã 