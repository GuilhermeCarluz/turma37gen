package entities;

public class Produto {

	public String codigo;
    public String nome;
    public int estoque=10;
    public double valor;

    public void tirarEstoque(int quantidade) {
        estoque -= quantidade;
    }
    public void colocarEstoque(int quantidade) {
        estoque += quantidade;
    }
    public String toString() {
        return "Produto [codigo=" + codigo + ", nome=" + nome + ", estoque=" + estoque + ", valor=" + valor + "]";
    }
}
