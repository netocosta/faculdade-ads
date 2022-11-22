package Unidade5.Faculdade;

public class Bolsista extends Aluno {
    private double valorBolsa;

    public Bolsista(String nome, String nascimento, String rgm, String curso, double valor) {
        super(nome, nascimento, rgm, curso);
        this.valorBolsa = valor;
    }

    public Bolsista() {
        super();
        this.valorBolsa = 0;
    }

    public void setValorBolsa(double valor) {
        this.valorBolsa = valor;
    }

    public double getValorBolsa() {
        return this.valorBolsa;
    }

}