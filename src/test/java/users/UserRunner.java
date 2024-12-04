package users;

import com.intuit.karate.junit5.Karate;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;
import java.util.Collection;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class UserRunner {

    @Karate.Test
    Karate userTests() {
        return Karate.run("CrudUser").relativeTo(getClass());

    }
}
