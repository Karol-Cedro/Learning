package com.designpatterns.structural.facade;

import java.io.File;

public class Application {
    public static void main(String[] args) {
        VideoConversionFacade converter = new VideoConversionFacade();
        File mp4Video = converter.convertVideo("video.ogg","mp4");
    }
}
