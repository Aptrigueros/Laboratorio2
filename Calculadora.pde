float num1, num2, resultado;
char operador;

void setup() {
  // No se necesita lienzo para esta versión de la calculadora en consola
  // Define las variables iniciales
  num1 = 0;
  num2 = 0;
  resultado = 0;
  operador = '\0';
  
  // Realiza algunas operaciones de ejemplo
  calcular('+', 5);
  calcular('-', 2);
  calcular('*', 3);
  calcular('/', 2);
}

void draw() {
  // No hay necesidad de la función draw en este caso
}

void calcular(char op, float valor) {
  // Función para realizar operaciones y mostrar resultados en la consola
  operador = op;
  num2 = valor;

  switch (operador) {
    case '+':
      resultado = num1 + num2;
      break;
    case '-':
      resultado = num1 - num2;
      break;
    case '*':
      resultado = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        resultado = num1 / num2;
      } else {
        resultado = 0;
      }
      break;
    default:
      resultado = 0;
  }

  // Muestra el cálculo en la consola
  println(num1 + " " + operador + " " + num2 + " = " + resultado);
  
  // Actualiza num1 para la siguiente operación
  num1 = resultado;
}
