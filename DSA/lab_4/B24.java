/*
 * Write a program to delete a number from an array that is already sorted in an ascending order
 */

import java.util.Scanner;

public class B24 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int[] arr = new int[n];

        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }

        int num = sc.nextInt();
        int i = 0;

        while (arr[i] < num) {
            i++;
        }

        for (int j = i; j < n - 1; j++) {
            arr[j] = arr[j + 1];
        }
        arr[n - 1] = 0;

        // print arr
        for (int a : arr) {
            System.out.print(a + " ");
        }
    }

}
