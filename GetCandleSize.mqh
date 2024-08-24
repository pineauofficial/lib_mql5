//+------------------------------------------------------------------+
//| Fonction pour obtenir la taille d'une bougie                      |
//| Index = 0 pour la dernière bougie (en cours), 1 pour la précédente|
//+------------------------------------------------------------------+
double GetCandleSize(int index)
  {
   // Récupère les prix haut et bas de la bougie
   double highPrice = iHigh(NULL, 0, index);
   double lowPrice = iLow(NULL, 0, index);

   // Calcule et retourne la taille de la bougie
   return (highPrice - lowPrice);
  }
//+------------------------------------------------------------------+
