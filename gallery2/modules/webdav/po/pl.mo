��    (      \  5   �      p  �   q  !         %  #   F  E   j     �  �   �  "   �     �  .   �          "     <    P    i  z   r     �     	     	     +	  "  <	     _
  +   v
  4   �
     �
  �   �
  �   �  �   E  -   (     V     r  �   �     "     <     L    h    |  �   �  �     �  �  �   c  '     %   <  3   b  5   �  D   �               ;  =   M  "   �  "   �     �  f  �  7  N  �   �     3     P     ]     m  {  }     �  1     G   H     �  �   �  �   i    5  .   U  3   �     �  �   �     �      �   %   �   a  !  R  p"  �   �#  �   n$           	                                       
   '   %              "         (                         &       #                                  $                    !           %sClick here%s to mount Gallery on your desktop with a WebDAV client.  Documentation on mounting Gallery with WebDAV is in the %sGallery Codex%s. 'Connect to WebDAV' rule disabled 'OPTIONS Requests' rule disabled Alternative URL missing DAV headers Alternatively, you can enter the following URL in your WebDAV client: Bad URL rewrite configuration Because OPTIONS responses are missing DAV headers, we try to fall back on an alternative URL, but alternative URL responses are also missing DAV headers.  Troubleshooting documentation is in the %sGallery Codex%s. Configuration checked successfully Connect to WebDAV Give davmount resources the correct extension. HTTP auth module disabled HTTP auth plugin disabled Missing DAV headers Most WebDAV clients will fail to connect because the URL rewrite module is disabled.  You should activate the URL rewrite module in the %sSite Admin Plugins option%s and choose either Apache mod_rewrite or ISAPI_Rewrite.  Troubleshooting documentation is in the %sGallery Codex%s. Most WebDAV clients will fail to connect because the URL rewrite rule to generate short WebDAV URLs is disabled.  You should activate the 'Connect to WebDAV' rule in the %sSite Admin URL Rewrite option%s.  Troubleshooting documentation is in the %sGallery Codex%s. Most WebDAV clients will successfully connect.  Documentation on mounting Gallery with WebDAV is in the %sGallery Codex%s. Mount Gallery on your desktop. Mount WebDAV Mount with WebDAV OPTIONS Requests PHP PathInfo rewrite doesn't support the rule to fall back on an alternative URL.  You should uninstall and reinstall the URL rewrite module in the %sSite Admin Plugins option%s and choose either Apache mod_rewrite or ISAPI_Rewrite.  Troubleshooting information is in the %sGallery Codex%s. PHP has no XML support Path to an item (eg. /album/image.jpg.html) Redirect OPTIONS requests so we can set DAV headers. Remote Interfaces Some WebDAV clients, e.g. Mac OS X WebDAVFS, will fail to connect and automated checks failed to find a cause.  Troubleshooting documentation is in the %sGallery Codex%s. Some WebDAV clients, e.g. Mac OS X WebDAVFS, will fail to connect because OPTIONS responses are missing DAV headers.  Troubleshooting documentation is in the %sGallery Codex%s. The URL rewrite rule to fall back on an alternative URL is disabled.  You should activate the WebDAV 'OPTIONS Requests' rule in the %sSite Admin URL Rewrite option%s.  Troubleshooting documentation is in the %sGallery Codex%s. The URL to connect to Gallery with WebDAV is: URL rewrite module disabled Unknown Cause Use short URL because most WebDAV clients don't support query strings.  The Windows WebDAV client requires that you don't add a slash before the %path% variable. WebDAV Mount Instructions WebDAV Settings WebDAV requests not handled You can connect with WebDAV anonymously, but you can't do anything which requires you to login because neither HTTP authentication nor server authentication are enabled in the HTTP auth module.  You should activate HTTP authentication in the settings of the HTTP auth module. You can connect with WebDAV anonymously, but you can't do anything which requires you to login because the HTTP auth module is disabled.  You should activate the HTTP auth module in the %sSite Admin Plugins option%s.  Troubleshooting documentation is in the %sGallery Codex%s. You can't connect with WebDAV because PHP has no XML support on this server.  Troubleshooting documentation is in the %sGallery Codex%s. You can't connect with WebDAV because this server doesn't pass WebDAV requests to Gallery.  Troubleshooting documentation is in the %sGallery Codex%s. Project-Id-Version: Gallery: WebDAV 1.0.4
Report-Msgid-Bugs-To: gallery-translations@lists.sourceforge.net
POT-Creation-Date: 2006-11-16 01:37+0100
PO-Revision-Date: 2007-03-02 19:07+0100
Last-Translator: Kappana <kappana@gnoms.net>
Language-Team: Polish <gallery-translations@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
 %sKliknij tutaj%s, aby zmapować galerię na pulpicie za pomocą klienta WebDAV.  Dokumentacja na temat montowania galerii z WebDAV znajduje się na stronach %sGallery Codex%s. Reguła 'Połącz z WebDAV' wyłączona Reguła 'Żądania OPCJI' wyłączona Alternatywny adres URL brakującyh nagłówków DAV Lub, wpisz następujący adres URL w kliencie WebDAV: Nieprawidłowa konfiguracja modułu tworzenia krótkich adresów URL Ponieważ nie znaleziono odpowiedzi OPCJI w nagłówkach, galeria spróbowała zwrócić je w postaci alternatywnych adresów URL, niestety ich także nie odnaleziono w nagłówkach DAV.  Więcej informacji na ten temat znajduje się na stronach %sGallery Codex%s. Konfiguracja została sprawdzona Połącz z WebDAV Proszę podać źródłom davamount prawidłowe rozszerzenie. Moduł autoryzacji HTTP wyłaczony Moduł autoryzacji HTTP wyłaczony Brak nagłówków DAV Większość klientów WebDAV nie połączy się ponieważ funkcja tworzenia krótkich adresów URL jest wyłączona.  Zalecane jest aktywowanie modułu tworzenia krótkich adresów URL w %spanelu administracyjnym modułów%s i wybranie opcji Apache mod-rewrite lub ISAPI_Rewrite.  Więcej informacji na ten temat znajduje się na stronach %sGallery Codex%s. Większość klientów WebDAV nie połączy się ponieważ reguła tworzenia krótkich adresów URL jest wyłączona.  Zalecane jest aktywowanie reguły 'Połącz się z WebDAV' w opcjach %smodułu tworzenia krótkich adresów URL%s.  Więcej informacji na ten temat znajduje się na stronach %sGallery Codex%s. Większość klientów WebDAV nie będzie miało problemów z połączeniem.  Dokumentacja na temat montowania galerii z WebDAV znajduje się na stronach %sGallery Codex%s. Mapowanie galerii na pulpit. Mapuj WebDAV Zmapuj z WebDAV Żądanie OPCJI PHP PathInfo nie wspomaga reguły zwracania altrenatywnego adresu URL.  Zalecane jest odinstalowanie modułu tworzenia krótkich adresów URL w %spanelu administracyjnym modułów%s i wybranie jednej z dwóch konfiguracji modułu tworzenia krótkich adresów URL: Apache mod_rewrite lub ISAPI_Rewrite.  Więcej informacji na ten temat znajduje się na stronach %sGallery Codex%s. PHP nie wspiera obsługi XML Ścieżka do pozycji (np.: /album/image.jpg.html) Przekieruj żadanie OPCJI, aby umożliwić ustawienie nagłówków DAV. Zdalne interfejsy Niektórzy klienci WebDAV np. Mac OS X WebDAVFS nie połączą się, a automatyczne sprawawdzanie nie znajdzie przyczyny. Więcej informacji na ten temat znajduje się na stronach %sGallery Codex%s. Niektórzy klienci WebDAV np. Mac OS X WebDAVFS nie połączą się, ponieważ brak jest odpowiedzi OPCJI w nagłówkach DAV.  Więcej informacji na ten temat znajduje się na stronach %sGallery Codex%s. Reguła tworzenia krótkich adresów URL zwracająca altrenatywny adres URL jest wyłączona.  Zalecane jest aktywowanie reguły 'Żądania OPCJI' WebDAV w opcjach %smodułu tworzenia krótkich adresów URL%s.  Więcej informacji na ten temat znajduje się na stronach %sGallery Codex%s. Adres URL połączenia do galerii z WebDAV to: Moduł tworzenia krótkich adresów URL wyłączony Nieznana przyczyna Ponieważ większość klientów WebDAV nie wspiera sparametryzowanych adresów stron (query string), konieczne jest użycie krótkich adresów URL. W przypadku klienta WebDAV pod Windows, przed zmienną %path% nie wolno dodawać slash'a. Instrukcje mapowania WebDAV Ustawienia WebDAV Zapytania WebDAV nie są obsługiwane Możesz połączyć się z WebDAV anonimowo, ale ze względu na wyłączone autentykacje HTTP i serwera w module Autentykacji HTTP, nie możesz zrobic nic co wymaga zalogowania się.  Zalecane jest aktywowanie modułu autentykacji HTTP w %spanelu administracyjnym modułów%s. Więcej informacji na ten temat znajduje się na stronach %sGallery Codex%s. Możesz połączyć się z WebDAV anonimowo, ale ze względu na wyłączony moduł autentykacji HTTP nie będzie możliwe zrobienie niczego co wymaga zalogowania się.  Zalecane jest aktywowanie modułu autentykacji HTTP w %spanelu administracyjnym modułów%s. Więcej informacji na ten temat znajduje się na stronach %sGallery Codex%s. Nie można połączyć się z WebDAV ponieważ PHP na tym serwerze nie wspiera obsługi XML.  Więcej informacji na ten temat znajduje się na stronach %sGallery Codex%s. Nie można połączyć się z WebDAV ponieważ serwer nie przepuszcza zapytań WebDAV do galerii.  Więcej informacji na ten temat znajduje się na stronach %sGallery Codex%s. 