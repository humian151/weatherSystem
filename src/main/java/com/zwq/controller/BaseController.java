package com.zwq.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BaseController {
    @RequestMapping("/{path}")
    public String gotoPath(@PathVariable String path){
        return path;
    }
}
