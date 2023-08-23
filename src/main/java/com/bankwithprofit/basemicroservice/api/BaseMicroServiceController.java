package com.bankwithprofit.basemicroservice.api;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BaseMicroServiceController {

    @GetMapping("/")
    public String index() {
        return "This is a base micro service!";
    }
}
