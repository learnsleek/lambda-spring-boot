package com.moneyclub.presentation.controller;

import com.moneyclub.business.model.Color;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

@RestController
public class AuthController {
	
	@RequestMapping(value="/getcolor2", method = RequestMethod.GET)
	public List<Color> GetSomething(){
		return Arrays.asList(
				new Color("getcolor2"),
				new Color("Indigo"),
				new Color("Blue"),
				new Color("Green"),
				new Color("Yellow"),
				new Color("Orange"),
				new Color("Red")
				);
	}

}
