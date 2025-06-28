package com.mock;

public class VerifyService {
    private final ExternalApi externalApi;

    public VerifyService(ExternalApi externalApi) {
        this.externalApi = externalApi;
    }

    public String fetchData() {
        return externalApi.getData();  // This should be verified
    }
}
