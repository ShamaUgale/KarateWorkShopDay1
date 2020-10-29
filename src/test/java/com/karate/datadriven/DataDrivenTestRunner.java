package com.karate.datadriven;
import com.intuit.karate.junit5.Karate;

public class DataDrivenTestRunner {

    @Karate.Test()
    Karate testAll() {

        return Karate.run().relativeTo(getClass());
    }
}
