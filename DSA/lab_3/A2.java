import java.util.Scanner;

public class A2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt(), m = sc.nextInt(), sum=0;
        
        for(int a=m; a<=n; a++) {
            sum += a;
        }

        System.out.println(sum);
    }
}