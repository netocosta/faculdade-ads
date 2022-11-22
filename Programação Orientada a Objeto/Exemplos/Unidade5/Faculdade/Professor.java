package Unidade5.Faculdade;

public class Professor extends Funcionario {
    private String regime;
    private String titulacao;

    public Professor(String nome, String nascimento, String salario, String admissao, String regime, String titulacao) {
        super(nome, nascimento, salario, admissao);
        this.regime = regime;
        this.titulacao = titulacao;
    }

    public Professor() {
        super();
        this.regime = "";
        this.titulacao = "";
    }

    public void setRegime(String reg) {
        this.regime = reg;
    }

    public String getRegime() {
        return this.regime;
    }

    public void setTitulacao(String tit) {
        this.titulacao = tit;
    }

    public String getTitulacao() {
        return this.titulacao;
    }
}