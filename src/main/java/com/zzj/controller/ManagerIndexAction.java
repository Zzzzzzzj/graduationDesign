package com.zzj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ManagerIndexAction {





    @RequestMapping(value = "/{page}", method = RequestMethod.GET)
    public String index(@PathVariable String page) {
        return page;
    }

    @RequestMapping(value = "/page/{pageName}", method = RequestMethod.GET)
    public String forwardOne(@PathVariable String pageName) {
        return "page/" + pageName;
    }

    @RequestMapping(value = "/page/{pageName1}/{pageName2}", method = RequestMethod.GET)
    public String forwardTwo(@PathVariable String pageName1, @PathVariable String pageName2) {
        return "page/" + pageName1 + "/" + pageName2;
    }
}
