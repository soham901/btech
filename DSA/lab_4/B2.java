import java.util.Scanner;

public class B2 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = 5;//sc.nextInt();
        int[] arr = {1,2,2,3,4};//new int[n];
        int[] narr = new int[n];

        System.out.println();

        // for(int a=0; a<n; a++) {
        //     arr[a] = sc.nextInt();
        // }

        System.out.println();

        // Detect Duplicates
        for(int a=0; a < n; a++) {
            for(int b=a+1; b < n-1; b++) {
                if(arr[a] == arr[b]) {
                    arr[b] = arr[b+1];
                }
            }
        }


        // print arr
        for(int a: arr) {
            System.out.print(a + " ");
        }

        System.out.println();
    }
}