package Unidade3;

public class QtdeNumPar {
    private int numero;

    public void setQtdeNumero(int num) {
        numero = num;
    }

    public int getQtdeNumero() {
        return numero;
    }

    public int retQtdeNumParWhile(int vNumero) {
        int contador = 1;
        int qtdePar = 0;

        while (contador <= vNumero) {
            if (contador % 2 == 0) {
                qtdePar++;
            }
            contador++;
        }
        return qtdePar;
    }

    public int retQtdeNumParDoWhile(int vNumero) {
        int contador = 1;
        int qtdePar = 0;

        do {
            if (contador % 2 == 0) {
                qtdePar++;
            }
            contador++;
        } while (contador <= vNumero);
        return qtdePar;
    }

    public int retQtdeNumParFor(int vNumero) {
        int qtdePar = 0;

        for (int contador = 1; contador <= vNumero; contador++) {
            if (contador % 2 == 0) {
                qtdePar++;
            }
        }
        return qtdePar;
    }
}
