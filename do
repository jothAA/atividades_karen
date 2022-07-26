import java.util.Scanner;
public class doWhile1 {

	    public static void main(String[] args) {
	        Scanner sc = new Scanner(System.in);

	        System.out.println(" Escreva um numero: ");
	        int num = sc.nextInt(); int i = 2; int divisoes = 0;
	        
	        do{
	            if(num % i == 0){
	            	
	                divisoes++;
	            } i++;
	        }while(i<num);

	        if(divisoes == 0 ){
	            System.out.println(num+" é um primo " );
	        }
	        else {
	            System.out.println(num + " não é primo " );
	        }

	        sc.close();
	    }
	}
  -------------------------------------------------------
    import java.util.Scanner;
public class doWhile2 {

	    static Scanner sc = new Scanner(System.in);

	    public static void main(String[] args) {
	        int contCidade = 0, codigo, numeroVeiculos, acidentes, somaVeiculos = 0, somaVeiculosMenos = 0,
	                cidadeMenos = 0, maior = 0, menor = 999999999, somaAcidentes = 0, codMenor = 0, codMaior = 0;

	        do {
	            System.out.println("Qual é o codigo da cidade: ");
	            codigo = sc.nextInt();
	            System.out.println("Qual os números de veiculos de passeio: ");
	            numeroVeiculos = sc.nextInt();
	            System.out.println(" Qual o Número de acidentes: ");
	            acidentes = sc.nextInt();

	            if (numeroVeiculos < 2000) {
	                cidadeMenos++;
	                somaVeiculosMenos += acidentes;
	            }
	            if (acidentes < menor) {
	                codMenor = codigo;
	                menor = acidentes;
	            }
	            if (acidentes > maior) {
	                codMaior = codigo;
	                maior = acidentes;
	            }
	            somaAcidentes += acidentes;
	            somaVeiculos += numeroVeiculos;
	            contCidade++;
	        } while (contCidade <= 4);

	        System.out.println("Codigo cidade: " + codMaior +  " Maior indice de acidente: " + (maior * 100)/somaAcidentes);
	        System.out.println("Codigo cidade: " + codMenor + " Menor indice de acidente: " + (menor * 100)/somaAcidentes);
	        System.out.println("Média de veiculos das cidades: " + (somaVeiculos / 5));
	        System.out.println("Média de acidentes de transito com cidades com menos de 2000 veiculos: " + (somaVeiculosMenos / cidadeMenos));
	    }
	}
