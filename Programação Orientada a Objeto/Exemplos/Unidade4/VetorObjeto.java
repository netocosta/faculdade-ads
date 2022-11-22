package Unidade4;

public class VetorObjeto {
    public static void main(String[] args) {
        Veiculo veic[] = new Veiculo[300];

        for (int indice = 0; indice < 300; indice++) {
            veic[indice] = new Veiculo();
        }

        veic[0].setVelocidade(10);
        veic[10].setVelocidade(200);
        veic[250].setVelocidade(250);

        System.out.println(veic[0].getVelocidade());
        System.out.println(veic[10].getVelocidade());
        System.out.println(veic[250].getVelocidade());

        for (int i = 0; i < 300; i++) {
            veic[i].setVelocidade(0);
        }

        System.out.println(veic[0].getVelocidade());
        System.out.println(veic[10].getVelocidade());
        System.out.println(veic[250].getVelocidade());
    }

}
