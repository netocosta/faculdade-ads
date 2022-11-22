package Unidade6.Abstratos_e_Sobreposicao;

public abstract class Veiculo {

    // Atributos
    private float velocidade;
    private int passageiros;

    // Construtores
    public Veiculo(float v, int p) {
        this.velocidade = v;
        this.passageiros = p;
    }

    public Veiculo() {
        this(0f, 0);
    }

    // Metodos
    public void setVelocidade(float vVelocidade) {
        this.velocidade = vVelocidade;
    }

    public float getVelocidade() {
        return this.velocidade;
    }

    public void setPassageiros(int p) {
        this.passageiros = p;
    }

    public int getPassageiros() {
        return this.passageiros;
    }

    // Metodos abstratos
    public abstract void acelera();

    public abstract void freia();

    // public void acelera() {
    // if (velocidade <= 10) {
    // velocidade++;
    // }
    // }

    // public void freia() {
    // if (velocidade > 0) {
    // velocidade--;
    // }
    // }
}