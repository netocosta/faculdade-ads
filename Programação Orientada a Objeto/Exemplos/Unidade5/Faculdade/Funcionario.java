package Unidade5.Faculdade;

public class Funcionario extends MembroUniversidade {
    private String salario;
    private String admissao;

    public Funcionario(String nome, String nascimento, String salario, String admissao) {
        super(nome, nascimento);
        this.salario = salario;
        this.admissao = admissao;
    }

    public Funcionario() {
        super();
        this.salario = "";
        this.admissao = "";
    }

    public void setSalario(String salario) {
        this.salario = salario;
    }

    public String getSalario() {
        return this.salario;
    }

    public void setAdmissao(String admissao) {
        this.admissao = admissao;
    }

    public String getAdmissao() {
        return this.admissao;
    }
}