package com.karate.misc;

import com.intuit.karate.junit5.Karate;

public class MiscRunner {

    @Karate.Test()
    Karate testAll() {

        return Karate.run().relativeTo(getClass());
    }
}
