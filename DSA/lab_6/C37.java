/*
 * Create a class BankAccount with attributes like account number, balance, account holder and name. Create an array of BankAccount objects to store bank accounts. Implement methods to deposit money, withdraw money and check balance.
 */

public class C37 {

    public static void main(String[] args) {

        BankAccount[] accounts = new BankAccount[2];

        accounts[0] = new BankAccount(123, 1000.0, "John", "Savings");
        accounts[1] = new BankAccount(456, 2000.0, "Jane", "Current");

        accounts[0].deposit(500.0);
        accounts[1].withdraw(1000.0);

        System.out.println(accounts[0].balance);
        System.out.println(accounts[1].balance);
    }

    public static class BankAccount {

        int accountNumber;
        double balance;
        String accountHolder;
        String name;

        public BankAccount(int accountNumber, double balance, String accountHolder, String name) {
            this.accountNumber = accountNumber;
            this.balance = balance;
            this.accountHolder = accountHolder;
            this.name = name;
        }

        public void deposit(double amount) {
            balance += amount;
        }

        public void withdraw(double amount) {
            balance -= amount;
        }
    }
}
