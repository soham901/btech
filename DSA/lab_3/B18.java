/*
 * Read n numbers in an array then read two different numbers,
 * replace 1st number with 2nd number in an array and print its index and final array
 */

import java.util.Scanner;

public class B18 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int[] arr = new int[n];

        for (int i = 0; i < n; i++)
            arr[i] = sc.nextInt();

        int n1 = sc.nextInt();
        int n2 = sc.nextInt();

        // find idx
        int idx = -1;
        for (int i = 0; i < n; i++) {
            if (arr[i] == n1) {
                arr[i] = n2;
                idx = i;
                break;
            }
        }

        if (idx != -1) {
            System.out.println(idx);

            // print arr
            for (int a : arr)
                System.out.print(a + " ");
            System.out.println();
        } else {
            System.out.println("Invalid Input");
        }

        sc.close();
    }
}
