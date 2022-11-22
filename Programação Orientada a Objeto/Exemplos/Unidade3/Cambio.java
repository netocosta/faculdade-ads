package Unidade3;

import javax.swing.*;

public class Cambio {
    private double valorRS;

    public void setValor(double valor) {
        valorRS = valor;
    }

    public double getValor() {
        return valorRS;
    }

    public void converterMoeda(int op) {
        switch (op) {
            case 1:
                JOptionPane.showMessageDialog(null, "Total em Dólares: " + (valorRS / 1.89f));
                break;
            case 2:
                JOptionPane.showMessageDialog(null, "Total em Euros: " + (valorRS / 3.75f));
                break;
            case 3:
                JOptionPane.showMessageDialog(null, "Total em Guaranis: " + (valorRS / 0.20f));
                break;
            case 4:
                JOptionPane.showMessageDialog(null, "Total em Bolivares: " + (valorRS / 0.89f));
                break;
            default:
                JOptionPane.showMessageDialog(null, "Opção inválida.");
        }
    }
}
