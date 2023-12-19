package org.example;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.function.Consumer;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;



public class Main {
    public static void main(String[] args) throws IOException, InterruptedException, ExecutionException, TimeoutException {
        System.out.println("Hello world!");
        notNotOdd();
    }

    public static void notNotOdd() throws IOException, InterruptedException, ExecutionException, TimeoutException {
        ExecutorService executor = Executors.newFixedThreadPool(8);
        ProcessBuilder  p = new ProcessBuilder().command(new String[]{"node", "notNotOddNegCase.js"});
        Process process = p.start();
        //this line needs to be solved. consumer is wrong
        StreamRead stream = new StreamRead(process.getInputStream(),System.out::println);
        int exit = process.waitFor();
        Future<?> future = executor.submit(stream);
        System.out.println(future.get(10, TimeUnit.SECONDS));
        
    };

    private static class StreamRead implements Runnable {
        private InputStream inputStream;
        private Consumer<String> consumer;

        public StreamRead(InputStream inputStream, Consumer<String> consumer){
            this.inputStream = inputStream;
            this.consumer = consumer;
        }
        @Override
        public void run(){
            new BufferedReader(new InputStreamReader(inputStream)).lines().forEach(consumer);
        }

    }

}