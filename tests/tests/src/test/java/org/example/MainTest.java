package org.example;

import java.io.IOException;
import java.util.Scanner;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class MainTest {
    Main main = new Main();


    @Test
    void shouldBeNotNotOdd() throws IOException, ExecutionException, InterruptedException, TimeoutException {
        main.notNotOdd();
        Scanner s = new Scanner(System.in);
        String val = s.nextLine();
        assertEquals("true", val);
    }

}