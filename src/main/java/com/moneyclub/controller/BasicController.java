package com.moneyclub.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.moneyclub.business.model.Color;

@RestController
public class BasicController {
	
	@RequestMapping(value="/getcolor", method = RequestMethod.GET)
	public List<Color> GetSomething(){
		return Arrays.asList(
				new Color("Violet"),
				new Color("Indigo"),
				new Color("Blue"),
				new Color("Green"),
				new Color("Yellow"),
				new Color("Orange"),
				new Color("Red")
				);
	}

    @RequestMapping(value="/getcolor1", method = RequestMethod.GET)
    public List<Color> GetColor(){
        return Arrays.asList(
                new Color("Test"),
                new Color("Indigo"),
                new Color("Blue"),
                new Color("Green"),
                new Color("Yellow"),
                new Color("Orange"),
                new Color("Red")
        );
    }
}
