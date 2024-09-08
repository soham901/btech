/*
 * WAP to print Armstrong number from 1 to 1000.
 */

public class C12 {

    public static void main(String[] args) {
        for (int i = 1; i <= 1000; i++) {
            if (isArmstrong(i)) {
                System.out.println(i);
            }
        }
    }

    public static boolean isArmstrong(int n) {
        int sum = 0;
        int temp = n;

        while (temp > 0) {
            int digit = temp % 10;
            sum += digit * digit * digit;
            temp /= 10;
        }

        return sum == n;
    }
}
