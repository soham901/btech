/*
 * Suppose you are senior developer for an Relational Database Management System (RDBMS) named "Array Database"
 * where everything is implemented using only array, today your task is to implement aggregate functions
 * like sum, min, max, avg. For simplicity, assume that your database can only store integers.
 */

public class C28 {

    static int[] arr = new int[999];
    static int last = 0;

    public static void main(String[] args) {
        insert(20);
        insert(20);
        insert(20);
        insert(20);
        insert(20);

        System.out.println("Sum: " + sum());
        System.out.println("Min: " + min());
        System.out.println("Max: " + max());
        System.out.println("Avg: " + avg());
        System.out.println("Count: " + count());
    }

    public static void insert(int value) {
        arr[last] = value;
        last++;
    }

    public static int sum() {
        int total = 0;
        for (int i = 0; i <= last; i++) {
            total += arr[i];
        }
        return total;
    }

    public static int min() {
        int min = arr[0];
        for (int i = 0; i <= last; i++) {
            int a = arr[i];
            if (min > a)
                min = a;

        }
        return min;
    }

    public static int max() {
        int max = arr[0];
        for (int i = 0; i <= last; i++) {
            int a = arr[i];
            if (max < a)
                max = a;

        }
        return max;
    }

    public static double avg() {
        return (double) sum() / arr.length;
    }

    public static int count() {
        return last;
    }
}
