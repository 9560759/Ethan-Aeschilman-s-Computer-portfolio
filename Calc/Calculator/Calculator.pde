//PImage photo;
Button[] numBtns = new Button[10];
Button[] opBtns = new Button[13];
String displayVal, leftVal, rightVal;
char opVal;
float result;
boolean firstNum, dec;

void setup() {
  size(320, 400);
  //photo = loadImage("dan.jpeg");
  displayVal = "0";
  leftVal = "";
  rightVal = "";
  opVal = ' ';
  result = 0.0;
  firstNum = true;
  dec = false;

  numBtns[0] = new Button(130, 360, 100, 40, 0, color(255));
  numBtns[1] = new Button (100, 300, 40, 40, 1, color(255));
  numBtns[4] = new Button (100, 240, 40, 40, 4, color(255));
  numBtns[7] = new Button (100, 180, 40, 40, 7, color(255));
  numBtns[2] = new Button (150, 300, 40, 40, 2, color(255));
  numBtns[5] = new Button (150, 240, 40, 40, 5, color(255));
  numBtns[8] = new Button (150, 180, 40, 40, 8, color(255));
  numBtns[3] = new Button (210, 300, 40, 40, 3, color(255));
  numBtns[6] = new Button (210, 240, 40, 40, 6, color(255));
  numBtns[9] = new Button (210, 180, 40, 40, 9, color(255));

  opBtns[0] = new Button (270, 180, 40, 40, 0, color(15)).as0perator("*");
  opBtns[1] = new Button (270, 240, 40, 40, 0, color(55)).as0perator("-");
  opBtns[2] = new Button (270, 300, 40, 40, 0, color(155)).as0perator("+");
  opBtns[3] = new Button (270, 360, 40, 40, 0, color(45)).as0perator("=");
  opBtns[4] = new Button (210, 360, 40, 40, 0, color(255)).as0perator(".");
  opBtns[5] = new Button (270, 120, 40, 40, 0, color(255)).as0perator("/");
  opBtns[6] = new Button (210, 120, 40, 40, 0, color(255)).as0perator("%");
  opBtns[7] = new Button (150, 120, 40, 40, 0, color(255)).as0perator("±");
  opBtns[8] = new Button (60, 120, 100, 40, 0, color(255)).as0perator("Clear");
  opBtns[9] = new Button (40, 180, 40, 40, 0, color(255)).as0perator("√");
  opBtns[10] = new Button (40, 240, 40, 40, 0, color(255)).as0perator("cos");
  opBtns[11] = new Button (40, 300, 40, 40, 0, color(255)).as0perator("x²");
  opBtns[12] = new Button (40, 360, 40, 40, 0, color(255)).as0perator("sin");
}

void draw() {
  background(0, 167, 167);
  for (int i=0; i<numBtns.length; i++) {
    numBtns[i].display();
    numBtns[i].hover();
  }
  for (int i=0; i<opBtns.length; i++) {
    opBtns[i].display();
    opBtns[i].hover();
  }

  stroke(0);
  updateDisplay();
}
void updateDisplay() {
  rectMode(CENTER);
  textAlign(RIGHT);
  fill(255);
  rect(160, 50, 280, 60, 5);
  fill(0);
  textSize(24);
  text(displayVal, 300, 75);
}
void mouseReleased() {
  for (int i=0; i<numBtns.length; i++) {
    if (numBtns[i].hov) {
      if (firstNum) {
        leftVal += str(numBtns[i].v);
        displayVal=leftVal;
      } else {
        rightVal += str(numBtns[i].v);
        displayVal=rightVal;
      }
    }
  }
  for (int i=0; i<opBtns.length; i++) {
    if (opBtns[i].hov) {
      if (opBtns[i].op == "+") {
        opVal= '+';
        firstNum = false;
      } else if (opBtns[i].op == "-") {
        opVal= '-';
        firstNum = false;
      } else if (opBtns[i].op == "*") {
        opVal= '*';
        firstNum = false;
      } else if (opBtns[i].op == "/") {
        opVal= '/';
        firstNum = false;
      } else if (opBtns[i].op == "=") {
        performCalc();
      } else if (opBtns[i].op == "Clear") {
        clearApp();
      } else if (opBtns[i].op == ".") {
        if (!dec) {
          if (firstNum) {
            leftVal += opBtns[i].op;
            displayVal = rightVal;
            dec = true;
          } else {
            rightVal += opBtns[i].op;
            displayVal = rightVal;
            dec = true;
          }
        } else if (opBtns[i].op == "±") {
          if (firstNum) {
            leftVal = str(float(leftVal)*-1);
            displayVal = leftVal;
          } else {
            rightVal += str(float(rightVal)*-1);
            displayVal = rightVal;
          }
        } else if (opBtns[i].op == "√") {
          if (firstNum) {
            leftVal = str(sqrt(float(leftVal)));
            displayVal = leftVal;
          } else {
            rightVal = str(sqrt(float(rightVal)));
            displayVal = rightVal;
          }
        } else if (opBtns[i].op == "x²") {
          if (firstNum) {
            leftVal = str(sq(float(leftVal)));
            displayVal = leftVal;
          } else {
            rightVal = str(sin(float(leftVal)));
            displayVal = rightVal;
          }
        } else if (opBtns[i].op == "sin") {
          if (firstNum) {
            leftVal = str(sin(float(leftVal)));
            displayVal = leftVal;
          } else {
            rightVal = str(sin(float(leftVal)));
            rightVal = leftVal;
          }
        } else if (opBtns[i].op == "cos") {
          if (firstNum) {
            leftVal = str(cos(float(leftVal)));
            displayVal = leftVal;
          } else {
            rightVal = str(cos(float(leftVal)));
            displayVal = rightVal;
          }
        }
      }
    }
  }
}
void performCalc() {
  if (opVal == '+') {
    result = float(leftVal)+float(rightVal);
    displayVal = str(result);
  } else if (opVal == '-') {
    result = float(leftVal)-float(rightVal);
    displayVal = str(result);
  } else if (opVal == '*') {
    result = float(leftVal)*float(rightVal);
    displayVal = str(result);
  } else if (opVal == '/') {
    result = float(leftVal)/float(rightVal);
    displayVal = str(result);
  }
  firstNum = true;
}
void clearApp() {
  displayVal = "0";
  leftVal = "";
  rightVal = "";
  opVal = ' ';
  result = 0.0;
  leftVal = displayVal;
  firstNum = true;
}

void keyPressed() {
  if (key == '1') {
    handleKeyPress(true, "1");
  } else if (key == '2') {
    handleKeyPress(true, "2");
  } else if (key == '3') {
    handleKeyPress(true, "3");
  } else if (key == '4') {
    handleKeyPress(true, "4");
  } else if (key == '5') {
    handleKeyPress(true, "5");
  } else if (key == '6') {
    handleKeyPress(true, "6");
  } else if (key == '7') {
    handleKeyPress(true, "7");
  } else if (key == '8') {
    handleKeyPress(true, "8");
  } else if (key == '9') {
    handleKeyPress(true, "9");
  } else if (key == '0') {
    handleKeyPress(true, "0");
  } else if (key == '`') {
    handleKeyPress(false, "clear");
  } else if (key == '+') {
    handleKeyPress(false, "+");
  } else if (key == '-') {
    handleKeyPress(false, "-");
  } else if (key == '*') {
    handleKeyPress(false, "*");
  } else if (key == '/') {
    handleKeyPress(false, "/");
  }
}

void handleKeyPress(boolean num, String Val) {
  if (num) {
    if (firstNum) {
      leftVal += Val;
      displayVal = leftVal;
    } else {
      rightVal += Val;
      displayVal = rightVal;
    }
  } else {
    if (Val=="+") {
      opVal = '+';
      firstNum = false;
      dec = false;
    } else if (Val=="-") {
      opVal = '-';
      firstNum = false;
      dec = false;
    } else  if (Val=="*") {
      opVal = '*';
      firstNum = false;
      dec = false;
    } else   if (Val=="/") {
      opVal = '/';
      firstNum = false;
      dec = false;
    } else if (Val=="=") {
      performCalc();
    }
  }
}
