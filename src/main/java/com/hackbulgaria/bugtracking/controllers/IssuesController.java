package com.hackbulgaria.bugtracking.controllers;


import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.hackbulgaria.bugtracking.constant.UrlConstants;
import com.hackbulgaria.bugtracking.entities.Issue;
import com.hackbulgaria.bugtracking.services.IssueService;

@Controller
public class IssuesController {

	@Autowired
	private IssueService issueService;

	@RequestMapping(value = "/issues", method = RequestMethod.GET)
	public String getIssues(Model model) {
		model.addAttribute("Issues", issueService.getIssues());
		return "issues";
	}
	
	@RequestMapping(value = UrlConstants.ADD_ISSUE, method = RequestMethod.GET)
	public String addDev() {
		return "add_issue";
	}

	@RequestMapping(value = UrlConstants.ADD_ISSUE, method = RequestMethod.POST)
	public String addDeveloperSave(Model model, @ModelAttribute(value = "SpringWeb") Issue issue) {
		issue.setDate(new SimpleDateFormat("YYYY-MM-dd hh:mm:ss").format(new Date()));
		//issue.setCreator(0);
		issueService.createIssue(issue);

		model.addAttribute("Issues", issueService.getIssues());

		return "issues";
	}
	@RequestMapping(value = UrlConstants.REMOVE_ISSUE_URL, method = RequestMethod.GET)
	public String removeDeveloperSave(Model model, String id) {

		if (issueService.deleteIssue(Integer.parseInt(id))) {
			issueService.deleteIssue(Integer.parseInt(id));
			model.addAttribute("Devs", issueService.getIssues());

			return "IssuesRegistry";
		} else
			return "error";
	}

	@RequestMapping(value = UrlConstants.EDIT_ISSUE_URL, method = RequestMethod.POST)
	public String editDeveloperSave(Model model, @ModelAttribute(value = "SpringWeb") Issue issue) {
		issueService.editIssue(issue);

		model.addAttribute("Issue", issueService.getIssues());

		return "actionIssue";
	}

}