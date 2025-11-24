// C++
const int BATHROOM_LIGHT = 11;
const int BEDROOM_LIGHT = 12;
const int KITCHEN_LIGHT = 13;

// Variable para la intermitencia
bool blinkingMode = false;

void menu(){
   Serial.println("\n--- MENU DE OPCIONES ---");
   Serial.println("[1]. Turn on bathroom_light");
   Serial.println("[2]. Turn off bathroom_light");
   Serial.println("[3]. Turn on bedroom_light");
   Serial.println("[4]. Turn off bedroom_light");
   Serial.println("[5]. Turn on kitchen_light");
   Serial.println("[6]. Turn off kitchen_light");
   Serial.println("[7]. Turn on all lights");
   Serial.println("[8]. Turn off all lights");
   Serial.println("[9]. Blinking lights (ON/OFF)");
   Serial.println("Please, press any option: ");
}

void setup() {
  pinMode(BATHROOM_LIGHT, OUTPUT);
  pinMode(BEDROOM_LIGHT, OUTPUT);
  pinMode(KITCHEN_LIGHT, OUTPUT);
  Serial.begin(9600);
  menu();
}

void loop() {
  
  
  if(Serial.available() > 0){
    char opt = Serial.read();
    
    // SE DESACTIVA LA INTERMITENCIA DE LOS DEMAS BOTONES AL MENOS QUE SE OPRIMA '9'.
    if (opt != '9') {
      blinkingMode = false;
    }

    if (opt == '1'){
      // 1. Encender Baño
      digitalWrite(BATHROOM_LIGHT, HIGH);
      Serial.println("Bathroom ON");
    } else if (opt == '2'){
      // 2. Apagar Baño
      digitalWrite(BATHROOM_LIGHT, LOW);
      Serial.println("Bathroom OFF");
    } else if (opt == '3'){
      // 3. Encender Dormitorio
      digitalWrite(BEDROOM_LIGHT, HIGH);
      Serial.println("Bedroom ON");
    } else if (opt == '4'){
      // 4. Apagar Dormitorio
      digitalWrite(BEDROOM_LIGHT, LOW);
      Serial.println("Bedroom OFF");
    } else if (opt == '5'){
      // 5. Encender Cocina
      digitalWrite(KITCHEN_LIGHT, HIGH);
      Serial.println("Kitchen ON");
    } else if (opt == '6'){
      // 6. Apagar Cocina
      digitalWrite(KITCHEN_LIGHT, LOW);
      Serial.println("Kitchen OFF");
    } else if (opt == '7'){
      // 7. Encender Todas
      digitalWrite(BATHROOM_LIGHT, HIGH);
      digitalWrite(BEDROOM_LIGHT, HIGH);
      digitalWrite(KITCHEN_LIGHT, HIGH);
      Serial.println("All ON");
    } else if (opt == '8'){
      // 8. Apagar Todas
      digitalWrite(BATHROOM_LIGHT, LOW);
      digitalWrite(BEDROOM_LIGHT, LOW);
      digitalWrite(KITCHEN_LIGHT, LOW);
      Serial.println("All OFF");
    } else if (opt == '9'){
      // 9. Activar/Desactivar Intermitencia
      blinkingMode = !blinkingMode; // Invierte el estado: ON -> OFF, OFF -> ON
      if (blinkingMode) {
        Serial.println("Blinking mode ACTIVATED!");
      } else {
        
        digitalWrite(BATHROOM_LIGHT, LOW);
        digitalWrite(BEDROOM_LIGHT, LOW);
        digitalWrite(KITCHEN_LIGHT, LOW);
        Serial.println("Blinking mode STOPPED.");
      }
    } else {
      
      Serial.println("Invalid option. Try again.");
    }
    menu();
  }
  
  // INTERMITENCIA DE LOS BOMBILLOS
  if (blinkingMode == true) {
    // Enciende
    digitalWrite(BATHROOM_LIGHT, HIGH);
    digitalWrite(BEDROOM_LIGHT, HIGH);
    digitalWrite(KITCHEN_LIGHT, HIGH);
    delay(300); 

    // Apaga
    digitalWrite(BATHROOM_LIGHT, LOW);
    digitalWrite(BEDROOM_LIGHT, LOW);
    digitalWrite(KITCHEN_LIGHT, LOW);
    delay(300); 
  }
}







