package Unidade6.Abstratos_e_Sobreposicao;

public class Carro extends Veiculo {
    // Atributos
    private float combustivel;

    // Construtores
    public Carro(float vel, int pas, float comb) {
        super(vel, pas);
        this.combustivel = comb;
    }

    public Carro() {
        this(0f, 0, 0f);
    }

    // Metodos de acesso
    public void setCombustivel(float comb) {
        this.combustivel = comb;
    }

    public float getCombustivel() {
        return this.combustivel;
    }

    // Metodos obrigatorios
    public void acelera() {
        setVelocidade(getVelocidade() + 1);
    }

    public void freia() {
        setVelocidade(getVelocidade() - 1);
    }
}
