��    $      <  5   \      0  $   1     V     e     �     �  6   �  �   �  �   �  `   +  �   �     U     h  M   �      �     �        B    ?   ^     �     �     �  �   �  �   H	    �	                .     G     `          �  5  �  r  �  )   P  �   z  �  h  *   �     $  #   3     W  +   m  @   �  �   �  �   �  m   r  �   �     �     �  P   �  /   I     y     �  ^  �  ?        D     L  #   R  �   v  �   	  5  �  #        1     C     \  "   v     �     �  _  �  �  &  ,   �                                 "                                   $                          	                !              #                                    
                        'Authorization Header' rule disabled Authentication Authentication Type Pattern: Authorization Header Bad URL rewrite configuration Gallery can handle HTTP Basic authentication directly. Gallery can't access HTTP usernames and passwords and automated checks failed to find a cause.  Troubleshooting documentation is in the %sGallery Codex%s. Gallery can't access HTTP usernames and passwords.  You can still use your web server's authentication.  Troubleshooting documentation is in the %sGallery Codex%s. Gallery tried to logout but failed.  You should close the browser window to logout successfully. Gallery will prompt you to login with HTTP authentication when permission is denied.  HTTP authentication sends your client a realm to which your username belongs.  It's safe to leave the realm blank. HTTP Auth Settings HTTP Authentication Realm: If you're not automatically redirected, %sclick here to finish logging out%s. Login using HTTP authentication. Logout failed Missing HTTP Authorization PHP Path Info rewrite doesn't support the rule to fall back on passing HTTP usernames and passwords to Gallery.  You should uninstall and reinstall the URL rewrite module in the %sSite Admin Plugins option%s and choose either Apache mod_rewrite or ISAPI_Rewrite.  Troubleshooting documentation is in the %sGallery Codex%s. Pass the Authorization header to Gallery in a request variable. Reset Save Settings saved successfully Specify here a regular expression which the authentication type must match for authentication to proceed; for instance /Negotiate/ Specify here a regular expression which the username must match for authentication to proceed and a string with which to replace it.  See PHP %s documentation for more information. The URL rewrite rule to fall back on passing HTTP usernames and passwords to Gallery is disabled.  You should activate the HTTP auth 'Authorization Header' rule in the %sSite Admin URL Rewrite option%s.  Troubleshooting documentation is in the %sGallery Codex%s. URL rewrite module disabled Unknown Cause Use HTTP Authentication: Use Regular Expressions: Use Web Server Authentication: Username Pattern: Username Replacement: We can't fall back on passing HTTP usernames and passwords to Gallery because the URL rewrite module is disabled.  You should activate the URL rewrite module in the %sSite Admin Plugins option%s and choose either Apache mod_rewrite or ISAPI_Rewrite.  Troubleshooting documentation is in the %sGallery Codex%s. You may wish to trust only HTTP authentication types or HTTP usernames which match specified regular expressions - or HTTP usernames may not match your Gallery usernames; for instance if using %s authentication, the REMOTE_USER environment variable may be username@REALM.TLD.  In these cases, you may use regular expressions to filter authentication types and usernames. You must enter a valid regular expression Your web server may offer more comprehensive and more secure authentication.  If you configured your web server to authenticate requests to Gallery, you may choose to trust the username it reports in the REMOTE_USER environment variable. Project-Id-Version: Gallery: HTTP Auth 0.5.1
Report-Msgid-Bugs-To: gallery-translations@lists.sourceforge.net
POT-Creation-Date: 2007-01-03 14:05+0100
PO-Revision-Date: 2007-01-08 18:11+0100
Last-Translator: Ermanno Baschiera <ebaschiera@gmail.com>
Language-Team: Italian <gallery-devel@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
 Regola 'Authorization Header' disabilitata Autenticazione Pattern del Tipo di Autenticazione: Header Autorizzazione Configurazione riscrittura URL non corretta Gallery può gestire l'autenticazione HTTP di base direttamente. Gallery non può accedere ai nomi utente e password HTTP e i controlli automatici non sono riusciti a trovare una causa. La documentazione per la risoluzione dei problemi si trova presso %sGallery Codex%s. Gallery non può accedere ai nomiutente e alle password HTTP. Puoi ancora usare l'autenticazione del tuo server web. La documentazione per la risoluzione dei problemi si trova presso %sGallery Codex%s. Gallery ha provato a fare il logout ma non ci è riuscita. Chiudi la finestra del browser per fare il logout. Gallery ti chiederà di fare il login con l'autenticazione HTTP quando i permessi sono negati. L'autenticazione HTTP manda al tuo client un realm a cui appartiene il tuo nome utente. Sarebbe più sicuro lasciare vuoto il realm. Configurazione HTTP Auth Realm Autenticazione HTTP: Se non vieni rediretto automaticamente, %sclicca qui per completare il logout%s. Fai il login utilizzando l'autenticazione HTTP. Logout fallito Autorizzazione HTTP mancante PHP PathInfo rewrite non supporta la regola di appoggiarsi a passare a Gallery i nomi utente e le password HTTP. Devi disinstallare e reinstallare il modulo URL rewrite in %sAmministrazione Sito opzione Plugins%s e scegliere Apache mod_rewrite oppure ISAPI_Rewrite. La documentazione per la risoluzione dei problemi si trova presso %sGallery Codex%s. Passa l'Authorization header a Gallery in una request variable. Annulla Salva Configurazione salvata con successo Specifica qui un'espressione regolare a cui il tipo di autenticazione debba corrispondere per consentire l'autenticazione; per esempio /Negotiate/ Specifica qui un'espressione regolare a cui il nome utente debba corrispondere per permettere l'autenticazione e una stringa che lo sostituisca. Vedi la %s documentazione di PHP per ulteriori informazioni. La regola di riscrittura URL per appoggiarsi a passare a Gallery i nomi utente e le password HTTP è disabilitata. Devi attivare la regola HTTP auth 'Authorization Header' in %sAmministrazione Sito opzione Riscrittura URL%s. La documentazione per la risoluzione dei problemi si trova presso %sGallery Codex%s. Modulo riscrittura URL disabilitato Causa Sconosciuta Usa Autenticazione HTTP: Usa Espressioni Regolari: Usa Autenticazione del Server Web: Pattern Nomeutente: Sostituzione Nomeutente: Non è possibile appoggiarsi a passare nomi utente e password HTTP a Gallery perché il modulo riscrittura URL è disabilitato. Devi attivare il modulo riscrittura URL in %sAmministrazione Sito opzione Plugins%s e selezionare Apache mod_rewrite oppure ISAPI_Rewrite. La documentazione per la risoluzione dei problemi si trova presso %sGallery Codex%s. Puoi decidere di ritenere attendibili solo i tipi di autenticazione HTTP o i nomi utente HTTP che corrispondano a una specifica espressione regolare - oppure i nomi utente HTTP possono non corrispondere ai nomi utente di Gallery; per esempio se usi l'autenticazione %s, la variabile d'ambiente REMOTE_USER potrebbe essere nomeutente@REALM.TLD. In questi casi, puoi usare delle espressioni regolari per filtrare i tipi di autenticazione e i nomi utente. Devi inserire un'espressione regolare valida Il tuo server web può offrire un'autenticazione più completa e sicura. Se hai configurato il tuo server web in modo da autenticare le richieste a Gallery, puoi scegliere di ritenere attendibile il nome utente riportato nella variabile d'ambiente REMOTE_USER. 