package Unidade3;

public class Condicional {
    private double saldo = 0;

    public void setSaldo(double vSaldo) {
        saldo = vSaldo;
    }

    public double getSaldo() {
        return saldo;
    }

    public void sacar(double vValor) {
        if (vValor > saldo)
            System.out.println("Saldo insuficiente!");
        else
            saldo = saldo - vValor;
    }

}
