package Unidade5;

// Classe
public class Carro {

    // Atributos (Propriedades)
    private String nome;
    private String motor;
    private String cor;
    private String marca;

    // Construtor
    // Carro() {
    // marca = "Indefinido";
    // }

    // Construtor inicia com parametro
    Carro(String nome, String marca) {
        this.nome = nome;
        this.marca = marca;
    }

    public void exibeInf() {
        System.out.println("Nome: " + nome);
        System.out.println("Marca: " + marca);
    }

    // Métodos (Comportamentos)
    public String getMotor() {
        return motor;
    }

    public void setMotor(String m) { // void sem retorno, executam acao
        motor = m;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String c) {
        cor = c;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String mc) {
        marca = mc;
    }

    public void imprimeDados() {
        System.out.println("Motor: " + motor);
        System.out.println("Cor: " + cor);
        System.out.println("Marca: " + marca);
    }

    // Metodo - Procedimento
    // Sem parâmetro
    void frase1() {
        System.out.println("Procedimento sem parametros.");
    }

    // Metodo - Funções
    // Sem parâmetro
    String frase2() {
        String mensagem = "Funcao sem parametro";
        return mensagem;
    }

    // Metodo - Procedimento
    // Com parâmetro
    void numero(int n) {
        int resposta;
        resposta = n * 5;
        System.out.println(resposta);
    }

    // Metodo - Funções
    // Com parâmetro
    int soma(int num1, int num2) {
        int resul;
        resul = num1 + num2;
        return resul;
    }
}
