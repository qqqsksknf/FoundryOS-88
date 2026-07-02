#!/bin/bash
# FOUNDRYOS 88 - SCRIPT DI AVVIO CON LOGO REALE (.JPEG)

echo "Inizializzazione FoundryOS 88..."

# 1. RIPRODUZIONE EFFETTO SONORO FUTURISTICO
# Riproduce l'impulso magnetico elettronico all'accensione
play -q -n synth 1.5 sine 60-1800 g0.5 &

# 2. SCHERMATA NERA E SCRITTA FUTURISTICA
clear
echo -e "\n\n\n"
echo "=============================================="
echo "               POWERED BY                     "
echo "=============================================="
sleep 1.5

# 3. CARICAMENTO DEL LOGO REALE (.JPEG / .JPG)
clear
if [ -f "logo.jpeg" ]; then
    # Visualizza l'immagine reale .jpeg caricata dall'utente
    fbi -d /dev/fb0 -T 1 -noverbose -a logo.jpeg
elif [ -f "logo.jpg" ]; then
    # Visualizza l'immagine se salvata come .jpg
    fbi -d /dev/fb0 -T 1 -noverbose -a logo.jpg
else
    # Messaggio di riserva se l'immagine non viene trovata
    echo "[ ERRORE: Carica il file logo.jpeg su GitHub ]"
    echo "[ LOGO PROGETTO 88 IN CARICAMENTO GENERICO ]"
fi

sleep 2.0

# Spegne la visualizzazione dell'immagine e passa alla RAM
killall fbi
clear
