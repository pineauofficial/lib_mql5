// Fonction pour obtenir la date et l'heure d'une bougie
void GetCandleTime(ENUM_TIMEFRAMES timeframe, int index, string &candleDateTime)
{
    datetime candleTime = iTime(NULL, timeframe, index);
    
    if (candleTime == 0)
    {
        candleDateTime = "Erreur : Bougie non trouvée";
        return;
    }

    // Convertir la date et l'heure en format lisible
    string day = TimeToString(candleTime, TIME_DATE);
    string time = TimeToString(candleTime, TIME_MINUTES);

    candleDateTime = day + " " + time;
    return;
}