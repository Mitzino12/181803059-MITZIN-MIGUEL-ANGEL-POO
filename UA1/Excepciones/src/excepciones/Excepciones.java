package excepciones;

/**
 *
 * @author izelo
 */
public class Excepciones {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int numerador = 20;
        Integer denominador = 0;
        float division;
        System.out.println("Antes de la division");

        try {
            division = numerador / denominador;

        } catch (Exception e) {//Arithmetic
            System.out.println(e);
            //division = 0;

        /*} catch (NullPointerException e) {
            System.out.println(e.getMessage());
            division = 0;
        }*/
        //System.out.println(division);
        System.out.println("Despues de la division");
    }
    }
}

