---
sort: 1
title: Installatie
---

# Installatie door ServiceDesk

Voor het gebruik van QGIS als tekentool dient de laatste LTR versie 64-bits versie van QGIS te worden geïnstalleerd. Op dit moment 3.16.0. 

Download de installer en laat QGIS installeren door de ServiceDesk.

[Download QGIS](https://qgis.org/nl/site/forusers/download.html)

Tijdens het installeren kunnen alle standaardinstellingen worden gebruikt, maar het is niet nodig om de voorbeelddatasets te installeren. 

Mocht je meerdere QGIS versies op je pc hebben staan dan kan het handig zijn om gelijk de oude versie te laten verwijderen van je pc. Anders kan bij het openen van een projectbestand een oudere versie van QGIS opeens opstarten.

Na afloop vind je op je bureaublad een snelkoppeling van de geïnstalleerde QGIS-versie. 

Verdere instellingen kunnen worden gedaan zonder tussenkomst van de ServiceDesk.

```note
## Openen met... instellen

Indien er een oude versie van QGIS opstart kan je handmatig de versie kiezen waarmee QGIS projectbestanden geopenend moeten worden.

1. Rechtermuisklik op een QGIS bestand (.qgz):
![alt text](./assets/qgis_openen_met.png "Klik op Plug-ins beheren en installeren...")

2. Klik op **Meer apps** en zet een vinkje voor altijd openen met
3. Blader dan naar de installatie map en klik op qgis-bin.exe, bijvoorbeeld:
   *C:\Program Files\QGIS 3.16\bin\qgis-bin.exe*
```

# QGIS voorbereiden op het eerste gebruik door gebruiker

Om de verbindingen te kunnen maken dient eenmalig bij het installeren van QGIS een bestand gekopieerd te worden naar de gebruikersmap.

```note
Bij het installeren van een nieuwe QGIS versie kun je deze stap overslaan.
```

De locatie van de gebruikersmap ziet er meestal zo uit: ```C:\Users\braggaar\AppData\Roaming\QGIS\QGIS3\profiles\default```


```tip
De locatie van de gebruikersmap kun je vinden vanuit QGIS

![alt text](./assets/profielmap_openen.png "Profielmap openen")
```

In deze map plaats je het bestand **qgis-auth.db** vanuit het release ZIP-bestand wat je hebt gedownload van Github. Bij het opstarten van QGIS voor de eerste keer wordt er dan gevraagd om een wachtwoord om de wachtwoordenkluis te ontgrendelen. Dit wachtwoord kun je opvragen bij een van de beheerders.

# Extra's en plug-ins (optioneel indien gewenst)

1. Klik op *Plug-ins beheren en installeren*:

![alt text](./assets/install_plugins.png "Klik op Plug-ins beheren en installeren...")

2. Installeer de plug-in *QAD*:

Zoek naar QAD (1), kies QAD (2) en klik op installeren (3):

![alt text](./assets/install_plugin.png "Klik op Plug-ins beheren en installeren...")

# QGIS opstarten om te tekenen

Start QGIS op door het openen van het VRR-OIV projectbestand.

Dubbelklik op het bestand:

`vrr_tekentool_oiv.qgz`