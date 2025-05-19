package com.demo.kafka;

import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Component;

@Component
public class KafkaListeners {

    @KafkaListener(topics = "example-karol-topic", groupId = "ekipa")
    void listener(String data){
        System.out.println("Received Message: " + data );
    }
}
