package org.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "*", method = { RequestMethod.GET, RequestMethod.POST })
public class URLController {
    @RequestMapping(value = "/login")
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/registration")
    public String registeration() {
        return "registration";
    }

    @RequestMapping("/{url}")
    public String dymaicMap(@PathVariable String url) {
        return url;
    }
    
}
