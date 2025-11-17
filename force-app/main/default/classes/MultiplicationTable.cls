public class MultiplicationTable {

    public static void printTable(Integer count) {
        for (Integer i = 1; i <= 20; i++) {
            System.debug(i + ' * ' + count + ' = ' + (i * count));
        }
    }
}

/*
MultiplicationTable.printTable(5);
*/