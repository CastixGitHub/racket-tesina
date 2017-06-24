#lang scribble/base

@(require scribble/core)

@title{(LISP "The oldest programming language of the future")}
@author{Castiglia Vincenzo}

@linebreak{}

@larger{@bold{(Abstract)}}
@para{
 http://racket-md5.tk@linebreak{}
 La mia tesina tratta di Racket, della sua storia, della sua infinita versatilità
 e della realizzazione dei miei due progetti che sono:@linebreak{}
 - L'implementazione dell'algoritmo md5@linebreak{}
 - La creazione del sito web racket-md5.tk@linebreak{}
}
@linebreak{}

Table Of Contents
@table-of-contents[]



@linebreak{}

@section[#:style 'hidden-number]{(Introduzione)}

@subsection[#:style 'hidden-number]{'(Racket)}
@para{
 Racket è un dialetto Lisp e un discendente di Scheme. Sviluppato e disegnato dalla PLT Incorporated,
 gruppo di ricerca che poco dopo è divenuto un progetto orientato alla produzione di materiale
 didattico per programmatori. fondato da Matthias Felleisen.
 Racket è general-purpouse ed uno dei suoi obiettivi è quello di essere una piattaforma per la
 creazione di nuovi linguaggi, come ad esempio Arc.
 È distribuito con licenza LGPL ed è quindi software libero.
}

@subsection[#:style 'hidden-number]{'(Scheme)}
@para{
 Racket è un derivato di Scheme, uno dei due dialetti principali della famiglia Lisp,
 sviluppato nel 1970 da Guy L. Steele e Gerald Jay Sussman. Anch'esso nato nel mondo accademico,
 viene usato nel libro SICP (Structure and Interpretation of Computer Programs) che per decenni
 è stato adottato da svariate università americane.
}

@subsection[#:style 'hidden-number]{'(Lisp)}
@para{
 Lisp è una famiglia di linguaggi di programmazione la cui sintassi si distingue per il suo impiego
 della notazione infix e l'uso delle parentesi.
 È stato disegnato nel 1958 da John McCarthy, è quindi il secondo linguaggio di programmazione
 ampiamente usato preceduto solo dal fortran che è più vecchio di solo un anno.
 Lisp è stato creato come una pratica notazione matematica da usare nei programmi, si basa quindi
 sul lavoro di molti matematici quali Alonzo Church (noto per il lambda calcolo) e
 Albert Thoralf Skolem (noto per aver sviluppato la teoria delle funzioni ricorsive al fine di
 evitare i paradossi dell'infinito).
 Lisp è subito diventato subito il linguaggio più usato per l'AI (Inteligenza Artificiale).
 il suo nome significa LISt Processor e  sia il codice sorgente che i dati di un programma lisp sono
 composti da liste, sotto forma di s-expressions. questo permette alle macro di cambiare il codice
 sorgente durante la sua esecuzione.
 Lisp è stato un pioniere nelle idee dell'informatica, come le strutture ad albero, garbage
 collection, tipizzazione dinamica, condizionali, separazione dello scope, ricorsione,
 compilatore self-hosting, REPL.
}

@subsubsection[#:style 'hidden-number]{'(Alonzo church)}
@para{
 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
 labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
 nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit
 esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
 culpa qui officia deserunt mollit anim id est laborum.
}



@linebreak{}

@section[#:style 'hidden-number]{(Italiano "Eugenio Montale")}
@subsection[#:style 'hidden-number]{'(Intro)}
@para{
 Lisp, che è nato nel 1958 sembra essere stato dimenticato dagli attuali programmatori,
 che spesso preferiscono usare linguaggi più moderni. Tuttavia sono presenti nicchie di
 programmatori che ritengono fondamentale apprendere la programmazione funzionale
 e in particolare i dialetti lisp. Mi viene naturale fare un collegamento tra questi
 programatori e la linea antinovecentista, dove scrittori come Eugenio Montale a discapito
 delle avanguardie (Futurismo ed Ermetismo) che stavano rivoluzionando il modo di fare poesia
 vediamo l'utilizzo di stili e schemi appartenenti a tempi passati facendo sembrare la poesia di
 Montale non appartenente al secolo in cui sta scrivendo, ma appartenente al tempo passato.
}
@subsection[#:style 'hidden-number]{'(La vita)}
@para{
 Eugenio Montale nasce a Genova il 12 ottobre 1896 da una famiglia borghese: il padre, titolare di
 una ditta di importazione di prodotti chimici, nel 1905 fa costruire a Monterosso una villa nella
 quale la famiglia passerà le vacanze estive. Dopo gli studi tecnici, nel 1925, Montale consegue il
 diploma di ragioneria. Richiamato alle armi nel 1917 partecipa alle operazioni di guerra.@linebreak{}
 Nel 1925 esce OSSI DI SEPPIA, per le edizioni Gobetti. Nello stesso anno firma il Manifesto degli
 intellettuali antifascisti, di Benedetto Croce.@linebreak{}
 Negli anni successivi, Montale, collabora con varie riviste: in particolare, scrive alcuni articoli
 su Italo Svevo che contribuiranno alla scoperta dello scrittore.@linebreak{}
 Nel 1927 il poeta ottiene un impiego a Firenze che gli consente di raggiungere l'indipendenza
 economica dalla famiglia. Poco dopo viene nominato direttore del Gabinetto
 scientifico-letterario Viesseux.@linebreak{}
 Nel 1927 conosce Drusilla Tauzi che diventerà la sua compagna e moglie.@linebreak{}
 Nel 1938 viene allontanato dal Gabinetto Viesseux perché rifiuta di iscriversi al partito fascista.
 Nel 1939 esce per Einaudi il libro delle Occasioni dedicato a
 Irma Brandeis, conosciuta nel 1933.@linebreak{}
 Tra il 1945 e il 1946 si iscrive al partito d'azione e ottiene un incarico culturale dal Comitato
 di Liberazione nazionale(CLN). Nel 1945 fonda
 il quindicinale "Il Mondo" dirigendolo fino al 1947.@linebreak{}
 Nel 1948 viene assunto come redattore del "Corriere della sera" e si trasferisce a Milano.
 Il lavoro di giornalista sembra ridurre lo spazio per la scrittura poetica e il suo terzo libro
 di poesie "La Bufera e altro" contiene testi che risalgono alla guerra e al dopoguerra.@linebreak{}
 La dolorosa perdita della moglie (1963) lo spinge a riprendere la scrittura poetica. Il quarto
 libro "Satura", sarà pubblicato nel 1971.
 Nel 1967 riceve dal Presidente della repubblica Saragat la nomina di senatore a vita, nel 1975
 il premio nobel per la letteratura.@linebreak{}
 La produzione dell'ultimo periodo comprende: Diario del 71 e del 72 (1973), Altri versi (1980).
 Nel 1980 esce l'edizione critica della sua intera produzione L'opera nei versi.@linebreak{}
 Montale muore a Milano il 12 settembre 1981.
}
@subsection[#:style 'hidden-number]{'(Temi)}
@para{
 Le raccolte di Montale presentano caratteri molto diversi tra loro che nascono dalla naturale
 evoluzione della poetica montaliana, dalle diverse condizioni storiche nella quale si svolge e
 dal confronto con i principali movimenti letterari del secolo come il Simbolismo,
 l'ermetismo e il Neorealismo.@linebreak{}
 Le prime 3 raccolte hanno alla base una visione della vita amara, dominata dalla consapevolezza
 del tramonto di ogni sicurezza metafisica. Il mondo non ha senso e la vita umana è una pura
 casualità gettata in un universo senza Dio. L'unico dato tangibile è il dolore. Questa è una
 tematica molto utilizzata dagli autori del secolo, ma che in Montale assume una forma originale.
 Il suo radicale pessimismo non porta all'autocommiserazione, ma ad una profonda e disincantata
 accettazione del "Male di vivere".@linebreak{}
 La posizione di Montale si configura, dunque, come una scelta etica ed estetica.
 Etica perché l'insensatezza del mondo costituisce solo il punto di partenza di un insensata
 ricerca di risposte e di verità, ed è una scelta estetica perché il ruolo di Montale è quello
 di rappresentare con la massima onestà la tensione di una ricerca che si sa votata al fallimento.
 La prima raccolta, Ossi di seppia, è l'espressione di un Io lirico introverso e bloccato, tra la
 fine delle illusioni dell'infanzia e un futuro incerto, in una condizione di impotenza
 e quasi di "paralisi".@linebreak{}
 La descrizione del paesaggio ligure riflettono tale condizione: il mare rappresenta l'infanzia,
 quel luogo in cui risiedeva la possibilità di rapporto armonico che nella vita adulta si è perduto
 per sempre; la terra, aspra e pietrosa, descritta con assoluta precisione, è luogo d'esilio,
 emblema di un irrimediabile " male di vivere", ma anche di un atteggiamento si asciutta fermezza.
 In "Le occasioni" il paesaggio ligure scompare, per riaffiorare in alcuni testi legati alla tematica
 della memoria. L'Io lirico appare sempre più senza centro e chiuso in se stesso, teso soprattutto
 a opporre il proprio oscuro lavoro in difesa della civiltà e della poesia.@linebreak{}
 L'attenzione dell'autore si volge dalla natura allo spazio interiore della memoria,
 ai talismani, ma soprattutto all'amore.@linebreak{}
 Ai personaggi femminili degli "Ossi di seppia", importanti ma non centrali, si sostituisce
 la donna che sarà chiamata poi Clizia. La funzione di Clizia nella struttura della raccolta,
 donna angelo, verrà accostata a quella della Beatrice di Dante.@linebreak{}
 La donna, per Montale, rappresenta la speranza che, nonostante tutto,
 alimenta la ricerca e la parola del poeta.@linebreak{}
 La figura di Clizia domina anche " La bufera e altro" e i valori positivi di cui è portatrice
 si oppongono alle totali barbarie della Seconda Guerra Mondiale. Qui, l'Io lirico sospeso e
 perplesso delle "Occasioni" si concentra nella quasi religiosa attesa di una
 possibile salvezza per tutti.@linebreak{}
 Oppure, il poeta cerca nel colloquio con i propri morti quell'autenticità che non trova
 intorno a se. Ma a questi temi alti e sublimi si alternano anche temi più quotidiani e
 colloquiali che in parte anticipano la materia delle raccolte successive. Nella sezione dei
 "Madrigali privati" compare una nuova figura femminile, soprannominata Volpe, che, diversamente
 da Clizia, è una donna molto più "terrestre" e sensuale.
}
@subsection[#:style 'hidden-number]{'(Correlativo Ogettivo)}
@para{
 Montale guadagnò rapidamente una dimensione internazionale aperta anche a quegli aspetti della
 letteratura e del pensiero europei che sfuggivano al  clima italiano. Si avvicinò così alla poesia
 francese e poi a quella anglosassone. Questa apertura europea gli consentì di comprendere grandi
 autori italiani, all'epoca, poco apprezzati come Saba e Svevo.@linebreak{}
 Nonostante ciò, Montale non esclude un rapporto intenso con la letteratura italiana.@linebreak{}
 Tra glia altri grandi autori Montale si confronta con Foscolo, Petrarca e Dante. Occorre, inoltre,
 sottolineare che immagini e forme dell'immensa tradizione letteraria italiana sono riutilizzati da
 Montale in maniera funzionale, per introdurre nel linguaggio poetico contemporaneo uno scarto
 storico, differenziando la lingua poetica dal piatto e consueto linguaggio comune.@linebreak{}
 Secondo Montale, il rischio maggiore per la poesia deriva dalla moltiplicazione esponenziale di
 lunghe parole, suoni, immagini che si intrecciano quotidianamente sulla superficie del pianeta,
 a questa "saturazione". Egli reagisce in modo del tutto originale. Infatti egli si rifà a una
 tradizione poetica " non realistica, non romantica e nemmeno strettamente decadente" che egli
 stesso definisce "metafisica".@linebreak{}
 Montale usava una tecnica particolare, definita "correlativo oggettivo".@linebreak{}
 Essa consiste nel rappresentare gli oggetti come emblemi del destino dell'uomo e della sua
 condizione esistenziale. È una tecnica che porta a una forte concentrazione formale, ma anche
 a una certa "oscurità" e non a caso la sua poesia fu spesso associata, erroneamente, a quella
 ermetica. Erroneamente perché, diversamente dalla poesia ermetica, in quella di Montale, il poeta
 si limita ad esprimere l'oggetto, il dato esterno e reale assunto come emblema della
 condizione esistenziale.@linebreak{}
 La sua poesia è difficile, ma non oscura e indefinita.@linebreak{}
 Per comprendere il rapporto che il poeta instaura tra l'oggetto e il suo significato è richiesta
 al lettore una complessa mediazione intellettuale e culturale.@linebreak{}
 Lo stile di Montale nelle prime tre raccolte dal simbolismo all'allegorismo, tuttavia diverso
 tra le "Occasioni" e la "Bufera".@linebreak{}
 Per quanto riguarda le forme metriche Montale rifiuta gli esiti estremi delle avanguardie
 e tende a una forma chiara e definita.@linebreak{}
 Si tratta della ricerca di una nuova e personale regolarità.@linebreak{}
 Frequente è l'uso della quartina e delle forme che ricordando le forme tradizionali.@linebreak{}
}
@subsection[#:style 'hidden-number]{'(Opere)}
@subsubsection[#:style 'hidden-number]{'(Ossi di seppia)}
@subsubsection[#:style 'hidden-number]{'(Le occasioni)}
@subsubsection[#:style 'hidden-number]{'(La bufera ed altro)}
@subsubsection[#:style 'hidden-number]{'(Satura e le ultime raccolte)}



@linebreak{}

@section[#:style 'hidden-number]{(Inglese "Creating a website")}
@para{
 A website is a set of interconnected webpages, including a homepage, and other informations
}
@para{
 The first step to design a website is the identification of what you want to accomplish.
 You will need to generate a list of what you think the website should achieve.
 Take in consideration: the intended audience, the reason why people will visit your site,
 any modification may need to be made in the future, etc.
 Keep in mind that your site is like a theatre and your visitors are the actors.
}
@para{
 You have to define the content of your site.
 Page content can be divided into categories:@linebreak{}
 - Static content: those pages that will never - or seldom - change@linebreak{}
 - Dynamic content: the page's content is generated each time the page is visited@linebreak{}
 - Transactional content: pages that interact with the user in some way@linebreak{}
}
@para{
 Then you have to define your site's structure.
 This is the last conceptual step before the actual creation of the pages.
 Site's navigation should be simple and natural to use. You should put yourself on the visitor's shoes
 and keep things easy, clear and instinctive.
}
@subsection[#:style 'hidden-number]{'(How I created my own website)}
@para{
 I wanted to create a website wich allows you to hash strings using the md5 algorithm and
 saves it into a reverse lookup table to allows the user
 to retreive the original strings that generated the hash.
}
@para{
 Static content: just a css file@linebreak{}
 Transactional and Dynamic content: everything except the css file as pages are generated
 when the user asks them and pages always allow the user to interact.
}
@para{
 Even the site's structure is pretty simple: It's composed of just four url:@linebreak{}
 - @bold{@italic{@smaller{http://racket-md5.tk}}}
 The homepage@linebreak{}
 - @bold{@italic{@smaller{http://racket-md5.tk/calculate?input=aaa}}}
 calculate the md5 sum of the string "aaa"@linebreak{}
 - @bold{@italic{@smaller{http://racket-md5.tk/reverse?input=47bce5c74f589f4867dbd57e9ca9f808}}}
 try to reverse the given hash@linebreak{}
 - @bold{@italic{@smaller{http://racket-md5.tk/main.css}}}
 the css file, the user usually isn't interested in this@linebreak{}
}



@linebreak{}

@section[#:style 'hidden-number]{(Informatica "racket-md5.tk")}
@subsection[#:style 'hidden-number]{'(Database)}
@para{
 Il database è davvero molto semplice, consiste in una sola relazione che ha due campi:@linebreak{}
 - input che è di tipo TEXT@linebreak{}
 - hash che è di tipo VARCHAR e limitato a 32 caratteri@linebreak{}
 La chiave primaria è composta dalle due colonne della tabella.@linebreak{}
 In questo modo è garantita l'esclusione dei duplicati in quanto potrebbe accadere che un hash
 viene generato da più di un input (collisione), tuttavia vista la rarità delle collisioni
 provenienti da stringhe codificate in utf-8 non mi sento in presenza di una
 relazione 1-N tra hash e input
}
@subsection[#:style 'hidden-number]{'(Servlet)}
@para{
 Una servlet è un applicazione web scritta in Racket.
 Ho quindi scritto la mia servlet usando un dispatch basato sugli url e ho usato la libreria db
 già inclusa in Racket nello specifico creando una connessione virtuale al DBMS postgresql per creare
 una sola instanza della connessione al database per tutti gli utenti conessi alla mia servlet
 rilansciando quindi la connessione dove non necessaria in modo da risparmiare presiosa memoria
 sul server.@linebreak{}
 Ho quindi creato una funzione che genera il codice html della risposta tramite una x-expression
 mostrando l'eventuale risultato delle operazioni richieste.@linebreak{}
}


@linebreak{}

@section[#:style 'hidden-number]{(Sistemi "Implementazione MD5 in Racket")}
@subsection[#:style 'hidden-number]{'(md5)}
@para{
 MD5 (Message Digest 5) è una funzione di hash pubblicata nel 1992.@linebreak{}
 È stata creata con l'obiettivo di essere una funzione valida per essere usata nel campo
 della crittografia, ma la sua sicurezza è stata compromessa e già dal 1996 i crittoanalisti
 raccomandano di utilizzare altri algoritmi, oggi l'unico uso sicuro dell'md5 è per il controllo
 dell'integrità dei dati, ma solo da corruzioni involontarie.
}
@subsection[#:style 'hidden-number]{'(cos'è una funzione di hash)}
@para{
 Una funzione di hash è una funzione non invertibile che prende in input una serie di byte di
 lunghezza infinita e restituisce una serie di byte di lunghezza prestabilita@linebreak{}
 deve quindi essere impossibile impossibile risalire al
 messaggio originale attraverso l'hash.@linebreak{}
 deve essere computazionalmente impossibile trovare due messaggi diversi che abbiano lo stesso hash
 (in questo caso si parla di collisione).@linebreak{}
 Quello che viene chiamato digest o fingerprint è l'output della funzione di hash@linebreak{}
}
@subsection[#:style 'hidden-number]{'(utilizzi delle funzioni di hash)}
@para{
 Le funzioni di hash trovano impiego in diversi campi, ad esempio:
}
@subsubsection[#:style 'hidden-number]{'(hash table)}
@para{
 La struttura dati comunemente detta hash table, ma anche dizionario, map, hashmap, array associativo
 è conosciuta per la sua rapidità e il suo costo computazionale O(n). Utilizza al suo interno
 particolari funzioni di hash e semplici operazioni aritmetiche per mettere in corrispondenza
 una @italic{chiave} con un dato @italic{valore}.
}
@subsubsection[#:style 'hidden-number]{'(Firma digitale)}
@para{
 Nella firma digitale si utilizza crittografare il digest del messaggio
 tramite un algoritmo a chiave asimmetrica, usando la propria chiave privata.@linebreak{}
 Tutti possono quindi quindi leggere il digest, ma solo il mittente possiede la chiave privata
 necessaria a crittografare il digest.@linebreak{}
 Il ricevente quindi dopo aver calcolato il digest del messaggio ricevuto lo confronta con quello
 decrittografato con la chiave pubblica del mittente.
}
@subsubsection[#:style 'hidden-number]{'(Salvataggio di password nei database)}
@para{
 Per mettere in sicurezza gli utenti da un eventuale furto di database
 (dovuto ad esempio ad una vulnerabilità SQL Injection) bisogna salvare le password all'interno del
 database attraverso un sistema adeguato.
 L'utilizzo di una semplice funzione di hash come md5 è sconsigliato, in quanto l'attaccante potrebbe
 ancora provare attacchi che sfruttano le rainbow table, dizionari o birthday attack.
 Per sfuggire anche a questo genere di attacchi si utilizzano funzioni di hash molto lente come
 bcrypt, scrypt, pbkdf2. Combinando una stringa casuale denominata @italic{salt}. Per dare poi un
 ulteriore sicurezza si può anche salvare nel codice dell'applicazione web che utilizza il database,
 una stringa denominata @italic{pepper} che agisce come il salt ma non è presente all'interno del
 database, e per questo un attaccante dovrebbe riuscire ad accedere anche al codice
 dell'applicazione e non solo aldatabase.
 
}

@linebreak{}

@section[#:style 'hidden-number]{(GPOI "Unit Testing" "Project Documentation")}
@subsection[#:style 'hidden-number]{'(Unit Testing)}
@para{
 I test unitari servono a verificare il funzionamento di un unità di un programma, come
 ad esempio una funzione, ha quindi un perimetro d'azione limitato.@linebreak{}
 Per verificare il corretto funzionamento bisogna specificare i parametri di input della funzione
 da testare e il risultato da ottenere.@linebreak{}
 RackUnit è un framework per eseguire test unitari in Racket.@linebreak{}
 Io ho inserito dei test unitari all'interno della mia implementazione dell'md5 per verificare
 il funzionamento delle funzioni leftrotate e md5
}
@subsection[#:style 'hidden-number]{'(Project Documentation)}
@para{
 La documentazione di Racket come Racket stesso è disponibile nei termini della
 licenza GNU LGPL.@linebreak{}
 Per questo motivo è modificabile e redistribuibile sotto la stessa licenza oltre a permettere di
 essere inserito all'interno di altri programmi anche proprietari.@linebreak{}
 Il tool principale per scrivere documentazione è Scribble.
}
@subsubsection[#:style 'hidden-number]{'(Scribble)}
@para{
 La fantastica documentazione di Racket è scritta in Scribble.@linebreak{}
 Questa tesina è scritta usando Scribble.@linebreak{}
 Scribble è capace di generare documentazione nei formati PDF e HTML via LaTeX.@linebreak{}
 sostituisce quindi complicati sistemi quali HelpNDoc e Javadoc permettendoti in modo
 flessibile di generare documentazione e integrarla all'interno del codice.@linebreak{}
 può anche essere utilizzata insieme ad altri strumenti che promuovono la collaborazione come
 git per permettere a tutti di contribuire alla documentazione sostituendo quindi anche un eventuale
 wiki.
}
@subsubsection[#:style 'hidden-number]{'(Pollen)}
@para{
 Pollen è un Domain Specific Language scritto in Racket da Matthew Butterick.@linebreak{}
 È stato creato per scrivere dei veri libri digitali.@linebreak{}
 I principi alla sua base sono semplici:@linebreak{}
 1. I libri digitali devono essere i migliori libri che abbiamo mai avuto.@linebreak{}
 2. Siccome i libri digitali sono software, un autore non dovrebbe pensare al suo libro come un
 semplice ammasso di dati. @bold{Il libro è un programma}.@linebreak{}
 3. Il modo in cui dobbiamo rendere i libri digitali migliori dei loro
 predecessori è facendo exploit tramite la programmazione
}


@linebreak{}

@section[#:style 'hidden-number]{(Matematica "Infinito")}
@para{
 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
 labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
 nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit
 esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
 culpa qui officia deserunt mollit anim id est laborum.
}
