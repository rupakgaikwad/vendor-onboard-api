package com.app;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/index")
public class IndexController {

	private IUserService userService;

	// Spring Setter Injection
	@Autowired
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView model = new ModelAndView("index");
		model.addObject("list", userService.listAllUsers());
		return model;
	}

	@RequestMapping(value = "/{id}/delete", method = RequestMethod.GET)
	public ModelAndView deleteUsers(@PathVariable long id) {
		userService.deleteUser(id);
		return new ModelAndView("redirect:/index");
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public ModelAndView userRegister(@ModelAttribute("user") User user) {
		ModelAndView model = new ModelAndView("index");
		if (user != null) {
			userService.saveUser(user);
			model.addObject("warning", "User Registration Success");

		} else {
			model.addObject("danger", "Something Going Bad");

		}
		return new ModelAndView("redirect:/index");
	}

	@RequestMapping(value = "/{id}/edit", method = RequestMethod.GET)
	public ModelAndView edit(@PathVariable("id") long id) {
		ModelAndView model = new ModelAndView("edit");
		User user = userService.getUserById(id);
		model.addObject("user", user);
		return model;
	}

	@RequestMapping(value = "/{id}/process", method = RequestMethod.GET)
	public ModelAndView process(@PathVariable("id") long id) {
		ModelAndView model = new ModelAndView("process");
		User user = userService.getUserById(id);
		model.addObject("user", user);
		return model;
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView update(@RequestParam("id") long id, @RequestParam("name") String name,
			@RequestParam("type") String type, @RequestParam("function") String function) {
		User user = userService.getUserById(id);
		user.setName(name);
		user.setType(type);
		user.setFunction(function);
		userService.saveUser(user);
		return new ModelAndView("redirect:/index");
	}

	@RequestMapping(value = "/submit", method = RequestMethod.POST)
	public ModelAndView submit() {
		return new ModelAndView("redirect:/index");
	}

}
