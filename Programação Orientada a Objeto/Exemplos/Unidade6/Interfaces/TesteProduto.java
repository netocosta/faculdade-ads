package Unidade6.Interfaces;

// public class TesteProduto {
//     public static void main(String args[]) {
//         Produto prod = new Produto("Macarrão: ", 10);
//         prod.toSystemOut();
//         System.out.println("\n" + prod.toString());
//     }
// }

public class TesteProduto {
    public static void main(String args[]) {
        Imprimivel prod = new Produto("Macarrão", 10);
        prod.toSystemOut();
        System.out.println("\n" + prod.toString());
    }
}
