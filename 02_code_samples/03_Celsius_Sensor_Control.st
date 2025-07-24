(* Celsius_Sensor_Control – Module 03
   Ambient temperature monitor
   Author: William Hall
   Platform: Arduino Opta
*)

// INPUT: Raw analog value (0–4095) from AI0
Temp_Register := TO_REAL(Sens_temp);  // Sens_temp = AI0 input
// Convert raw to voltage (0–5V scaling)
Voltage_Output := (Temp_Register * 5.0) / 4095.0;
// Convert voltage to Celsius for TMP236
Degrees_Output := (100.0 * Voltage_Output) - 50.0;
// Convert voltage to Farenheit
Degrees_F := (Degrees_Output * 9.0 / 5.0) + 32.0;
// Average temperature in Celsius
Avg_Temp := (Avg_Temp * 0.9) + (Degrees_Output * 0.1);

// Heater control logic
IF Avg_Temp < 72.0 THEN
   Heat_O1 := TRUE;
   Heat_O2 := TRUE;
ELSIF Avg_Temp > 78.0 THEN
	Heat_O1 := FALSE;
	Heat_O2 := FALSE;
END_IF;

// Fan/Alarm logic
IF Avg_Temp > 85.0 THEN
	FAN := TRUE;
	LED_ORANGE := TRUE;
ELSE
	FAN := FALSE;
	LED_ORANGE := FALSE;
END_IF;

IF Avg_Temp > 95.0 THEN
	ALARM := TRUE;
	LED_RED := TRUE;
ELSE
	ALARM := FALSE;
	LED_RED := FALSE;
END_IF;
