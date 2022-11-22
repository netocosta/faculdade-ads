package Unidade5.Faculdade;

public class MembroUniversidade {
    private String nome;
    private String nascimento;

    public MembroUniversidade(String nnome, String nnascimento) {
        this.nome = nnome;
        this.nascimento = nnascimento;
    }

    public MembroUniversidade() {
        this.nome = "";
        this.nascimento = "";
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return this.nome;
    }

    public void setNascimento(String nas) {
        this.nascimento = nas;
    }

    public String getNascimento() {
        return this.nascimento;
    }
}
