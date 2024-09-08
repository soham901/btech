/*
 * Write a program to merge two unsorted arrays.
 */

import java.util.Scanner;

public class B26 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int[] arr1 = new int[n];
        int[] arr2 = new int[n];
        int[] arr3 = new int[n * 2];

        // read arr 1
        for (int i = 0; i < n; i++) {
            arr1[i] = sc.nextInt();
        }

        // read arr 2
        for (int i = 0; i < n; i++) {
            arr2[i] = sc.nextInt();
        }

        // merge
        for (int i = 0; i < n; i++) {
            arr3[i] = arr1[i];
            arr3[i + n] = arr2[i];
        }

        // print
        for (int i = 0; i < n * 2; i++) {
            System.out.print(arr3[i] + " ");
        }

        sc.close();
    }

}
