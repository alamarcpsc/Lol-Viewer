class Metric
{
  String name;
  float max;
  String tableColumn;
  String divisor;
  float multiplier;
  boolean selected;
  
  Metric(String initName, float initMax, String initTableColumn, String initDivisor, float initMultiplier)
  {
    name = initName;
    max = initMax;
    tableColumn = initTableColumn;
    divisor = initDivisor;
    multiplier = initMultiplier;
    selected = true;
  }
}