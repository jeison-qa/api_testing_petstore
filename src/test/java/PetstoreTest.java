
import com.intuit.karate.junit5.Karate;

class PetstoreTest {

    @Karate.Test
    Karate testAllPetstoreCases() {
        return Karate.run("classpath:features");
    }
}
