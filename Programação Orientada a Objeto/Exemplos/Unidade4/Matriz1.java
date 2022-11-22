package Unidade4;

import javax.swing.*;

public class Matriz1 {
    public static void main(String args[]) {
        float notas[][] = new float[3][2];
        int aluno = 0, nota;

        while (aluno < 3) {
            nota = 0;
            while (nota < 2) {
                System.out.println("Aluno " + (aluno + 1) + ", digite a " + (nota + 1) + "ª nota:");
                notas[aluno][nota] = Float.parseFloat(
                        JOptionPane.showInputDialog("Aluno " + (aluno + 1) + ", digite a " + (nota + 1) + "ª nota:"));
                System.out.println(notas[aluno][nota]);
                nota++;
            }
            aluno++;
        }

        System.out.println("Digite o núumero do aluno de 1-3");
        aluno = Integer.parseInt(JOptionPane.showInputDialog("Digite o nr. do aluno"));
        System.out.println("Aluno: " + aluno);
        System.out.println("Nota1: " + notas[aluno - 1][0] + " Nota2: " + notas[aluno - 1][1]);
        System.out.println("Média: " + ((notas[aluno - 1][0]) + notas[aluno - 1][1]) / 2);
    }
}
