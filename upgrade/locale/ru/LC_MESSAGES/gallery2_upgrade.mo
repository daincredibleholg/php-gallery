��    |      �  �   �      x
     y
     �
     �
     �
  d   �
  5   J     �     �     �  	  �     �     �  �   �     s     �     �     �     �     �  �   �  �   n  u     �   x  �        �     �     �     �  	   �    �     �  F        [     ^     p  R   �  p   �  �   R  �   K  �     �   �  !   �     �     �     �                            }   +     �     �     �  	   �     �     �                 +   /  �   [  
   #     .     L     T     q  !     �   �  -  �  �   �     t     z    �     �  	   �     �  %   �     �       $   0     U     r     �     �  S   �     !     )     ?     L     a     z  *   �  #   �  "   �     �  �         �   !   �      !     !!  �  )!  (  �"    �#  M  �$  �   4&  �   �&  �   �'  �   l(    $)  �   3*  4   +     H+     P+  3   p+  G   �+  '   �+  �   ,  l   �,  �   -  �   �-     n.     w.  �  �.  7   S0  ?   �0  1   �0  9   �0  �   71  �   2     �2  )   �2  7   �2  c  3  ,   y5     �5  3  �5  $   �6     7     .7     J7     b7     s7  ?  �7    �8  �   �9    �:  S  �;     8=  4   P=     �=  '   �=     �=  X  �=  2   +@  H  ^@     �A  (   �A  9   �A  �   B  �   �B  �  �C  �  cF    H  �  'I  <    K  (   =K  9   fK  2   �K     �K     �K  
   �K     �K  '   
L    2L     OM  I   \M     �M     �M  .   �M  3   �M  '   (N     PN     gN  Q   �N  �  �N     `P  A   |P     �P  %   �P     �P  @   Q  �  TQ  �  �R  n  lU     �V     �V  �  �V  #   �X     Y  =   (Y  R   fY  A   �Y  9   �Y  Q   5Z  7   �Z  3   �Z  5   �Z  1   )[  �   [[     �[  1   \  4   A\  ,   v\  2   �\     �\  X   �\  6   M]  4   �]     �]  )  �]  #   �_  C   `     X`     t`  �  �`  1  d  �  Of  g  h  �  }j  _  l  �  mm  �  o  E  �p  �  s  ]   �t     =u  Z   ]u  {   �u  �   4v  f   �v  "  w  �   @x  A  <y  v  ~z     �{     |         	   /   "            {   <         [   n   H       P      g   V   ^   '       q   U   \   d           m                  X   )          u   9   b       M   6   %      r   h   D       y   B   p   t               k   3   =       o   S   F   8   z      w   N       s   ,              `   Z                     1   i       @       a      A      _         ?   l          #           |   W              Y   +      j       $   
   E       Q   R   2       e   4   (      .       v          x   0             7       -   :       ;   &   C             *   T       L   c   I   ]   O       K   !   f           >         J   5           G        %s module needs configuration (un)check all <b>Error:</b> invalid password. <b>Error:</b> missing password. <b>Reminder</b>: Now check the permissions on config.php and make sure it is not globally writeable. An error occurred while upgrading Gallery Core Module Authenticate Authenticate Me Authentication successful! Before you upgrade, we <b>strongly recommend</b> that you make a backup of your database!  If you fail to make a backup and something goes wrong, there is a strong possibility that we will not be able to help you recover your data!  Refer to the following examples: Begin Upgrade Config.php upgrade Congratulations! Your Gallery 2 upgrade is complete!  To upgrade any additional Gallery 2 modules you may use the Site Administrator interface. Continue to Step %d&raquo; Current Currently installed Delete Caches Description Empty Cache Error: Some files and or directories in your storage directory are not writeable by the webserver user. Run chown -R webserverUser %s OR run chmod -R 777 %s. Error: Your PHP is configured without support for %sPerl Compatible Regular Expressions%s. You must enable these functions before Gallery will run. Error: Your version of PHP is configured with safe mode enabled.  You must disable safe mode before Gallery will run. Error: your PHP __FILE__ directive is not functioning correctly. Please file a support request with your webserver administrator or in the Gallery forums. Even though there were errors, you can still continue.  Or, you can try deleting these directories yourself and then click the <b>Try Again</b> link below. FILE Directive FILE directive supported Failed Finish Upgrade Finished! Gallery creates temporary copies of some of your data on your hard drive.  This helps it to run faster.  But when you upgrade, some of these files might be out of date so it's a good idea to get rid of them now.  Gallery will create them again as it needs them. Gallery file integrity Gallery: <strong>your photos</strong> on <strong>your website</strong> Go Go to my Gallery! Go to the Gallery 2 Installer If you actually want to run the Gallery 2 installer, please follow the link below. If you are using Apache, create a file named .htaccess in the main Gallery directory with the following content: If you have a busy site, consider putting your Gallery in maintenance mode. This gives visitors a message that the site is temporarily offline, rather than showing everybody this upgrade page. Edit your config.php file to activate maintenance mode. If you want to upgrade from Gallery 1, you first need to install Gallery 2 and then use the import module to import your data from Gallery 1. Please follow the link below to install Gallery 2. If you've lost your config.php file when replacing the Gallery 2 files in the preparation for this upgrade, please restore it and try again. In order to proceed with the install, we have to verify that you are who you claim.  When you performed the install, you entered a password which went into your config.php.  Type that in now.  Refer to your config.php if you've forgotten what you entered. Manifest missing or inaccessible. Missing files (%d) Missing or invalid config.php Modified files (%d) Module Name New New version Old files (%d) Once the upgrade has begun, please be patient.  If you cancel or reload the page, you may interfere with the upgrade process. Other Output buffering disabled PHP Version Password: Recheck config.php Redo this step Regular expressions Required Select Language: Skip Upgrade and Continue to Step %d&raquo; Something went wrong when we tried to upgrade the core module.  In the boxes below you can find some debug information.  Report this in the %sGallery Forums%s and we'll help you diagnose the problem. Start Over Storage Directory Permissions Success Successfully cleaned caches. System Checks Test skipped due to other errors. The Gallery Core Module is the heart of the Gallery application.  You can upgrade most other modules using the Site Administration interface, but this module must be handled separately in order for the upgrade to go smoothly. The following modules can be automatically upgraded for you.  If you choose not to upgrade them now, you may experience problems with your Gallery.   You can always upgrade or deactivate them on the Site Administration page, or return to this page later so any decision you make here is not permanent. The installed version is newer than the version you are trying to upgrade to. You cannot downgrade G2. Please replace the gallery2 files with files from the currently installed version or later. Theme Themes These files are no longer part of Gallery. They probably won't cause any problems but it is a good idea to remove them to keep your install clean.  Gallery can't remove these files for you, but you can download and run %s in your gallery2 directory to delete them for you. Translation support Try Again Unable to clear the page cache Unable to commit database transaction Unable to get the module list Unable to get the theme list Unable to initialize Gallery session Unable to load the %s module Unable to load the %s theme Unable to upgrade the %s module Unable to upgrade the %s theme Unable to write to config.php in your %s directory.  Please change its permissions. Unknown Upgrade %d%% complete Upgrade Core Upgrade More Modules Upgrade Selected Modules Upgrade Steps Upgraded Gallery Core Module successfully. Upgraded the %s module successfully Upgraded the %s theme successfully Upgrader Help Upgrading Gallery 2 requires %d steps. This upgrade tool will guide you through these steps and provide assistance along the way if additional steps are required. Please read the %sHelp File%s before proceeding. Upgrading modules Upgrading the Gallery Core Module Upgrading themes Warning Warning: Output buffering is enabled in your php by the <b>%s</b> parameter(s) in php.ini.  Gallery can function with this setting - downloading files is even faster - but Gallery might be unable to serve large files (e.g. large videos) and run into the  memory limit. Also, some features like the progress bars might not work correctly if output buffering is enabled unless ini_set() is allowed. Warning: The exec() function is disabled in your php by the <b>disabled_functions</b> parameter in php.ini. You won't be able to use modules that require external binaries (e.g. ImageMagick, NetPBM or Ffmpeg). This can only be set server-wide, so you will need to change it in the global php.ini. Warning: The putenv() function is disabled in your php by the <b>disabled_functions</b> parameter in php.ini.  Gallery can function with this setting, but on some rare systems Gallery will be unable to run in other languages than the system language and English. Warning: The set_time_limit() function is disabled in your php by the <b>disabled_functions</b> parameter in php.ini.  Gallery can function with this setting, but it will not operate reliably.  Any operation that takes longer than %d seconds will fail (and in some cases just return a blank page) possibly leading to data corruption. Warning: Your PHP is configured not to allow file uploads (<b>file_uploads</b> parameter in php.ini). You will need to enable this option if you want to upload files to your Gallery with a web browser. Warning: Your PHP is configured to limit the memory to %sb (<b>memory_limit</b> parameter in php.ini). You should raise this limit to at least <b>%sMB</b> for proper Gallery operation. Warning: Your PHP is configured to limit the post data to a maximum of %sb (<b>post_max_size</b> parameter in php.ini). You should raise this limit to allow uploading bigger files. Warning: Your PHP is configured to limit the size of file uploads to %sb (<b>upload_max_filesize</b> parameter in php.ini). You should rise this limit to allow uploading bigger files. Warning: Your PHP is configured with Zend ze1_compatibility_mode which can cause PHP to crash.  Click <a href="%s">here</a> to test your PHP.  If you see "SUCCESS" then your PHP is ok.  If you get an error then you must turn off ze1_compatibility_mode before proceeding. We were unable to clean the following cache directories.  This is probably ok, but if you notice any weird behaviour, you should try to delete these directories yourself.  It's perfectly safe to get rid of them at any time. We've successfully upgraded the Gallery Core Module. Welcome Welcome to the Gallery Upgrader You can do <i>chmod 666 config.php</i> to fix this. You tried to run the upgrade process but a valid config.php is missing. Your Gallery Core Module is up to date! Your PHP is missing the function %sbind_textdomain_codeset%s. This means Gallery may display extended characters for some languages incorrectly. Your PHP is missing the function %sdngettext%s. This means Gallery will be unable to translate plural forms. Your config.php appears to use the old form of multisite support.  Please see the %sHelp File%s for instructions to update your configuration before proceeding. Your webserver does not support localization. To enable support for additional languages please instruct your system administrator to reconfigure PHP with the %sgettext%s option enabled. no limit this script Project-Id-Version: Gallery: Upgrader 2.2
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2005-11-19 08:04-0800
PO-Revision-Date: 2006-03-17 15:41+0300
Last-Translator: Konstantin Ivanov <Continental@vollen.ru>
Language-Team: Russian <gallery-devel@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Poedit-Language: Russian
X-Poedit-Country: RUSSIAN FEDERATION
 %s модуль требует конфигурации отметить все/снять отметку со всех <b>Ошибка:</b> пароль неверен. <b>Ошибка:</b> пароль отсутствует. <b>Напоминание</b>: Теперь проверьте разрешения на config.php и удостовертесь, что они не являются доступными для записи глобально. Возникла ошибка в процессе обновления основного модуля Галереи (ядра) Авторизация Идентифицировать меня Идентификация прошла успешно! Перед тем как Вы начнете процесс обновления, мы <b>настоятельно рекомендуем</b>, чтобы Вы сделали резервную копию (backup) Вашей базы данных. Если Вам не удасться сделать резервную копию и что-то пойдет не так, существует большая вероятность того, что мы не сможем помочь Вам восстановить Ваши данные! Обратите внимание на следующие примеры: Приступить к Обновлению Обновление Config.php Поздравляем! Обновление Галереи 2 успешно завершено! Для обновления любых дополнительных модулей в Галерее 2 Вы можете воспользоваться интерфейсом Администрирования. Перейти к Шагу %d&raquo; Текущая Текущая версия Очистка Кэша Описание Очистка Кэша Ошибка: некоторые файлы или директории в вашей директории хранилища не имеют возможности записи для пользователя webserver. Запустите команду chown -R webserverUser %s или команду chmod -R 777 %s. Ошибка: Ваша версия PHP сконфигурирована без поддержки %sPerl Compatible Regular Expressions%s.  Вы должны включить данную функцию перед тем как Галерея будет запущена. Ошибка: Ваша версия PHP сконфигурирована с параметром safe mode enabled.  Вы должны отключить режим safe mode перед тем, как Галерея будет запущена. Ошибка: Ваша PHP __FILE__ директива функционирует неверно. Пожалуйста, обратитесь за поддержкой к администратору Вашего веб-сервера или на форумы Галереи. Несмотря на то, что присутствовали ошибки, Вы все еще можете продолжить. Или, Вы можете попытаться удалить этим директории вручную и замем кликнуть на ссылку  <b>Проверить заново</b> внизу. Директива FILE Директива FILE поддерживается Неудачно Обновлению завершено Завершено! Галерея создает временные копии некоторых данных на Вашем жестком диске. Это позволяет ей работать быстрее. Однако, когда вы производите обновление, некоторые из этих файлов могут оказаться устаревшими, поэтому лучшим способом будет избавиться от них прямо сейчас. Галерея сможет создать их снова, как только они понадобяться. Целостность файлов Галереи Перевод на русский язык: <a href="http://www.konstantinivanov.info" target="_blank">Константин Иванов</a>. Галерея: <strong>Ваши фотографии</strong> на <strong>Вашем веб-сайте</strong> :: <a href="http://www.gallery2.ru" target="_blank">www.gallery2.ru</a> Вперед Перейти в мою галерею! Перейти к инсталляции Галереи 2 Если Вы дейсвительно хотите запустить инсталляцию Галереи 2, пожалуйста, проследуйте по ссылки ниже. Если Вы используете Apache, создайте файл под названием .htaccess в Вашей главной директории Галереи со следующим содержанием: Если Вам сайт является посещаемым, рекомендуется переключить Галереию в режим обслуживания. В данном режиме посетители сайта увидят сообщение, предупреждающее о том, что сайт временно не доступен и находится на обслуживании. В противном случае, они данную увидят страницу  мастера обновления. Отредактируйте Ваш config.php чтобы активировать режим обслуживания (параметр maintenance mode). Если Вы хоитете обновить Галерею 1, то сначала Вам необходимо инсталлировать Галерею 2, и затем использовать модуль импорта для импорта Ваших данных из Галереи 1. Пожалуйста, проследуйте по ссылке ниже, чтобы инсталлировать Галерею 2. Если вы утратили Ваш файл config.php при подготовке к этому обновлению во время перезаписи файлов Галереи 2, пожалуйста, восстановите его и попробуйте еще раз. Для того, чтобы продолжить инсталляцию, нам необходимо проверить, то Вы тот, за кого себя выдаете. Когда вы запускали инсталляцию, Вы вводили пароль, который был записан в файл config.php. Введите его теперь. Обратитесь к Вашему config.php, если Вы забыли, кто Вы вводили. Manifest отсутствует или недоступен. Отсутствуют файлов (%d) Отсутствует или неверный config.php Модифицированных файлов (%d) Модуль Имя Новая Новая версия Устаревших файлов  (%d) Как только процесс обновления начался, пожалуйста, запаситесь терпением. Если вы отмените или обновите страницу, Вы можете вмешаться в процесс обновления. Другие Буфферизация выходных данных отключена Версия PHP Пароль: Повторная проверка config.php Повторно выполнить этот шаг Регулярные выражения Обязательно Выберете язык: Пропустить Обновление и Перейти к Шагу %d&raquo; Что-то пошло не так, когда мы пытались обновить основной модуль (ядро). В полях ниже Вы сможете найти некоторую отладочную информацию. Сообщите ее в %sФорумах Галереи%s и мы поможем Вам разбоаться с возникшей проблемой. Начать сначала Разрешения на Директорию Хранилища Успешно Кэша успешно очищен. Проверка системы Тест пропушен в виду других ошибок. Основной Модуль Галереи - это ядро приложения Галерея. Вы можете обновить большинство модулей, используя интерфейс Администрирования, но этот модуль требует особенного внимания, чтобы процесс обновления прошел гладко. Следующие модули могут быть обновлены автоматически. Если Вы решите не обновлять их сейчас, Вы, возможно, столкнетесь с некоторыми проблемами в Вашей Галерее. Вы всегда сможете обновить, либо деактивизировать их на странице Администрирования, или вернуться к данной странице позже, так что любое принятое Вами решение не будет являться окончательным. Установленая версия является более новой, чем та, на которую Вы хотите произвести обновление. Вы не можете понизить версию G2. Пожалуйста, заметите файлы gallery2 из текущей инсталляции или более поздними. Тема Темы Эти файлы больше не являются частью Галереи. Возможно, они не вызовут никаких проблем, но лучше будет удалить их для поддержания инсталляции в порядке. Галерея не может удалить эти файлы за Вас, однако Вы можете загрузить и запустить %s в Вашей директории gallery2 для их удаления. Поддержка перевода Проверить заново Невозможно очистить клэ страницы Невозможно выполнить транзакцию базы данных Невозможно получить список модулей Невозможно получить список тем Невозможно инициализировать сессию Галереи Невозможно загрузить модуль %s Невозможно загрузить тему %s Невозможно обновить модуль %s Невозможно обновить тему %s Невозможно записать в config.php в Вашей %s директории. Пожалуйста, измените его разрешения. Неизвестно Обновление завершено на %d%% Обновление основного модуля Обновить больше Модулей Обновить Отмеченные Модули Шаги Обновления Основной Модуль (Ядро) Галереи успешно обновлен. Модуль <i>%s</i> успешно обновлен Тема <i>%s</i> успешно обновлена Помощь Для обновления Gallery 2 потребуется проделать %d шагов. Эта программа поможет Вам пройти эти шаги, а так же обеспечит полную поддержку во время обновления, в случае если потребуется проделать какие-либо дополнительные действия. Пожалуйста, внимательно прочитайте  %sфайл справки%s перед тем, как продолжить. Обновление модулей Обновление Основного Модуля Галереи Обновление тем Предупреждение Внимание: буфферезация выходных данных включена в настройках php установкой <b>%s</b> параметра(ов) в php.ini.  Галерея может функционировать с данной опцией - загрузка файлов будет происходить даже быстрее - но Галерея не сможет обрабатывать большие файлы (например, длинные видеоролики) и будет ограничена размером памяти. Кроме того, некоторые функции такие как статусная строка процента выполнения может работать некорректно, если буфферезация выходных данных включена пока разрешен параметр ini_set(). Предупреждение: Функция exec() отключена в Вашем php в разделе <b>disabled_functions</b> в  php.ini. Вы не сможете использовать модули, которые требуют внешних бинарных кодов (например, ImageMagick, NetPBM или Ffmpeg). Эта функция может быть установлена только на стороне сервера, поэтому Вам будет необходимо поменять ее в глобальном  php.ini. Предупреждение: Функция putenv() отключена в Вашем php в разделе <b>disabled_functions</b> в  php.ini. Галерея может функционировать без данной настройки, но на некоторые редких системах Галерея не сможет быть запущена на другом языке, чем системный язык и Английский.  Предупреждение: Функция set_time_limit() отключена в Вашем php в разделе <b>disabled_functions</b> в  php.ini. Галерея может функционировать с такими параметрами, но ее работа будет ненадежной. Любая операция, которая длиться дольше чем %d секунд, будет выполнена неудачно (и в некоторых случаях возвратит лишь белый экран), возможно, следуя к повреждению данных. Предупреждение: Ваш PHP сконфигурирован таким образом, что запрещает загрузку файлов. (параметр <b>file_uploads</b> в php.ini). Вы должны разрешить данную функцию, если Вы хотите загружать файлы в Вашу Галерею с помощью веб-браузера. Предупреждение: Ваш PHP сконфигурирован с ограничением памяти %sb (параметр <b>memory_limit</b> в php.ini). Вы должны увеличить это значение по крайней мере до <b>%sMB</b> для нормального фунционирование Галереи. Предупреждение: Ваш PHP сконфигурирован таким образом, чтобы ограничивать размер загружаемых данных до %sb (параметр <b>post_max_size</b> в php.ini). Вы должны увеличить предельное значение для того, чтобы разрешить загрузку файлов больших размеров. Предупреждение: Ваш PHP сконфигурирован таким образом, чтобы ограничивать размер загружаемых файлов до %sb (параметр <b>upload_max_filesize</b> в php.ini). Вы должны увеличить предельное значение для того, чтобы разрешить загрузку файлов больших размеров. Предупреждение: Ваш PHP сконфигурирован с Zend ze1_compatibility_mode, что может привести к сбою PHP. Нажмите <a href="%s">здесь</a>, чтобы протестировать Ваш PHP. Если Вы видите ("УСПЕШНО") "SUCCESS", значит Ваш PHP в порядке.  Если Вы получили сообщение об ошибке или остались без ответа, тогда Вы должн выключить ze1_compatibility_mode перед тем как продолжить. Неудалось очистить следующие кэш директории (cache). Скорее всего это нормально, но если Вы заметите любое непредсказуемое поведение, Вы должны будете попытаться стереть эти директории вручную. Это абсолютно безопасно избавляться из них в любое время. Мы успешно обновили основной модуль (ядро) Галереи. Добро пожаловать Добро Пожаловать в Программу Обновления Галереи. Вы можете сделать это командой <i>chmod 666 config.php</i>, чтобы исправить это. Мы пытались запустить процесс обновления, но верный config.php отсутствует Версия Основного Модуля (ядра) является самой последней В вашей сборке PHP отсутствует функция %sbind_textdomain_codeset%s. Это означает, что Галерея может отображать расширенный набор символов для некоторых языков некорректно. В вашей сборке PHP отсутствует функция %sdngettext%s. Это означает, что Галерея не сможет работать с переводом слов в форме множественного числа. Похоже Ваш config.php использует старую форму мультисайтовой поддержки. Пожалуйста, обратитесь к %sФайлу Помощи%s за инструкциями, как обновить конфигурацию, прежде чем продолжить. Ваш Веб-сервер не поддерживает локализацию. Для получения возможности поддержки дополнительных языков обратитесь за помощью к системному администратору для реконфигурации PHP с включенной опцией %sgettext%s. без ограничений этот скрипт 