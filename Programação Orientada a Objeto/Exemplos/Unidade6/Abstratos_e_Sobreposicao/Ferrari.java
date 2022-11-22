package Unidade6.Abstratos_e_Sobreposicao;

public class Ferrari extends Carro {
    // Sem atributos

    // Construtores
    public Ferrari(float vel, int pas, float comb) {
        super(vel, pas, comb);
    }

    public Ferrari() {
        this(0f, 0, 0f);
    }

    // Sobreposicao
    public void acelera() {
        setVelocidade(getVelocidade() + 3.5f);
    }

    public void freia() {
        setVelocidade(getVelocidade() - 3.5f);
    }
}
