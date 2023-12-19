package org.example;

import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        System.out.println("Hello world!");
        notNotOdd();
    }

    public static boolean notNotOdd() throws IOException {
        Process p = Runtime.getRuntime().exec(new String[]{"node", "notNotOddNegCase.js"});
        System.out.println(p);

        return true;
    };

}