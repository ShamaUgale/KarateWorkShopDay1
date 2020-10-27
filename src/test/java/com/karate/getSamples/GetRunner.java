package com.karate.getSamples;

import com.intuit.karate.junit5.Karate;

public class GetRunner {

    @Karate.Test()
    Karate testAll() {

        return Karate.run().relativeTo(getClass());
    }

}
