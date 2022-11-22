package Unidade4;

import javax.swing.*;

public class VetorEmMetodo {
    public static void main(String[] args) {
        int numeros[] = new int[10];
        for (int i = 0; i < 10; i++) {
            // JOptionPane.showMessageDialog(null, );
            numeros[i] = Integer.parseInt(JOptionPane.showInputDialog("Digite o número" + (i + 1)));
        }
        numeros = ordenaArray(numeros);
        mostraArray(numeros);
    }

    public static int[] ordenaArray(int arr[]) {
        int x, y, aux;
        for (x = 0; x < arr.length; x++) {
            for (y = 0; y < arr.length; y++) {
                if (arr[x] < arr[y]) {
                    aux = arr[y];
                    arr[y] = arr[x];
                    arr[x] = aux;
                }
            }
        }
        return arr;
    }

    public static void mostraArray(int arr[]) {
        for (int i = 0; i < arr.length; i++) {
            System.out.println(arr[i] + " ");
        }
    }

}
