PImage referencia;
boolean animar = false;
float anguloManual = 0;

void setup() {
  size(800, 400);
  rectMode(CENTER);
  referencia = loadImage("rombos.jpeg");
}

void draw() {
  background(0);

  //Lado izquierdo: imagen de referencia
  image(referencia, 0, 0, 400, 400);

  // Lado derecho: patron generado
  int cols = 4; // columnas de rombos
  int rows = 6;
  float sepX = 62; // separación horizontal
  float sepY = 32; // separación vertical

  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      float x = 410 + i * sepX;
      float y = j * sepY - 30;
      if (i % 2 == 1) {
        y += sepY / 2; // desplazamiento de columnos impares
      }
      float angulo = obtenerRotacion(x, y);
      dibujarModulo(x, y, angulo);
    }
  }
}

//función propia (con retorno)
float obtenerRotacion(float x, float y) {
  if (animar) {
    float d = dist(mouseX, mouseY, x, y);
    return map(d, 0, width, -PI / 16, PI / 16);
  } else {
    return anguloManual;
  }
}

//función propia
void dibujarModulo(float x, float y, float angulo) {
  pushMatrix();
  translate(x, y);
  rotate(PI / 4 + angulo);

  //Cuadrado gris
  fill(180);
  noStroke();
  rect(0, 0, 60, 60);

  //Cuadrados blancos a los lados
  fill(255);
  rect(-30, 0, 20, 20);
  rect(30, 0, 20, 20);
  popMatrix();
}

void keyPressed() {
  if (key == 'a') {
    animar = !animar;
  } else if (key == 'r') {
    anguloManual = 0;
    animar = false;
  } else if (keyCode == LEFT) {
    anguloManual -= 0.05;
  } else if (keyCode == RIGHT) {
    anguloManual += 0.05;
  }
}
