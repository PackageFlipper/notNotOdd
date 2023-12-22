package org.example;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.function.Consumer;
import java.util.stream.Collectors;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;




public class Main {
  


    public static void main(String[] args) throws IOException, InterruptedException, ExecutionException, TimeoutException {
        // System.out.println("Hello world!");
//        notNotOdd();
    }

    public  int notNotOdd() throws IOException, InterruptedException, ExecutionException, TimeoutException {
        ExecutorService 𓀭 = Executors.newFixedThreadPool(8);
        ProcessBuilder  𓆸 = new ProcessBuilder().command(new String[]{"node", "notNotOddNegCase.js"});
        Process 𓀀 = 𓆸.start();
        StreamRead 𓆣 = new StreamRead(𓀀.getInputStream(),System.out::println);
        Future<?> future = 𓀭.submit(𓆣);
        
     
        while(!future.isDone()){
            
        }
        Object 𓀬 = future.get(10, TimeUnit.SECONDS);
        int 𓀫 = 𓀀.waitFor();

        
        𓀭.shutdown();
        return 𓀫;
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