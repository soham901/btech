import java.util.Scanner;

public class A3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt(), sum=0;
        
        for(int a=1; a<=n; a++) {
            sum += a;
        }

        System.out.println(sum / n);
    }
}