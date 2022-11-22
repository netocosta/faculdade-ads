package Unidade5.Faculdade;

public class Aluno extends MembroUniversidade {
    private String rgm;
    private String curso;

    public Aluno(String nome, String nascimento, String rgm, String curso) {
        super(nome, nascimento);
        this.rgm = rgm;
        this.curso = curso;
    }

    public Aluno() {
        super();
        this.rgm = "";
        this.curso = "";
    }

    public void setRGM(String rgm) {
        this.rgm = rgm;
    }

    public String getRGM() {
        return this.rgm;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    public String getCurso() {
        return this.curso;
    }
}
