package Unidade5;

public class Veiculo {
    private String nome;
    private int velocidade;

    public void setNome(String vNome) {
        this.nome = vNome;
    }

    public String getNome() {
        return this.nome;
    }

    public void setVelocidade(int vVelocidade) {
        velocidade = vVelocidade;
    }

    public int getVelocidade() {
        return velocidade;
    }

    public void acelera() {
        if (velocidade <= 10) {
            velocidade++;
        }
    }

    public void freia() {
        if (velocidade > 0) {
            velocidade--;
        }
    }
}