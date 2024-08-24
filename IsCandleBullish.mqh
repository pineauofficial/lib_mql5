//+------------------------------------------------------------------+
//| Fonction pour vérifier si une bougie est haussière ou baissière   |
//| Index = 0 pour la dernière bougie (en cours), 1 pour la précédente|
//+------------------------------------------------------------------+
bool IsCandleBullish(int index)
  {
   // Récupère les prix d'ouverture et de clôture de la bougie
   double openPrice = iOpen(NULL, 0, index);
   double closePrice = iClose(NULL, 0, index);
   
   // Retourne true si la bougie est haussière, false sinon
   return (closePrice > openPrice);
  }
//+------------------------------------------------------------------+