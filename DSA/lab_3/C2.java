import java.util.Scanner;

public class C2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        // int n = sc.nextInt();
        int n = 3;
        // String[] arr = new String[n];
        String[] arr = {"A", "Z", "B"};
        
        // for(int a=0; a<n; a++) {
        //     arr[a] = sc.next();
        // }

        for(int a=0; a < n; a++) {
            System.out.println(arr[a]);
        }

        System.out.println();

        for(String a: arr) {
            System.out.println(a);
        }
    }
}