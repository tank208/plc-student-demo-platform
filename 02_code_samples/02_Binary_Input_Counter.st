(* Binary Counter – Module 02
   Switch binary counter in 2s compliment
   Author: William Hall
   Platform: Arduino Opta
*)


// Initialize the counter to zero at the start of each loop
switchCount :=0;

// Check each input and increment or decrement switchCount accordingly
IF Input_1 THEN
	switchCount := switchCount + 1;
END_IF;

IF Input_2 THEN
	switchCount := switchCount + 1;
END_IF;

IF Input_3 THEN
	switchCount := switchCount + 1;
END_IF;

IF Input_4 THEN
	switchCount := switchCount + 1;
END_IF;

IF Input_5 THEN
	switchCount := switchCount + 1;
END_IF;

IF Input_6 THEN
	switchCount := switchCount + 1;
END_IF;

IF Input_7 THEN
	switchCount := switchCount + 1;
END_IF;

IF Input_8 THEN
	switchCount := switchCount + 1;
END_IF;

//Ensure that switchCount does not go below zero
IF switchCount < 0 THEN
	
	switchCount := 0;

END_IF;


//Convert switchCount to binary and display on LEDs
LED_4 := (switchCount AND 1) <> 0;
LED_3 := (switchCount AND 2) <> 0;
LED_2 := (switchCount AND 4) <> 0;
LED_1 := (switchCount AND 8) <> 0;
