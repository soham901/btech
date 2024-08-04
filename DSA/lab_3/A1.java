import java.util.Scanner;

public class A1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int[] arr = new int[n];
        
        for(int a=0; a<n; a++) {
            arr[a] = sc.nextInt();
        }

        for(int a: arr){
            System.out.println(a);
        }
    }
}