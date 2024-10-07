/*
 * Suppose you are senior developer for an Relational Database Management System (RDBMS) named "Array Database"
 * where everything is implemented using only array, today your task is to implement aggregate functions
 * like sum, min, max, avg. For simplicity, assume that your database can only store integers.
 */

public class C28 {
    public static void main(String[] args) {
        int[] data = { 1, 2, 3, 4, 5 };

        ArrayDatabase db = new ArrayDatabase(data);

        System.out.println("Sum: " + db.sum());
        System.out.println("Min: " + db.min());
        System.out.println("Max: " + db.max());
        System.out.println("Avg: " + db.avg());
    }
}

class ArrayDatabase {

    private int[] data;

    public ArrayDatabase(int[] data) {
        this.data = data;
    }

    public int sum() {
        int sum = 0;
        for (int num : data)
            sum += num;

        return sum;
    }

    public int min() {
        int min = data[0];
        for (int num : data) {
            if (num < min)
                min = num;

        }
        return min;
    }

    public int max() {
        int max = data[0];
        for (int num : data) {
            if (num > max)
                max = num;
        }
        return max;
    }

    public double avg() {
        return sum() / (double) data.length;
    }

}
