//+------------------------------------------------------------------+
//| Fonction pour obtenir le prix d'un symbole à un moment donné     |
//| Paramètres : symbol, timeframe, index, priceType                  |
//| - symbol: symbole (paire de devises)                               |
//| - timeframe: période de temps (ex : PERIOD_M1, PERIOD_H1, etc.)    |
//| - index: index de la bougie (0 pour la bougie actuelle)           |
//| - priceType: type de prix (0 pour OPEN, 1 pour CLOSE, 2 pour HIGH, 3 pour LOW) |
//+------------------------------------------------------------------+
double GetPriceAtTime(string symbol, ENUM_TIMEFRAMES timeframe, int index, int priceType)
{
   double price = 0.0;

   // Vérifie la validité de l'index
   if (index < 0)
   {
      Print("Index invalide.");
      return -1; // Valeur de retour pour indiquer une erreur
   }

   // Récupère le prix selon le type demandé
   switch (priceType)
   {
      case 0: // OPEN
         price = iOpen(symbol, timeframe, index);
         break;
      case 1: // CLOSE
         price = iClose(symbol, timeframe, index);
         break;
      case 2: // HIGH
         price = iHigh(symbol, timeframe, index);
         break;
      case 3: // LOW
         price = iLow(symbol, timeframe, index);
         break;
      default:
         Print("Type de prix invalide.");
         return -1; // Valeur de retour pour indiquer une erreur
   }

   return price;
}
