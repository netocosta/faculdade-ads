package Unidade2;

public class TestarCarro {
    public static void main(String[] args) {
        Carro c1 = new Carro();

        c1.setMotor("2.0");
        c1.setCor("Prata");
        c1.setMarca("Citroen");

        c1.imprimeDados();
        c1.frase1();
        System.out.println(c1.frase2());
        c1.numero(10);
        System.out.println(c1.soma(20, 20));
    }

}
