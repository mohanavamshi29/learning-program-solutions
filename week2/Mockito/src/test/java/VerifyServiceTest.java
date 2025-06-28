

import com.mock.ExternalApi;
import com.mock.VerifyService;
import org.junit.jupiter.api.Test;
import static org.mockito.Mockito.*;

public class VerifyServiceTest {

    @Test
    public void testVerifyInteraction() {
        ExternalApi mockApi = mock(ExternalApi.class);
        VerifyService verify = new VerifyService(mockApi);
        verify.fetchData();
        verify(mockApi).getData();
    }
}
