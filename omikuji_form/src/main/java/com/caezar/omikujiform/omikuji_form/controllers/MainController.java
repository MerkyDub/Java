package com.caezar.omikujiform.omikuji_form.controllers;


import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/omikuji")
public class MainController {
    @RequestMapping("")
    public String index(){
        return "index";
    }

    @RequestMapping(value="/show", method=RequestMethod.POST)
    public String Info(
        //request param allows you to store the jsp data into the backend 
        @RequestParam(value="number") String numberParam,
        @RequestParam(value="city") String cityParam,
        @RequestParam(value="name") String nameParam,
        @RequestParam(value="job") String jobParam,
        @RequestParam(value="thing") String thingParam,
        @RequestParam(value="something") String somethingParam,
        HttpSession session) {
            // setAttribute allows you to use the key as jstl tags in the jsp file to store data on the webpage
            session.setAttribute("number", numberParam);
            session.setAttribute("city", cityParam);
            session.setAttribute("name", nameParam);
            session.setAttribute("job", jobParam);
            session.setAttribute("thing", thingParam);
            session.setAttribute("something", somethingParam);
            return "redirect:/show";
    }

    @RequestMapping("/show")
    public String show() {
        return "show";
    }


}
