package Unidade3;

public class Boletim {
    private double media;
    private double n1;
    private double n2;

    public void setN1(double nota) {
        n1 = nota;
    }

    public double getN1() {
        return n1;
    }

    public void setN2(double nota) {
        n2 = nota;
    }

    public double getN2() {
        return n2;
    }

    public void calcularMedia() {
        media = (n1 + n2) / 2;

        if (media < 4) {
            System.out.println("Conceito D");
        } else if ((media >= 4) && (media < 6)) {
            System.out.println("Conceito C");
        } else if ((media >= 6) && (media < 8)) {
            System.out.println("Conceito B");
        } else if ((media >= 8) && (media <= 10)) {
            System.out.println("Conceito A");
        } else {
            System.out.println("Conceito inexistente.");
        }

    }
}
