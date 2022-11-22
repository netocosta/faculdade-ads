package Unidade6.Abstratos_e_Sobreposicao;

public class Uno extends Carro {
    // Sem atributos

    // Construtores
    public Uno(float vel, int pas, float comb) {
        super(vel, pas, comb);
    }

    public Uno() {
        this(0f, 0, 0f);
    }

    // Sobreposicao
    public void acelera() {
        setVelocidade(getVelocidade() + 0.5f);
    }

    public void freia() {
        setVelocidade(getVelocidade() - 0.5f);
    }
}
