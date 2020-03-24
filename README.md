# EasyCollect: riduciamo la fila, aumentiamo la sicurezza

Il contenuto che segue è liberamente disponibile con licenza [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/) ed il suo obiettivo primario è stimolare una discussione sull'utilità e fattibilità della soluzione proposta. Se ravvisate errori o informazioni scorrette vi prego di farmelo sapere. **Se siete sviluppatori o semplicemente volete contribuire, vi prego di contattarmi.**

* Telegram: abbiamo un gruppo, unitevi su https://t.me/joinchat/JQE9dBW4OKvKDT7319uiQg 
* e-mail: andrea.vitaletti@diag.uniroma1.it
* linkedin: www.linkedin.com/in/andreavitaletti

# SOMMARIO

**PROBLEMA.** In questa emergenza gli acquisti sono difficili e possono essere rischiosi a causa delle lunghe file che inducono alcuni ad approvigionamenti eccessivi. Le consegne a domicilio hanno forti ritardi e sono contingentate

**SOLUZIONE.** Easy Collect un processo semplice già sperimentato in alcuni contesti

1. L'utente accede ad un canale online per selezionare i prodotti
2. l'esercente confeziona i prodotti selezionati dall'utente
3. Il cliente si reca dall'esercente quando indicato al solo per ritirare i propri prodotti e pagare laddove non l'abbia già fatto online

**BENEFICI.**

1. I tempi necessari a ritirare i prodotti sono minimi: si riducono o azzerano le code
2. Gli approvigionamenti eccessivi possono essere limitati

**TARGET.** La GDO ha le risorse per realizzare soluzioni complesse, il target sono i negozi di quartiere e richiede la sola disponibilità di un cellulare con comuni app di messaggistica che hanno già dimostrato di sopportare carichi elevati.

# IL PROBLEMA

In questi giorni di emergenza [COVID-19](https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public), gli acquisti sono difficili e possono essere rischiosi. 

In molti casi ci sono lunghe file per fare la spesa e devono essere prese tutte le precauzioni necessarie, come guanti e mascherine, per salvaguardare la salute degli acquirenti.  

Ci sono sati casi in cui alcune persone, spaventate da possibili mancanze di approvigionamenti, hanno acquistato una quantità esagerata di prodotti. Sebbene la paventata mancanza di approvigionamenti non si sia manifestata, questo comportamento ha portato un disagio agli altri che sono stati costretti ad accontentarsi di quanto rimasto.  

Le piattaforme online, sottoposte al carico di questi giorni, prediligono giustamente la distribuzione dei prodotti ai soli utenti che ne hanno maggiormente bisogno (per esempio anziani, persone diversamente abili, future mamme o neo genitori, persone ammalate etc.) e comunque accumulano ritardi importanti (dell'ordine di giorni) per recapitare i prodotti a casa.

# UNA POSSIBILE SOLUZIONE

Per ovviare a questo problema, proponiamo un processo molto semplice, già sperimentato in alcuni contesti ... qualcuno direbbe "la scoperta dell'acqua calda!" :-) 

1. L'utente accede ad un canale online (web, telegram, facebook, telefono etc.) per selezionare i prodotti
2. l'esercente confeziona i prodotti selezionati dall'utente in modo che possano essere ritirati
3. Il cliente si reca dall'esercente semplicemente per ritirare i propri prodotti e eventualmente pagare laddove non l'abbia già fatto online 

Sono possibili molti miglioramenti come per esempio la possibilità che l'esercente  indichi l'intervallo di tempo in cui ritirare la spesa in modo da evitare possibili accodamenti

Questo processo, potrebbe portare ai seguqnti benefici:

1. I tempi necessari a ritirare i prodotti sono minimi e dunque si riducono, o addirittura azzerano le code, con evidente beneficio anche sulla sicurezza di acquirenti e lavoratori
2. Laddove necessario, il controllo sulla quantità di prodotti potrebbe esser applicato alla fonte, limitando l'accumulo non necessario da parte di pochi

# PRECISAZIONI

1. **Il processo che proponiamo deve essere realizzato su un'infrastruttura minimale: il solo cellulare del negoziante**
2. **Il ruolo del servizio è mettere in contatto clente con negoziante per iniziare il processo, le fasi successive di confezionamento, ritiro e pagamento vengono realizzate dal negoziante in piena autonomia**

# IL RUOLO DEI NEGOZI DI QUARTIERE

Nella soluzione delineata, i negozi di quartiere potrebbero ritornare ad avere un ruolo fondamentale di distribuzione dei prodotti vicino agli acquirenti. 

Sebbene non si possa assumere che un negozio di quartiere sia dotato di un sistema di e-commerce, si possono immaginare mille modi per implementare il processo. Di seguito ne descriviamo sommariamente alcuni. 

Invito chiunque ne abbia voglia a proporre alternative, possibilmente facendo un piccolo tutorial che spiega come adottare la soluzione proposta. 

Se qualcuno dovesse implementare una di queste soluzioni, vi prego di comunicarmelo in modo da condividerlo con tutti. 

## LA SOLUZIONE VIA TELEFONO (ALLA VECCHIA MANIERA)

1. Il cliente chiama il negoziante e si accorda per la spesa 
2. l'acquirente si reca presso il negozio, preleva la spesa e paga


## LA SOLUZIONE SU [TELEGRAM](https://telegram.org/)

1. Il negoziante apre un canale telegram 
2. Al mattino il negoziante fa un video sulla propria offerta o invia un messaggio sul canale descrivendo l'offerta
3. Gli acquirenti inviano un messaggio al negoziante con la lista della spesa
4. Il negoziante conferma la disponibilità e suggerisce un intervallo di tempo in cui prelevare la spesa
5. l'acquirente si reca presso il negozio preleva la spesa e paga

**Le app di messagistica hanno dimostrato di reggere a forti carichi e sono molto diffuse, sono dunque sulla carta una buona soluzione tecnologica**

## Un semplice Proof-of-concept

Ancora veramente minimale, ma dimostra il concetto. Il codice è disponibile su [src](https://github.com/andreavitaletti/spesa/tree/master/src)

[![Watch the video](out.gif)](https://youtu.be/koCy4j8L678 )

# IL RUOLO DALLA GDO

La maggiorparte della GDO è già dotata di sistemi di e-commerce, ma come già osservato in questo momento il meccanismo di recapito della spesa nelle abitazioni degli acquirenti è congestionato. 

Non conosco a sufficienza i sistemi informatici della GDO per sapere quali siano le difficoltà nell'implementare il meccanismo proposto, ma immagino che con un po' di buona volontà si possa fare. 

Prego chiunque abbia informazioni più sostanziali di contattarmi
