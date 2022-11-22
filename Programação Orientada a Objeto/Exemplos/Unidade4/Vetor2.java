package Unidade4;

public class Vetor2 {
    public static void main(String args[]) {
        String nomes = "";
        char CaracterArray[] = { 'a', 'b', 'c', 'd', 'e', 'f', 'g' };

        System.out.println("Mostrando o array " + String.valueOf(CaracterArray));
        System.out.println("Quant. de elementos: " + CaracterArray.length);
        System.out.println("1° ao 3° caracter " + String.valueOf(CaracterArray, 0, 3));

        String StringArray[] = { "Aprendendo", "a", "utilizar", "array" };

        for (int i = 0; i < StringArray.length; i++) {
            nomes = nomes + StringArray[i] + " ";
        }

        System.out.println("Mostrando array de " + nomes);
        System.out.println("Quant. de elementos do array: " + StringArray.length);
        System.out.println("Mostrando o 1° elemento: " + StringArray[0]);
        System.out.println("Mostrando o último elemento do array: " + StringArray[StringArray.length - 1]);
    }
}
