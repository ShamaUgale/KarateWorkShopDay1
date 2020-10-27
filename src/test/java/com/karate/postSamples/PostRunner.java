package com.karate.postSamples;

import com.intuit.karate.junit5.Karate;

public class PostRunner {

    @Karate.Test()
    Karate testAll() {

        return Karate.run().relativeTo(getClass());
    }

}
