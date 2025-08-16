package PintaFigura;

public class pintaFigura {
		
	public static void main(String[]  param) {
		int opc=1;
		do {
			System.out.println("\n"+
							"------- MENU FIGURAS ------- \n"+
							"  ---    1. Cuadrado  --- \n"+
							"  ---  2. Rectangulo  --- \n"+
							"  ---    3. Piramide  --- \n"+
							"  ---     4. Rombo    --- \n"+
							"  ---     0. Salir    --- \n"+
							"----------------------------" +
							"\n");
		opc=ES.leeN("Elige opcion: ");
		
			switch(opc){
			case 0:
				System.out.println("Adios, fin del programa");
				break;
			case 1: int dim = ES.leeN("Dimension del cuadrado: ");
					cuadrado(dim);
				break;
			case 2: int alto=ES.leeN("Dime el alto del rectangulo: ");
					int ancho=ES.leeN("Dime el ancho del rectangulo: ");
					rectangulo(ancho,alto);
				break;
			case 3: int altop=ES.leeN("Dime la altura de la piramide: ");
					piramide(altop);
				break;
			case 4:	int altorb=ES.leeN("Dime la altura del rombo: ");
					rombo(altorb);
				break;
			default:
					System.out.println("La figura seleccionada no es correcta");
					
			}
		} while(opc!=0);
    }
	
        static void cuadrado(int dim){

        for(int f=1; f<=dim;f++){
            for(int c=1; c<=dim;c++){
                System.out.print("* ");
            }
            System.out.println();
        }
        }
		
		static void rectangulo(int ancho, int alto){

        for(int l=1; l<=alto;l++){
            for(int a=1; a<=ancho;a++){
                System.out.print("* ");
            }
            System.out.println();
        }
        }
		
		static void piramide(int altop){
			int hueco=altop-1;
			int dibujo=1;
        for(int a=1; a<=altop;a++){
            
				for (int ii=1; ii<=hueco;ii++){
				System.out.print("  ");
				}
					for(int s=1; s<=dibujo;s++){
					System.out.print("* ");
					}
				hueco-=1;
				dibujo+=2;
            System.out.println();
        }
        }
		
		static void rombo(int altorb){
			int hueco=altorb-1;
			int dibujo=1;
        for(int a=1; a<=altorb;a++){
            
				for (int ii=1; ii<=hueco;ii++){
				System.out.print("  ");
				}
					for(int s=1; s<=dibujo;s++){
					System.out.print("* ");
					}
				hueco-=1;
				dibujo+=2;
            System.out.println();
        }
			hueco+=2;
			dibujo-=4;
		for(int b=1; b<=altorb;b++){
            
				for (int ii=1; ii<=hueco;ii++){
				System.out.print("  ");
				}
					for(int s=1; s<=dibujo;s++){
					System.out.print("* ");
					}
				hueco+=1;
				dibujo-=2;
            System.out.println();
        }
        }
}         