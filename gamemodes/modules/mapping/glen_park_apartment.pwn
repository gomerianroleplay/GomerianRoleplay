#include <YSI_Coding\y_hooks>

hook OnGameModeInit()
{
  new
    max_floors = 21,
    Float:X_DOOR_CLOSED = 1786.627685,
    Float:GROUND_Z_COORD = 14.511476,
    Float:FloorZOffsets[21] =
    {
      0.0,        // 0.0,
      8.5479,     // 8.5479,
      13.99945,   // 8.5479 + (5.45155 * 1.0),
      19.45100,   // 8.5479 + (5.45155 * 2.0),
      24.90255,   // 8.5479 + (5.45155 * 3.0),
      30.35410,   // 8.5479 + (5.45155 * 4.0),
      35.80565,   // 8.5479 + (5.45155 * 5.0),
      41.25720,   // 8.5479 + (5.45155 * 6.0),
      46.70875,   // 8.5479 + (5.45155 * 7.0),
      52.16030,   // 8.5479 + (5.45155 * 8.0),
      57.61185,   // 8.5479 + (5.45155 * 9.0),
      63.06340,   // 8.5479 + (5.45155 * 10.0),
      68.51495,   // 8.5479 + (5.45155 * 11.0),
      73.96650,   // 8.5479 + (5.45155 * 12.0),
      79.41805,   // 8.5479 + (5.45155 * 13.0),
      84.86960,   // 8.5479 + (5.45155 * 14.0),
      90.32115,   // 8.5479 + (5.45155 * 15.0),
      95.77270,   // 8.5479 + (5.45155 * 16.0),
      101.22425,  // 8.5479 + (5.45155 * 17.0),
      106.67580,  // 8.5479 + (5.45155 * 18.0),
      112.12735	  // 8.5479 + (5.45155 * 19.0)
    }
  ;

  CreateDynamicObject(18757, X_DOOR_CLOSED, -1303.459472, GROUND_Z_COORD, 0.000000, 0.000000, 270.000000);
  CreateDynamicObject(18756, X_DOOR_CLOSED, -1303.459472, GROUND_Z_COORD, 0.000000, 0.000000, 270.000000);

  for (new i = 0; i < max_floors; i++)
  {
    CreateDynamicObject(18757, X_DOOR_CLOSED, -1303.171142, GROUND_Z_COORD + FloorZOffsets[i], 0.000000, 0.000000, 270.000000);
    CreateDynamicObject(18756, X_DOOR_CLOSED, -1303.171142, GROUND_Z_COORD + FloorZOffsets[i], 0.000000, 0.000000, 270.000000);
  }

  return 1;
}
