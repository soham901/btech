/*
 * Read two matrices, first 3x2 and second 2x3, perform multiplication operation and store result in third matrix and print it
 */

import java.util.Scanner;

public class A31 {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        int[][] arr1 = new int[3][2];
        int[][] arr2 = new int[2][3];
        int[][] arr3 = new int[3][3];
        System.out.println("Enter the elements of first matrix: ");
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 2; j++) {
                arr1[i][j] = sc.nextInt();
            }
        }

        System.out.println("Enter the elements of second matrix: ");
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 3; j++) {
                arr2[i][j] = sc.nextInt();
            }
        }

        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                for (int k = 0; k < 2; k++) {
                    arr3[i][j] += arr1[i][k] * arr2[k][j];
                }
            }
        }

        System.out.println("The resultant matrix is: ");
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                System.out.print(arr3[i][j] + " ");
            }
            System.out.println();
        }

        sc.close();
    }
}
